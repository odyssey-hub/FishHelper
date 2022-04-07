-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 17 2022 г., 15:33
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `crimea_app`
--
CREATE DATABASE IF NOT EXISTS `crimea_app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `crimea_app`;

-- --------------------------------------------------------

--
-- Структура таблицы `bids`
--

CREATE TABLE `bids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `FIO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `bids`
--

INSERT INTO `bids` (`id`, `FIO`, `Email`, `Text`, `Phone`, `created_at`, `updated_at`) VALUES
(71, 'Голицына Ольга Николаевна', 'golits.olga@mail.ru', 'Здравствуйте, хочу записаться на маршрут \"Базовый\" по дате 25.09.2021. Здесь приведено подробное описание.', '+79616989941', '2021-10-20 20:35:32', NULL),
(76, 'Голицына Ольга Николаевна', 'golits.olga@mail.ru', 'Здравствуйте, хочу записаться на маршрут \"Базовый\" по дате 25.09.2021. Здесь приведено подробное описание.', '+79616989941', '2021-10-20 20:35:32', NULL),
(81, 'Евгений', 'mail2@mail.com', 'ВЫдшаоывлывтлд выашыва выта ывлоа.', '+79999999999', '2021-11-25 09:22:01', '2021-11-25 09:22:01');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `gids`
--

CREATE TABLE `gids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `FIO` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Contacts` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_18_132439_create_routes_table', 1),
(6, '2021_10_18_132844_create_schedule_events_table', 1),
(7, '2021_10_18_132909_create_gids_table', 1),
(8, '2021_10_18_132928_create_reports_table', 1),
(9, '2021_10_20_201500_create_bids_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reports`
--

INSERT INTO `reports` (`id`, `date`, `name`, `type`, `note`, `created_at`, `updated_at`, `file`) VALUES
(6, '2021-10-01', 'File 1', 'Недельный отчет', 'Fdsvc vsd ss sd', '2021-10-29 13:56:55', '2021-10-29 13:56:55', '/storage/week/3lZ0lGj5EE3ANBFWiw3W0JKDsF3H1UzFLYJTCWnO.doc'),
(7, '2021-10-02', 'File 2', 'Бухгалтерский отчет', 'LJds sdklsd sdknsd klsjd.', '2021-10-29 13:57:49', '2021-10-29 13:57:49', '/storage/accountant/Q9B7IKbtZfBTueD6MhJvRaVadlVKZOPloZ6jMPLj.docx'),
(13, '2021-11-19', 'File 3', 'Недельный отчет', 'sdsd', '2021-11-02 07:16:17', '2021-11-02 07:16:17', '/storage/week/omds5eSfZ2oiqAFNR5FZ2J8hm8qmvOS8VsnrogVH.txt'),
(14, '2021-11-20', 'File 4', 'Бухгалтерский отчет', 'Dsf gd fg gfgf gfg', '2021-11-02 07:16:49', '2021-11-02 07:16:49', '/storage/accountant/KMw1h03qEihMwpUB0dIws5F2j43aUFOgacAL8mTP.xlsx'),
(16, '2021-11-21', 'File 6', 'Бухгалтерский отчет', 'Заметки №3 File 6.', '2021-11-02 10:45:16', '2021-11-02 10:51:57', '/storage/week/KGLnTQaab5vSX5SKMI2SuAe4mSGLO9iFpQwipRK0.doc');

-- --------------------------------------------------------

--
-- Структура таблицы `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double(8,2) NOT NULL,
  `attractions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `routes`
--

INSERT INTO `routes` (`id`, `name`, `description`, `duration`, `cost`, `attractions`, `points`, `created_at`, `updated_at`, `gid`) VALUES
(1, 'Маршрут \"Базовый\"', 'Здесь приводится описание маршрута под названием маршрут \"Базовый\"', '05:30', 15384.00, 'Ласточкино гнездо, Ливадийский дворец, гора Ай-Петри, Никитский ботанический сад ', '[[44.67300087177325,33.78606609559979],[44.808070718072685,33.97008709169354],[45.040270883309205,34.03600506044354],[45.28510007346339,34.132135431537286]]', NULL, '2021-10-19 09:35:19', 'Востриков Евгений Иванович'),
(3, 'Маршрут \"Вечерний\"', 'Здесь приведено описание маршрута под названием маршрут \"Вечерний\"', '02:15', 10000.00, 'Башня святого Валентина, Гора клементьева, Красные пещеры, Чауда', '[[44.74356159170505,33.81349189907604],[44.91946025289423,34.04695137173229],[45.23277527211042,34.079910356107284],[45.758174300444246,34.40400703579479],[45.383945803804075,34.87092598110729]]', NULL, '2021-10-19 12:32:05', 'Востриков Иван Иванович'),
(4, 'Маршрут \"Утренний\"', 'Здесь приведено описание маршрута под названием маршрут \"Утренний\"', '01:50', 12345.34, 'Приморский парк Гагарина, Завод Массандра, Тропа Галицына, Роман-Кош', '[[45.108434778608405,34.0414582076698],[45.37426755897413,34.192520219388555],[45.65811184081889,34.376541215482284],[45.758174300444246,34.428726274076055],[45.521196923299165,34.75831611782605],[45.36071521465974,34.88740547329479]]', NULL, '2021-10-19 12:38:50', 'Дмитриев Матвей Дмитриевич'),
(5, 'Маршрут \"Особый\"', 'Здесь приведено описание маршрута под названием маршрут \"Особый\"', '05:00', 36000.00, 'Генуэзская крепость, Ласточкино гнездо,  Тропа Галицына, Роман-Кош ', '[[44.85634700587853,34.0279666699218],[45.22438266408283,34.05268590820307],[45.68753085248791,34.38307618275694],[45.108118608503744,34.625219695546406],[45.02831892820166,35.39975582835891]]', NULL, '2021-10-19 09:50:32', 'Востриков Евгений Иванович'),
(37, 'Маршрут \"Загадочный\"', 'Описание очень интересного маршрута', '07:30', 100000.00, 'Роман-Кош', '[[45.00330992783145,34.05519111782605],[45.33490980125814,34.187268427734296],[45.70369294641833,34.39600866210932],[45.91306007899417,33.89887731445306],[45.841937581374644,33.77899726793269],[45.72471565313691,33.41370185777645]]', '2021-10-19 12:39:54', '2021-10-21 05:45:07', 'Востриков Евгений Иванович'),
(39, 'Маршрут \"Новый\"', 'Здесь приведено подробное описание маршрута под названием маршрут \"Новый\"2', '07:50', 50000.00, 'Ласточкино гнездо, Никитский ботанический сад', '[[44.987958935773506,34.070690498337676],[45.37837701498328,34.22449909208768],[45.735335407501715,34.4167598342752],[45.097002994203976,34.62824665068143],[45.02497947899396,35.4000362014627]]', '2021-10-21 05:55:48', '2021-12-07 07:07:13', 'Герасов Владимир Иванович'),
(41, '5435', 'gdfg', '02:30', 53453.00, '5345345', '[]', '2021-12-07 07:07:33', '2021-12-07 07:07:33', '5435345'),
(42, 'Маршрут \"Вечерний\" 2', 'Здесь приведено описание маршрута под названием маршрут \"Вечерний\"', '02:15', 10000.00, 'Башня святого Валентина, Гора клементьева, Красные пещеры, Чауда', '[[44.83623571264006,33.983742551147465],[45.06637511092866,34.0579002659912],[45.38855788353172,34.214455441772444],[45.7089026164861,34.406716183959965],[45.26068126473417,34.96976550036621],[45.15778209642286,35.389992551147465]]', '2022-01-26 12:29:15', '2022-01-26 12:29:34', 'Востриков Иван Иванович');

-- --------------------------------------------------------

--
-- Структура таблицы `schedule_events`
--

CREATE TABLE `schedule_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `schedule_events`
--

INSERT INTO `schedule_events` (`id`, `start`, `end`, `description`, `created_at`, `updated_at`, `title`) VALUES
(1, '2021-11-03', '2021-11-08', 'Описание первого события', '2021-11-02 21:00:00', '2021-11-11 07:39:17', 'Первое событие'),
(3, '2021-11-15', '2021-11-20', 'Описание третьего события редактировано 2', '2021-11-14 21:00:00', '2021-11-11 06:06:25', 'Третье событие'),
(7, '2021-11-23', '2021-11-29', 'тест', '2021-11-02 16:09:00', '2021-11-02 16:09:00', 'тест'),
(8, '2021-11-10', '2021-11-15', 'Описание', '2021-11-11 06:08:07', '2021-11-11 06:08:07', 'Четвертое событие'),
(13, '2021-11-08', '2021-11-13', 'тест', '2021-11-11 07:58:41', '2021-11-11 07:58:41', 'тест 6'),
(14, '2021-11-08', '2021-11-12', '7', '2021-11-11 08:00:24', '2021-11-11 08:00:24', 'тест 7'),
(17, '2021-12-29', '2022-01-24', 'пвапвапвап', '2022-01-26 12:31:01', '2022-01-26 12:31:01', 'павпвапвап');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'alex@mail.com', NULL, '$2y$10$v7.kJrPq.B5k.XtEy1aRLOP2ptn8GlTJw.FNH.5o/3V/ermTZ/vfi', 'cbGZ4UjnkTsALYFHAuOLXPxFnKXDMKC2QGLiqDAx4saGQrDlPEAbFSFu4zDy', '2021-11-24 14:05:56', '2021-11-24 14:05:56'),
(2, 'secretary', 'elena@mail.com', NULL, '$2y$10$9M.mSqL8Q28hhTcGUYsLkOZT6IpOroCaB/ad06mamWI1ML4DLJuEG', NULL, '2021-11-24 14:14:16', '2021-11-24 14:14:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `gids`
--
ALTER TABLE `gids`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schedule_events`
--
ALTER TABLE `schedule_events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bids`
--
ALTER TABLE `bids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `gids`
--
ALTER TABLE `gids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `routes`
--
ALTER TABLE `routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `schedule_events`
--
ALTER TABLE `schedule_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- База данных: `fish_app`
--
CREATE DATABASE IF NOT EXISTS `fish_app` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fish_app`;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 7, 'Панель', 'fa-bar-chart', '/', NULL, NULL, '2022-01-20 09:40:31'),
(2, 0, 8, 'Администратор', 'fa-tasks', NULL, NULL, NULL, '2022-01-20 09:40:31'),
(3, 2, 9, 'Администраторы', 'fa-user-md', 'auth/users', NULL, NULL, '2022-01-20 09:40:31'),
(4, 2, 10, 'Роли', 'fa-user', 'auth/roles', NULL, NULL, '2022-01-20 09:40:31'),
(5, 2, 11, 'Разрешения', 'fa-ban', 'auth/permissions', NULL, NULL, '2022-01-20 09:40:31'),
(6, 2, 12, 'Меню', 'fa-bars', 'auth/menu', NULL, NULL, '2022-01-20 09:40:31'),
(7, 2, 13, 'Логи', 'fa-history', 'auth/logs', NULL, NULL, '2022-01-20 09:40:31'),
(8, 0, 14, 'Медиа', 'fa-file-image-o', 'media', NULL, '2022-01-18 05:18:10', '2022-01-20 09:40:31'),
(9, 0, 1, 'Пользователи', 'fa-users', 'users', '*', '2022-01-18 05:30:07', '2022-01-19 09:55:57'),
(10, 0, 3, 'Водоемы', 'fa-map-o', 'locations', '*', '2022-01-18 05:51:27', '2022-01-20 09:40:31'),
(11, 10, 5, 'Типы водоемов', 'fa-align-justify', 'water_types', '*', '2022-01-19 09:53:29', '2022-01-20 09:40:31'),
(12, 10, 4, 'Список водоемов', 'fa-map-marker', 'locations', '*', '2022-01-19 09:55:35', '2022-01-20 09:40:31'),
(13, 10, 6, 'Субъекты', 'fa-flag', 'subjects', '*', '2022-01-19 09:58:59', '2022-01-20 09:40:31'),
(14, 0, 15, 'Дополнительно', 'fa-gears', NULL, NULL, '2022-01-19 10:34:59', '2022-01-20 09:40:31'),
(15, 14, 16, 'Создать модель', 'fa-keyboard-o', 'helpers/scaffold', NULL, '2022-01-19 10:34:59', '2022-01-20 09:40:31'),
(16, 14, 17, 'Терминал БД', 'fa-database', 'helpers/terminal/database', NULL, '2022-01-19 10:34:59', '2022-01-20 09:40:31'),
(17, 14, 18, 'Консоль', 'fa-terminal', 'helpers/terminal/artisan', NULL, '2022-01-19 10:34:59', '2022-01-20 09:40:31'),
(18, 14, 19, 'Маршруты', 'fa-list-alt', 'helpers/routes', NULL, '2022-01-19 10:34:59', '2022-01-20 09:40:31'),
(19, 0, 2, 'Рыбы', 'fa-anchor', 'fishes', '*', '2022-01-20 09:37:13', '2022-01-20 09:40:31');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:08:44', '2022-01-18 05:08:44'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:09:37', '2022-01-18 05:09:37'),
(3, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:09:42', '2022-01-18 05:09:42'),
(4, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2022-01-18 05:13:04', '2022-01-18 05:13:04'),
(5, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:13:06', '2022-01-18 05:13:06'),
(6, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:13:27', '2022-01-18 05:13:27'),
(7, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:13:49', '2022-01-18 05:13:49'),
(8, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:14:06', '2022-01-18 05:14:06'),
(9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:14:14', '2022-01-18 05:14:14'),
(10, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:14:18', '2022-01-18 05:14:18'),
(11, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:14:21', '2022-01-18 05:14:21'),
(12, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:14:36', '2022-01-18 05:14:36'),
(13, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:15:30', '2022-01-18 05:15:30'),
(14, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:15:44', '2022-01-18 05:15:44'),
(15, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:16:09', '2022-01-18 05:16:09'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:18:58', '2022-01-18 05:18:58'),
(17, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:19:00', '2022-01-18 05:19:00'),
(18, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:19:03', '2022-01-18 05:19:03'),
(19, 1, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"locations\\/1.jpg\"}', '2022-01-18 05:19:05', '2022-01-18 05:19:05'),
(20, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:19:19', '2022-01-18 05:19:19'),
(21, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:19:20', '2022-01-18 05:19:20'),
(22, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"users\\/2\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:19:22', '2022-01-18 05:19:22'),
(23, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"users\\/2\\/bites\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:19:23', '2022-01-18 05:19:23'),
(24, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"users\\/2\\/bites\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:19:29', '2022-01-18 05:19:29'),
(25, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"users\\/2\\/bites\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:19:35', '2022-01-18 05:19:35'),
(26, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:14', '2022-01-18 05:20:14'),
(27, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:16', '2022-01-18 05:20:16'),
(28, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/no_img\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:18', '2022-01-18 05:20:18'),
(29, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:21', '2022-01-18 05:20:21'),
(30, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:23', '2022-01-18 05:20:23'),
(31, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:26', '2022-01-18 05:20:26'),
(32, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:27', '2022-01-18 05:20:27'),
(33, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\\/beluga\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:32', '2022-01-18 05:20:32'),
(34, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:36', '2022-01-18 05:20:36'),
(35, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:45', '2022-01-18 05:20:45'),
(36, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:46', '2022-01-18 05:20:46'),
(37, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:20:51', '2022-01-18 05:20:51'),
(38, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:21:12', '2022-01-18 05:21:12'),
(39, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:27:51', '2022-01-18 05:27:51'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:28:09', '2022-01-18 05:28:09'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:28:22', '2022-01-18 05:28:22'),
(42, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"icon\":\"fa-users\",\"uri\":\"demo\\/users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\"}', '2022-01-18 05:30:07', '2022-01-18 05:30:07'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:30:07', '2022-01-18 05:30:07'),
(44, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:30:12', '2022-01-18 05:30:12'),
(45, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:30:19', '2022-01-18 05:30:19'),
(46, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:30:41', '2022-01-18 05:30:41'),
(47, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:30:43', '2022-01-18 05:30:43'),
(48, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:31:01', '2022-01-18 05:31:01'),
(49, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2022-01-18 05:31:36', '2022-01-18 05:31:36'),
(50, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:33:33', '2022-01-18 05:33:33'),
(51, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:37:09', '2022-01-18 05:37:09'),
(52, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2022-01-18 05:37:10', '2022-01-18 05:37:10'),
(53, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/no_img\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:37:15', '2022-01-18 05:37:15'),
(54, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/no_img\"}', '2022-01-18 05:38:15', '2022-01-18 05:38:15'),
(55, 1, 'admin/demo/users', 'GET', '127.0.0.1', '[]', '2022-01-18 05:39:05', '2022-01-18 05:39:05'),
(56, 1, 'admin/demo/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:39:39', '2022-01-18 05:39:39'),
(57, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:39:44', '2022-01-18 05:39:44'),
(58, 1, 'admin/demo/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:39:48', '2022-01-18 05:39:48'),
(59, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:39:50', '2022-01-18 05:39:50'),
(60, 1, 'admin/demo/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:39:52', '2022-01-18 05:39:52'),
(61, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:40:04', '2022-01-18 05:40:04'),
(62, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:40:05', '2022-01-18 05:40:05'),
(63, 1, 'admin/demo/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:40:06', '2022-01-18 05:40:06'),
(64, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:47:25', '2022-01-18 05:47:25'),
(65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:47:33', '2022-01-18 05:47:33'),
(66, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:47:37', '2022-01-18 05:47:37'),
(67, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u0438\",\"icon\":\"fa-users\",\"uri\":\"users\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 05:47:44', '2022-01-18 05:47:44'),
(68, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:47:44', '2022-01-18 05:47:44'),
(69, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:47:51', '2022-01-18 05:47:51'),
(70, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:47:54', '2022-01-18 05:47:54'),
(71, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:50:13', '2022-01-18 05:50:13'),
(72, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:50:17', '2022-01-18 05:50:17'),
(73, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:50:19', '2022-01-18 05:50:19'),
(74, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c\\u044b\",\"icon\":\"fa-water\",\"uri\":\"locations\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\"}', '2022-01-18 05:51:27', '2022-01-18 05:51:27'),
(75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:51:27', '2022-01-18 05:51:27'),
(76, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:51:31', '2022-01-18 05:51:31'),
(77, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:51:32', '2022-01-18 05:51:32'),
(78, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:51:59', '2022-01-18 05:51:59'),
(79, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:52:11', '2022-01-18 05:52:11'),
(80, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:52:14', '2022-01-18 05:52:14'),
(81, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:52:51', '2022-01-18 05:52:51'),
(82, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:52:53', '2022-01-18 05:52:53'),
(83, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:52:56', '2022-01-18 05:52:56'),
(84, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:52:56', '2022-01-18 05:52:56'),
(85, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:52:59', '2022-01-18 05:52:59'),
(86, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c\\u044b\",\"icon\":\"fas fa-water\",\"uri\":\"locations\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 05:53:07', '2022-01-18 05:53:07'),
(87, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:53:08', '2022-01-18 05:53:08'),
(88, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:53:11', '2022-01-18 05:53:11'),
(89, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:53:13', '2022-01-18 05:53:13'),
(90, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c\\u044b\",\"icon\":\"fa-map-marker\",\"uri\":\"locations\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 05:57:29', '2022-01-18 05:57:29'),
(91, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:57:29', '2022-01-18 05:57:29'),
(92, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 05:57:31', '2022-01-18 05:57:31'),
(93, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:57:35', '2022-01-18 05:57:35'),
(94, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:58:08', '2022-01-18 05:58:08'),
(95, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:58:27', '2022-01-18 05:58:27'),
(96, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 05:58:29', '2022-01-18 05:58:29'),
(97, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:58:38', '2022-01-18 05:58:38'),
(98, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:58:38', '2022-01-18 05:58:38'),
(99, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:58:39', '2022-01-18 05:58:39'),
(100, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 05:58:44', '2022-01-18 05:58:44'),
(101, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 05:58:46', '2022-01-18 05:58:46'),
(102, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 05:58:56', '2022-01-18 05:58:56'),
(103, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 05:59:13', '2022-01-18 05:59:13'),
(104, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 06:02:12', '2022-01-18 06:02:12'),
(105, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2022-01-18 06:02:45', '2022-01-18 06:02:45'),
(106, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:06:10', '2022-01-18 06:06:10'),
(107, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:11:34', '2022-01-18 06:11:34'),
(108, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:11:55', '2022-01-18 06:11:55'),
(109, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:12:27', '2022-01-18 06:12:27'),
(110, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:12:47', '2022-01-18 06:12:47'),
(111, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:12:51', '2022-01-18 06:12:51'),
(112, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:12:53', '2022-01-18 06:12:53'),
(113, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:13:30', '2022-01-18 06:13:30'),
(114, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:14:10', '2022-01-18 06:14:10'),
(115, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 06:17:18', '2022-01-18 06:17:18'),
(116, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:17:20', '2022-01-18 06:17:20'),
(117, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 06:17:20', '2022-01-18 06:17:20'),
(118, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:17:42', '2022-01-18 06:17:42'),
(119, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 06:17:42', '2022-01-18 06:17:42'),
(120, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 06:17:46', '2022-01-18 06:17:46'),
(121, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:17:48', '2022-01-18 06:17:48'),
(122, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 06:17:49', '2022-01-18 06:17:49'),
(123, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 06:18:14', '2022-01-18 06:18:14'),
(124, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:18:16', '2022-01-18 06:18:16'),
(125, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:32:03', '2022-01-18 06:32:03'),
(126, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:33:57', '2022-01-18 06:33:57'),
(127, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:33:59', '2022-01-18 06:33:59'),
(128, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:35:23', '2022-01-18 06:35:23'),
(129, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:35:24', '2022-01-18 06:35:24'),
(130, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:35:26', '2022-01-18 06:35:26'),
(131, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:35:27', '2022-01-18 06:35:27'),
(132, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:37:18', '2022-01-18 06:37:18'),
(133, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:37:51', '2022-01-18 06:37:51'),
(134, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:38:09', '2022-01-18 06:38:09'),
(135, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:38:45', '2022-01-18 06:38:45'),
(136, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:39:02', '2022-01-18 06:39:02'),
(137, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:41:15', '2022-01-18 06:41:15'),
(138, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:42:35', '2022-01-18 06:42:35'),
(139, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:44:05', '2022-01-18 06:44:05'),
(140, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:44:12', '2022-01-18 06:44:12'),
(141, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:44:14', '2022-01-18 06:44:14'),
(142, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:48:35', '2022-01-18 06:48:35'),
(143, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-18 06:49:12', '2022-01-18 06:49:12'),
(144, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:56:26', '2022-01-18 06:56:26'),
(145, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:56:34', '2022-01-18 06:56:34'),
(146, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:56:36', '2022-01-18 06:56:36'),
(147, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:56:38', '2022-01-18 06:56:38'),
(148, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041f\\u0430\\u043d\\u0435\\u043b\\u044c\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:56:49', '2022-01-18 06:56:49'),
(149, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:56:50', '2022-01-18 06:56:50'),
(150, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:56:52', '2022-01-18 06:56:52'),
(151, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:57:01', '2022-01-18 06:57:01'),
(152, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:57:02', '2022-01-18 06:57:02'),
(153, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:57:04', '2022-01-18 06:57:04'),
(154, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:06', '2022-01-18 06:57:06'),
(155, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:23', '2022-01-18 06:57:23'),
(156, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:26', '2022-01-18 06:57:26'),
(157, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:31', '2022-01-18 06:57:31'),
(158, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:32', '2022-01-18 06:57:32'),
(159, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:35', '2022-01-18 06:57:35'),
(160, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:37', '2022-01-18 06:57:37'),
(161, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u041c\\u0435\\u043d\\u044e\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:57:42', '2022-01-18 06:57:42'),
(162, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:57:42', '2022-01-18 06:57:42'),
(163, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:45', '2022-01-18 06:57:45'),
(164, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u0420\\u0430\\u0437\\u0440\\u0435\\u0448\\u0435\\u043d\\u0438\\u044f\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:57:51', '2022-01-18 06:57:51'),
(165, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:57:51', '2022-01-18 06:57:51'),
(166, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:57:54', '2022-01-18 06:57:54'),
(167, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u041b\\u043e\\u0433\\u0438\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:57:58', '2022-01-18 06:57:58'),
(168, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:57:59', '2022-01-18 06:57:59'),
(169, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:58:01', '2022-01-18 06:58:01'),
(170, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u0420\\u043e\\u043b\\u0438\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:58:06', '2022-01-18 06:58:06'),
(171, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:58:06', '2022-01-18 06:58:06'),
(172, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:58:09', '2022-01-18 06:58:09'),
(173, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:58:19', '2022-01-18 06:58:19'),
(174, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:58:20', '2022-01-18 06:58:20'),
(175, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:58:23', '2022-01-18 06:58:23'),
(176, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b\",\"icon\":\"fa-user\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:58:35', '2022-01-18 06:58:35'),
(177, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:58:35', '2022-01-18 06:58:35'),
(178, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:58:38', '2022-01-18 06:58:38'),
(179, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:58:40', '2022-01-18 06:58:40'),
(180, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:58:44', '2022-01-18 06:58:44'),
(181, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:58:46', '2022-01-18 06:58:46'),
(182, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0442\\u043e\\u0440\\u044b\",\"icon\":\"fa-user-md\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:59:06', '2022-01-18 06:59:06'),
(183, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:59:06', '2022-01-18 06:59:06'),
(184, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:59:09', '2022-01-18 06:59:09'),
(185, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:59:18', '2022-01-18 06:59:18'),
(186, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Media manager\",\"icon\":\"fa-file-image-o\",\"uri\":\"\\u041c\\u0435\\u0434\\u0438\\u0430\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:59:31', '2022-01-18 06:59:31'),
(187, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:59:31', '2022-01-18 06:59:31'),
(188, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:59:33', '2022-01-18 06:59:33'),
(189, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:59:37', '2022-01-18 06:59:37'),
(190, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041c\\u0435\\u0434\\u0438\\u0430\",\"icon\":\"fa-file-image-o\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 06:59:49', '2022-01-18 06:59:49'),
(191, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 06:59:49', '2022-01-18 06:59:49'),
(192, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 06:59:51', '2022-01-18 06:59:51'),
(193, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:00:53', '2022-01-18 07:00:53'),
(194, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:00:58', '2022-01-18 07:00:58'),
(195, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u041c\\u0435\\u0434\\u0438\\u0430\",\"icon\":\"fa-file-image-o\",\"uri\":\"media\",\"roles\":[null],\"permission\":null,\"_token\":\"866lPsgcg6hlGZO9dHcWfPE9UVWj4Gbqe6bTmOBc\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-18 07:01:03', '2022-01-18 07:01:03'),
(196, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-18 07:01:03', '2022-01-18 07:01:03'),
(197, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:01:06', '2022-01-18 07:01:06'),
(198, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:01:10', '2022-01-18 07:01:10'),
(199, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\\/2\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:01:12', '2022-01-18 07:01:12'),
(200, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\\/2\\/bites\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:01:13', '2022-01-18 07:01:13'),
(201, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:04:33', '2022-01-18 07:04:33'),
(202, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 07:04:50', '2022-01-18 07:04:50'),
(203, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:04:53', '2022-01-18 07:04:53'),
(204, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:04:54', '2022-01-18 07:04:54'),
(205, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:04:55', '2022-01-18 07:04:55'),
(206, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:04:56', '2022-01-18 07:04:56'),
(207, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:04:59', '2022-01-18 07:04:59'),
(208, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/admin\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:05:01', '2022-01-18 07:05:01'),
(209, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:05:04', '2022-01-18 07:05:04'),
(210, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/no_img\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:05:05', '2022-01-18 07:05:05'),
(211, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-18 07:06:33', '2022-01-18 07:06:33'),
(212, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:35', '2022-01-18 07:06:35'),
(213, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/admin\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:36', '2022-01-18 07:06:36'),
(214, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:37', '2022-01-18 07:06:37'),
(215, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:38', '2022-01-18 07:06:38'),
(216, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\\/beluga\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:42', '2022-01-18 07:06:42'),
(217, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:44', '2022-01-18 07:06:44'),
(218, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:45', '2022-01-18 07:06:45'),
(219, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/no_img\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:47', '2022-01-18 07:06:47'),
(220, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:50', '2022-01-18 07:06:50'),
(221, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:52', '2022-01-18 07:06:52'),
(222, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\\/2\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:53', '2022-01-18 07:06:53'),
(223, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\\/2\\/catches\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:54', '2022-01-18 07:06:54'),
(224, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\\/2\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:57', '2022-01-18 07:06:57'),
(225, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/users\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:58', '2022-01-18 07:06:58'),
(226, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:06:59', '2022-01-18 07:06:59'),
(227, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:07:00', '2022-01-18 07:07:00'),
(228, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:07:22', '2022-01-18 07:07:22'),
(229, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:07:23', '2022-01-18 07:07:23'),
(230, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:07:30', '2022-01-18 07:07:30'),
(231, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:07:58', '2022-01-18 07:07:58'),
(232, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:08:01', '2022-01-18 07:08:01'),
(233, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:08:02', '2022-01-18 07:08:02'),
(234, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:08:07', '2022-01-18 07:08:07'),
(235, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:08:55', '2022-01-18 07:08:55'),
(236, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:01', '2022-01-18 07:09:01'),
(237, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:03', '2022-01-18 07:09:03'),
(238, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:10', '2022-01-18 07:09:10'),
(239, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:15', '2022-01-18 07:09:15'),
(240, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:16', '2022-01-18 07:09:16'),
(241, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:18', '2022-01-18 07:09:18'),
(242, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:19', '2022-01-18 07:09:19'),
(243, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:22', '2022-01-18 07:09:22'),
(244, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:09:42', '2022-01-18 07:09:42'),
(245, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:10:21', '2022-01-18 07:10:21'),
(246, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 07:12:18', '2022-01-18 07:12:18'),
(247, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 07:12:22', '2022-01-18 07:12:22'),
(248, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 07:12:54', '2022-01-18 07:12:54'),
(249, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:12:56', '2022-01-18 07:12:56'),
(250, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:12:57', '2022-01-18 07:12:57'),
(251, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:13:00', '2022-01-18 07:13:00'),
(252, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:13:01', '2022-01-18 07:13:01'),
(253, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:13:02', '2022-01-18 07:13:02'),
(254, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:13:24', '2022-01-18 07:13:24'),
(255, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:15:12', '2022-01-18 07:15:12'),
(256, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"id\":null,\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:15:16', '2022-01-18 07:15:16'),
(257, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:15:17', '2022-01-18 07:15:17'),
(258, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:15:34', '2022-01-18 07:15:34'),
(259, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:16:35', '2022-01-18 07:16:35'),
(260, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:19:14', '2022-01-18 07:19:14'),
(261, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:19:28', '2022-01-18 07:19:28'),
(262, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:20:20', '2022-01-18 07:20:20'),
(263, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:21:30', '2022-01-18 07:21:30'),
(264, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:23:12', '2022-01-18 07:23:12'),
(265, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:24:29', '2022-01-18 07:24:29'),
(266, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2022-01-18 07:25:23', '2022-01-18 07:25:23'),
(267, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"square\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:26:09', '2022-01-18 07:26:09'),
(268, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:26:59', '2022-01-18 07:26:59'),
(269, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:31:43', '2022-01-18 07:31:43'),
(270, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-18 07:32:03', '2022-01-18 07:32:03'),
(271, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:32:45', '2022-01-18 07:32:45'),
(272, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:39:48', '2022-01-18 07:39:48'),
(273, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:39:51', '2022-01-18 07:39:51'),
(274, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:39:52', '2022-01-18 07:39:52'),
(275, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:40:13', '2022-01-18 07:40:13'),
(276, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:40:17', '2022-01-18 07:40:17'),
(277, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-18 07:40:19', '2022-01-18 07:40:19'),
(278, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 09:50:33', '2022-01-19 09:50:33'),
(279, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:38', '2022-01-19 09:50:38'),
(280, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:41', '2022-01-19 09:50:41'),
(281, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:43', '2022-01-19 09:50:43'),
(282, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:44', '2022-01-19 09:50:44'),
(283, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:46', '2022-01-19 09:50:46'),
(284, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\\/2\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:47', '2022-01-19 09:50:47'),
(285, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:50', '2022-01-19 09:50:50'),
(286, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:50', '2022-01-19 09:50:50'),
(287, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:52', '2022-01-19 09:50:52'),
(288, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\\/\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:50:53', '2022-01-19 09:50:53'),
(289, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:00', '2022-01-19 09:51:00'),
(290, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:04', '2022-01-19 09:51:04'),
(291, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:07', '2022-01-19 09:51:07'),
(292, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:08', '2022-01-19 09:51:08'),
(293, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:10', '2022-01-19 09:51:10'),
(294, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:20', '2022-01-19 09:51:20'),
(295, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:22', '2022-01-19 09:51:22'),
(296, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:24', '2022-01-19 09:51:24'),
(297, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:51:27', '2022-01-19 09:51:27'),
(298, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u0422\\u0438\\u043f\\u044b \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u043e\\u0432\",\"icon\":\"fa-align-justify\",\"uri\":\"water_types\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 09:53:29', '2022-01-19 09:53:29'),
(299, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:53:30', '2022-01-19 09:53:30'),
(300, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:53:34', '2022-01-19 09:53:34'),
(301, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0421\\u043f\\u0438\\u0441\\u043e\\u043a \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u043e\\u0432\",\"icon\":\"fa-map-marker\",\"uri\":\"locations\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 09:55:35', '2022-01-19 09:55:35'),
(302, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:55:35', '2022-01-19 09:55:35'),
(303, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:55:38', '2022-01-19 09:55:38'),
(304, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:55:49', '2022-01-19 09:55:49'),
(305, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_order\":\"[{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":11}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}', '2022-01-19 09:55:57', '2022-01-19 09:55:57'),
(306, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:55:58', '2022-01-19 09:55:58'),
(307, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:55:59', '2022-01-19 09:55:59'),
(308, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:56:03', '2022-01-19 09:56:03'),
(309, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c\\u044b\",\"icon\":\"fa-map-o\",\"uri\":\"locations\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-19 09:56:19', '2022-01-19 09:56:19'),
(310, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:56:19', '2022-01-19 09:56:19'),
(311, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:56:23', '2022-01-19 09:56:23'),
(312, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:56:41', '2022-01-19 09:56:41'),
(313, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:56:44', '2022-01-19 09:56:44'),
(314, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:57:17', '2022-01-19 09:57:17'),
(315, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:57:22', '2022-01-19 09:57:22'),
(316, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:57:24', '2022-01-19 09:57:24'),
(317, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:57:24', '2022-01-19 09:57:24'),
(318, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:57:26', '2022-01-19 09:57:26'),
(319, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:57:28', '2022-01-19 09:57:28'),
(320, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u0421\\u0443\\u0431\\u044a\\u0435\\u043a\\u0442\\u044b\",\"icon\":\"fa-flag\",\"uri\":\"subjects\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 09:58:59', '2022-01-19 09:58:59'),
(321, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:59:00', '2022-01-19 09:59:00'),
(322, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:59:05', '2022-01-19 09:59:05'),
(323, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_order\":\"[{\\\"id\\\":9},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":11},{\\\"id\\\":13}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8}]\"}', '2022-01-19 09:59:11', '2022-01-19 09:59:11'),
(324, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:59:11', '2022-01-19 09:59:11'),
(325, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 09:59:16', '2022-01-19 09:59:16'),
(326, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:59:18', '2022-01-19 09:59:18'),
(327, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:59:20', '2022-01-19 09:59:20'),
(328, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:59:22', '2022-01-19 09:59:22'),
(329, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\\/2\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:59:24', '2022-01-19 09:59:24'),
(330, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:59:26', '2022-01-19 09:59:26'),
(331, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 09:59:27', '2022-01-19 09:59:27'),
(332, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2022-01-19 10:01:47', '2022-01-19 10:01:47'),
(333, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:02:02', '2022-01-19 10:02:02'),
(334, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:02:13', '2022-01-19 10:02:13'),
(335, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:02:20', '2022-01-19 10:02:20'),
(336, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2022-01-19 10:02:39', '2022-01-19 10:02:39'),
(337, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:02:42', '2022-01-19 10:02:42'),
(338, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 10:02:44', '2022-01-19 10:02:44'),
(339, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:14:40', '2022-01-19 10:14:40'),
(340, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:14:49', '2022-01-19 10:14:49'),
(341, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:14:53', '2022-01-19 10:14:53'),
(342, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:14:57', '2022-01-19 10:14:57'),
(343, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:15:00', '2022-01-19 10:15:00'),
(344, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:15:07', '2022-01-19 10:15:07'),
(345, 1, 'admin/subjects', 'GET', '127.0.0.1', '[]', '2022-01-19 10:15:17', '2022-01-19 10:15:17'),
(346, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:15:38', '2022-01-19 10:15:38'),
(347, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:15:42', '2022-01-19 10:15:42'),
(348, 1, 'admin/subjects', 'GET', '127.0.0.1', '[]', '2022-01-19 10:15:43', '2022-01-19 10:15:43'),
(349, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:15:46', '2022-01-19 10:15:46');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(350, 1, 'admin/subjects', 'POST', '127.0.0.1', '{\"name\":\"\\u041d\\u043e\\u0432\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/subjects\"}', '2022-01-19 10:15:53', '2022-01-19 10:15:53'),
(351, 1, 'admin/subjects', 'GET', '127.0.0.1', '[]', '2022-01-19 10:15:53', '2022-01-19 10:15:53'),
(352, 1, 'admin/subjects', 'GET', '127.0.0.1', '[]', '2022-01-19 10:16:13', '2022-01-19 10:16:13'),
(353, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:16:22', '2022-01-19 10:16:22'),
(354, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:16:27', '2022-01-19 10:16:27'),
(355, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:16:29', '2022-01-19 10:16:29'),
(356, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-01-19 10:16:35', '2022-01-19 10:16:35'),
(357, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-01-19 10:17:49', '2022-01-19 10:17:49'),
(358, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:17:52', '2022-01-19 10:17:52'),
(359, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:17:54', '2022-01-19 10:17:54'),
(360, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 10:21:28', '2022-01-19 10:21:28'),
(361, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 10:21:45', '2022-01-19 10:21:45'),
(362, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:24:38', '2022-01-19 10:24:38'),
(363, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:24:41', '2022-01-19 10:24:41'),
(364, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:24:42', '2022-01-19 10:24:42'),
(365, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2022-01-19 10:25:29', '2022-01-19 10:25:29'),
(366, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:25:33', '2022-01-19 10:25:33'),
(367, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:25:37', '2022-01-19 10:25:37'),
(368, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:27:55', '2022-01-19 10:27:55'),
(369, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:27:57', '2022-01-19 10:27:57'),
(370, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:27:59', '2022-01-19 10:27:59'),
(371, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 10:35:04', '2022-01-19 10:35:04'),
(372, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:35:09', '2022-01-19 10:35:09'),
(373, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:35:10', '2022-01-19 10:35:10'),
(374, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:35:13', '2022-01-19 10:35:13'),
(375, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:35:23', '2022-01-19 10:35:23'),
(376, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:35:29', '2022-01-19 10:35:29'),
(377, 1, 'admin/helpers/terminal/artisan', 'POST', '127.0.0.1', '{\"c\":\"config:cache\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 10:35:46', '2022-01-19 10:35:46'),
(378, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:35:53', '2022-01-19 10:35:53'),
(379, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2022-01-19 10:35:54', '2022-01-19 10:35:54'),
(380, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2022-01-19 10:36:07', '2022-01-19 10:36:07'),
(381, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:36:10', '2022-01-19 10:36:10'),
(382, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:37:06', '2022-01-19 10:37:06'),
(383, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:37:09', '2022-01-19 10:37:09'),
(384, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:37:37', '2022-01-19 10:37:37'),
(385, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:37:53', '2022-01-19 10:37:53'),
(386, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:37:57', '2022-01-19 10:37:57'),
(387, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0414\\u043e\\u043f\\u043e\\u043b\\u043d\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\",\"icon\":\"fa-gears\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-19 10:38:10', '2022-01-19 10:38:10'),
(388, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 10:38:10', '2022-01-19 10:38:10'),
(389, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:38:15', '2022-01-19 10:38:15'),
(390, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u0421\\u043e\\u0437\\u0434\\u0430\\u0442\\u044c \\u043c\\u043e\\u0434\\u0435\\u043b\\u044c\",\"icon\":\"fa-keyboard-o\",\"uri\":\"helpers\\/scaffold\",\"roles\":[null],\"permission\":null,\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-19 10:38:33', '2022-01-19 10:38:33'),
(391, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 10:38:34', '2022-01-19 10:38:34'),
(392, 1, 'admin/auth/menu/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:38:41', '2022-01-19 10:38:41'),
(393, 1, 'admin/auth/menu/16', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u0422\\u0435\\u0440\\u043c\\u0438\\u043d\\u0430\\u043b \\u0411\\u0414\",\"icon\":\"fa-database\",\"uri\":\"helpers\\/terminal\\/database\",\"roles\":[null],\"permission\":null,\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-19 10:38:50', '2022-01-19 10:38:50'),
(394, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 10:38:51', '2022-01-19 10:38:51'),
(395, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:38:53', '2022-01-19 10:38:53'),
(396, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2022-01-19 10:38:56', '2022-01-19 10:38:56'),
(397, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:39:00', '2022-01-19 10:39:00'),
(398, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:39:03', '2022-01-19 10:39:03'),
(399, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:39:05', '2022-01-19 10:39:05'),
(400, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:39:08', '2022-01-19 10:39:08'),
(401, 1, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:39:11', '2022-01-19 10:39:11'),
(402, 1, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u041a\\u043e\\u043d\\u0441\\u043e\\u043b\\u044c\",\"icon\":\"fa-terminal\",\"uri\":\"helpers\\/terminal\\/artisan\",\"roles\":[null],\"permission\":null,\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-19 10:39:21', '2022-01-19 10:39:21'),
(403, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 10:39:21', '2022-01-19 10:39:21'),
(404, 1, 'admin/auth/menu/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:39:25', '2022-01-19 10:39:25'),
(405, 1, 'admin/auth/menu/18', 'PUT', '127.0.0.1', '{\"parent_id\":\"14\",\"title\":\"\\u041c\\u0430\\u0440\\u0448\\u0440\\u0443\\u0442\\u044b\",\"icon\":\"fa-list-alt\",\"uri\":\"helpers\\/routes\",\"roles\":[null],\"permission\":null,\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-19 10:39:31', '2022-01-19 10:39:31'),
(406, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 10:39:32', '2022-01-19 10:39:32'),
(407, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-19 10:39:48', '2022-01-19 10:39:48'),
(408, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:39:53', '2022-01-19 10:39:53'),
(409, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:06', '2022-01-19 10:40:06'),
(410, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:11', '2022-01-19 10:40:11'),
(411, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:18', '2022-01-19 10:40:18'),
(412, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:23', '2022-01-19 10:40:23'),
(413, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:24', '2022-01-19 10:40:24'),
(414, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:25', '2022-01-19 10:40:25'),
(415, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:27', '2022-01-19 10:40:27'),
(416, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:46', '2022-01-19 10:40:46'),
(417, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:40:50', '2022-01-19 10:40:50'),
(418, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2022-01-19 10:46:18', '2022-01-19 10:46:18'),
(419, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 10:50:00', '2022-01-19 10:50:00'),
(420, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:50:03', '2022-01-19 10:50:03'),
(421, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:50:10', '2022-01-19 10:50:10'),
(422, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 10:50:13', '2022-01-19 10:50:13'),
(423, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:50:15', '2022-01-19 10:50:15'),
(424, 1, 'admin/water_types/add', 'GET', '127.0.0.1', '[]', '2022-01-19 10:52:51', '2022-01-19 10:52:51'),
(425, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 10:52:56', '2022-01-19 10:52:56'),
(426, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:52:58', '2022-01-19 10:52:58'),
(427, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 10:53:30', '2022-01-19 10:53:30'),
(428, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:53:33', '2022-01-19 10:53:33'),
(429, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:53:36', '2022-01-19 10:53:36'),
(430, 1, 'admin/water_types/add', 'GET', '127.0.0.1', '[]', '2022-01-19 10:54:02', '2022-01-19 10:54:02'),
(431, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:54:15', '2022-01-19 10:54:15'),
(432, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:54:17', '2022-01-19 10:54:17'),
(433, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:54:21', '2022-01-19 10:54:21'),
(434, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:54:23', '2022-01-19 10:54:23'),
(435, 1, 'admin/water_types/add', 'GET', '127.0.0.1', '[]', '2022-01-19 10:56:50', '2022-01-19 10:56:50'),
(436, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 10:57:00', '2022-01-19 10:57:00'),
(437, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 10:57:02', '2022-01-19 10:57:02'),
(438, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 10:59:26', '2022-01-19 10:59:26'),
(439, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:01:17', '2022-01-19 11:01:17'),
(440, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:01:20', '2022-01-19 11:01:20'),
(441, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:01:29', '2022-01-19 11:01:29'),
(442, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:01:31', '2022-01-19 11:01:31'),
(443, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:01:34', '2022-01-19 11:01:34'),
(444, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:07', '2022-01-19 11:09:07'),
(445, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:09', '2022-01-19 11:09:09'),
(446, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:11', '2022-01-19 11:09:11'),
(447, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:31', '2022-01-19 11:09:31'),
(448, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:35', '2022-01-19 11:09:35'),
(449, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:36', '2022-01-19 11:09:36'),
(450, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:38', '2022-01-19 11:09:38'),
(451, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:39', '2022-01-19 11:09:39'),
(452, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:42', '2022-01-19 11:09:42'),
(453, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:43', '2022-01-19 11:09:43'),
(454, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:46', '2022-01-19 11:09:46'),
(455, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:47', '2022-01-19 11:09:47'),
(456, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:09:50', '2022-01-19 11:09:50'),
(457, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:11:05', '2022-01-19 11:11:05'),
(458, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:11:07', '2022-01-19 11:11:07'),
(459, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:11:09', '2022-01-19 11:11:09'),
(460, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:12:14', '2022-01-19 11:12:14'),
(461, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:12:16', '2022-01-19 11:12:16'),
(462, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:12:17', '2022-01-19 11:12:17'),
(463, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:13:07', '2022-01-19 11:13:07'),
(464, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:13:09', '2022-01-19 11:13:09'),
(465, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 11:13:43', '2022-01-19 11:13:43'),
(466, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:14:06', '2022-01-19 11:14:06'),
(467, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 11:14:51', '2022-01-19 11:14:51'),
(468, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:14:53', '2022-01-19 11:14:53'),
(469, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:14:55', '2022-01-19 11:14:55'),
(470, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:14:57', '2022-01-19 11:14:57'),
(471, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:14:57', '2022-01-19 11:14:57'),
(472, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 11:15:38', '2022-01-19 11:15:38'),
(473, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:15:38', '2022-01-19 11:15:38'),
(474, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 11:16:13', '2022-01-19 11:16:13'),
(475, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:16:14', '2022-01-19 11:16:14'),
(476, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:16:18', '2022-01-19 11:16:18'),
(477, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:16:20', '2022-01-19 11:16:20'),
(478, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"union\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:16:22', '2022-01-19 11:16:22'),
(479, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:16:23', '2022-01-19 11:16:23'),
(480, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"union\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 11:16:37', '2022-01-19 11:16:37'),
(481, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:16:38', '2022-01-19 11:16:38'),
(482, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:17:36', '2022-01-19 11:17:36'),
(483, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 11:17:39', '2022-01-19 11:17:39'),
(484, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:17:39', '2022-01-19 11:17:39'),
(485, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:17:59', '2022-01-19 11:17:59'),
(486, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:18:01', '2022-01-19 11:18:01'),
(487, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:18:03', '2022-01-19 11:18:03'),
(488, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:18:03', '2022-01-19 11:18:03'),
(489, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:19:58', '2022-01-19 11:19:58'),
(490, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:19:59', '2022-01-19 11:19:59'),
(491, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:20:00', '2022-01-19 11:20:00'),
(492, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:20:04', '2022-01-19 11:20:04'),
(493, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:20:04', '2022-01-19 11:20:04'),
(494, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:21:27', '2022-01-19 11:21:27'),
(495, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:21:29', '2022-01-19 11:21:29'),
(496, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:21:31', '2022-01-19 11:21:31'),
(497, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:21:32', '2022-01-19 11:21:32'),
(498, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:22:06', '2022-01-19 11:22:06'),
(499, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:22:08', '2022-01-19 11:22:08'),
(500, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:22:10', '2022-01-19 11:22:10'),
(501, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:22:58', '2022-01-19 11:22:58'),
(502, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:23:01', '2022-01-19 11:23:01'),
(503, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:23:04', '2022-01-19 11:23:04'),
(504, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:23:05', '2022-01-19 11:23:05'),
(505, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:23:07', '2022-01-19 11:23:07'),
(506, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"union\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:23:09', '2022-01-19 11:23:09'),
(507, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:23:10', '2022-01-19 11:23:10'),
(508, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:23:48', '2022-01-19 11:23:48'),
(509, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:23:52', '2022-01-19 11:23:52'),
(510, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:23:56', '2022-01-19 11:23:56'),
(511, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:23:59', '2022-01-19 11:23:59'),
(512, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 11:42:36', '2022-01-19 11:42:36'),
(513, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:42:41', '2022-01-19 11:42:41'),
(514, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:42:42', '2022-01-19 11:42:42'),
(515, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:42:44', '2022-01-19 11:42:44'),
(516, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:44:31', '2022-01-19 11:44:31'),
(517, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:44:34', '2022-01-19 11:44:34'),
(518, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:44:36', '2022-01-19 11:44:36'),
(519, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:44:38', '2022-01-19 11:44:38'),
(520, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:44:38', '2022-01-19 11:44:38'),
(521, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:44:57', '2022-01-19 11:44:57'),
(522, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:44:58', '2022-01-19 11:44:58'),
(523, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:45:01', '2022-01-19 11:45:01'),
(524, 1, 'admin/water_types/addWaterType', 'GET', '127.0.0.1', '[]', '2022-01-19 11:45:02', '2022-01-19 11:45:02'),
(525, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 11:45:29', '2022-01-19 11:45:29'),
(526, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 11:45:41', '2022-01-19 11:45:41'),
(527, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:45:42', '2022-01-19 11:45:42'),
(528, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:45:46', '2022-01-19 11:45:46'),
(529, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:46:30', '2022-01-19 11:46:30'),
(530, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:46:36', '2022-01-19 11:46:36'),
(531, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:46:38', '2022-01-19 11:46:38'),
(532, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:46:40', '2022-01-19 11:46:40'),
(533, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:47:29', '2022-01-19 11:47:29'),
(534, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 11:47:34', '2022-01-19 11:47:34'),
(535, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:47:34', '2022-01-19 11:47:34'),
(536, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:47:58', '2022-01-19 11:47:58'),
(537, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:48:01', '2022-01-19 11:48:01'),
(538, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"union\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:48:03', '2022-01-19 11:48:03'),
(539, 1, 'admin/water_types/addWaterType', 'GET', '127.0.0.1', '[]', '2022-01-19 11:48:03', '2022-01-19 11:48:03'),
(540, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 11:57:05', '2022-01-19 11:57:05'),
(541, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:57:14', '2022-01-19 11:57:14'),
(542, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:57:16', '2022-01-19 11:57:16'),
(543, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:57:19', '2022-01-19 11:57:19'),
(544, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:57:19', '2022-01-19 11:57:19'),
(545, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:57:38', '2022-01-19 11:57:38'),
(546, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:57:42', '2022-01-19 11:57:42'),
(547, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:57:43', '2022-01-19 11:57:43'),
(548, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 11:59:05', '2022-01-19 11:59:05'),
(549, 1, 'admin/water_types/addWaterType', 'POST', '127.0.0.1', '{\"name\":\"union\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 11:59:07', '2022-01-19 11:59:07'),
(550, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '[]', '2022-01-19 11:59:08', '2022-01-19 11:59:08'),
(551, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:00:25', '2022-01-19 12:00:25'),
(552, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 12:00:36', '2022-01-19 12:00:36'),
(553, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 12:01:10', '2022-01-19 12:01:10'),
(554, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:01:13', '2022-01-19 12:01:13'),
(555, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:01:20', '2022-01-19 12:01:20'),
(556, 1, 'admin/water_types', 'POST', '127.0.0.1', '{\"name\":\"qwerty2\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 12:01:24', '2022-01-19 12:01:24'),
(557, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:01:47', '2022-01-19 12:01:47'),
(558, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:01:49', '2022-01-19 12:01:49'),
(559, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:01:51', '2022-01-19 12:01:51'),
(560, 1, 'admin/water_types', 'POST', '127.0.0.1', '{\"name\":\"qwerty2\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 12:01:54', '2022-01-19 12:01:54'),
(561, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 12:01:54', '2022-01-19 12:01:54'),
(562, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 12:02:50', '2022-01-19 12:02:50'),
(563, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:02:52', '2022-01-19 12:02:52'),
(564, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:02:54', '2022-01-19 12:02:54'),
(565, 1, 'admin/water_types', 'POST', '127.0.0.1', '{\"name\":\"qwerty2\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 12:03:05', '2022-01-19 12:03:05'),
(566, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:03:30', '2022-01-19 12:03:30'),
(567, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:03:30', '2022-01-19 12:03:30'),
(568, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:03:32', '2022-01-19 12:03:32'),
(569, 1, 'admin/water_types', 'POST', '127.0.0.1', '{\"name\":\"union\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 12:03:34', '2022-01-19 12:03:34'),
(570, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 12:04:26', '2022-01-19 12:04:26'),
(571, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:04:27', '2022-01-19 12:04:27'),
(572, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:04:28', '2022-01-19 12:04:28'),
(573, 1, 'admin/water_types', 'POST', '127.0.0.1', '{\"name\":\"qwerty2\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/water_types\"}', '2022-01-19 12:04:30', '2022-01-19 12:04:30'),
(574, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 12:04:31', '2022-01-19 12:04:31'),
(575, 1, 'admin/water_types', 'GET', '127.0.0.1', '[]', '2022-01-19 12:06:17', '2022-01-19 12:06:17'),
(576, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:06:22', '2022-01-19 12:06:22'),
(577, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:06:35', '2022-01-19 12:06:35'),
(578, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:06:38', '2022-01-19 12:06:38'),
(579, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:08', '2022-01-19 12:07:08'),
(580, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:11', '2022-01-19 12:07:11'),
(581, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:13', '2022-01-19 12:07:13'),
(582, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\\/3\",\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:15', '2022-01-19 12:07:15'),
(583, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:17', '2022-01-19 12:07:17'),
(584, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:20', '2022-01-19 12:07:20'),
(585, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:22', '2022-01-19 12:07:22'),
(586, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:30', '2022-01-19 12:07:30'),
(587, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:07:39', '2022-01-19 12:07:39'),
(588, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:13:03', '2022-01-19 12:13:03'),
(589, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 12:14:48', '2022-01-19 12:14:48'),
(590, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 12:15:31', '2022-01-19 12:15:31'),
(591, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 12:16:01', '2022-01-19 12:16:01'),
(592, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 12:17:36', '2022-01-19 12:17:36'),
(593, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 12:20:44', '2022-01-19 12:20:44'),
(594, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 12:21:28', '2022-01-19 12:21:28'),
(595, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 12:24:29', '2022-01-19 12:24:29'),
(596, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:24:33', '2022-01-19 12:24:33'),
(597, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:24:35', '2022-01-19 12:24:35'),
(598, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 12:25:02', '2022-01-19 12:25:02'),
(599, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:25:06', '2022-01-19 12:25:06'),
(600, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:25:07', '2022-01-19 12:25:07'),
(601, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:25:09', '2022-01-19 12:25:09'),
(602, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:25:11', '2022-01-19 12:25:11'),
(603, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:26:44', '2022-01-19 12:26:44'),
(604, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:26:46', '2022-01-19 12:26:46'),
(605, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:27:00', '2022-01-19 12:27:00'),
(606, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:27:01', '2022-01-19 12:27:01'),
(607, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:27:10', '2022-01-19 12:27:10'),
(608, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:27:11', '2022-01-19 12:27:11'),
(609, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:27:13', '2022-01-19 12:27:13'),
(610, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:28:47', '2022-01-19 12:28:47'),
(611, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:28:48', '2022-01-19 12:28:48'),
(612, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:28:50', '2022-01-19 12:28:50'),
(613, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:28:52', '2022-01-19 12:28:52'),
(614, 1, 'admin/subjects/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:28:54', '2022-01-19 12:28:54'),
(615, 1, 'admin/subjects', 'POST', '127.0.0.1', '{\"name\":\"union\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/subjects\"}', '2022-01-19 12:28:56', '2022-01-19 12:28:56'),
(616, 1, 'admin/subjects', 'GET', '127.0.0.1', '[]', '2022-01-19 12:28:57', '2022-01-19 12:28:57'),
(617, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":null,\"_model\":\"App_Models_Subject\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-19 12:29:02', '2022-01-19 12:29:02'),
(618, 1, 'admin/subjects', 'GET', '127.0.0.1', '[]', '2022-01-19 12:29:17', '2022-01-19 12:29:17'),
(619, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:22', '2022-01-19 12:29:22'),
(620, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:26', '2022-01-19 12:29:26'),
(621, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:29', '2022-01-19 12:29:29'),
(622, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:30', '2022-01-19 12:29:30'),
(623, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:33', '2022-01-19 12:29:33'),
(624, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:41', '2022-01-19 12:29:41'),
(625, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:45', '2022-01-19 12:29:45'),
(626, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:47', '2022-01-19 12:29:47'),
(627, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:49', '2022-01-19 12:29:49'),
(628, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:29:59', '2022-01-19 12:29:59'),
(629, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:30:06', '2022-01-19 12:30:06'),
(630, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:30:08', '2022-01-19 12:30:08'),
(631, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 12:49:50', '2022-01-19 12:49:50'),
(632, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:49:54', '2022-01-19 12:49:54'),
(633, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:49:55', '2022-01-19 12:49:55'),
(634, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:51:55', '2022-01-19 12:51:55'),
(635, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 12:53:59', '2022-01-19 12:53:59'),
(636, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 12:55:52', '2022-01-19 12:55:52'),
(637, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 12:56:00', '2022-01-19 12:56:00'),
(638, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 12:56:07', '2022-01-19 12:56:07'),
(639, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 12:57:29', '2022-01-19 12:57:29'),
(640, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 12:58:16', '2022-01-19 12:58:16'),
(641, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:58:39', '2022-01-19 12:58:39'),
(642, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:58:40', '2022-01-19 12:58:40'),
(643, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 12:58:53', '2022-01-19 12:58:53'),
(644, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 12:59:14', '2022-01-19 12:59:14'),
(645, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:06:49', '2022-01-19 13:06:49'),
(646, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:07:47', '2022-01-19 13:07:47'),
(647, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:07:58', '2022-01-19 13:07:58'),
(648, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:08:38', '2022-01-19 13:08:38'),
(649, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:09:05', '2022-01-19 13:09:05'),
(650, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:15:02', '2022-01-19 13:15:02'),
(651, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:15:29', '2022-01-19 13:15:29'),
(652, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:15:33', '2022-01-19 13:15:33'),
(653, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:15:35', '2022-01-19 13:15:35'),
(654, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:15:51', '2022-01-19 13:15:51'),
(655, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:15:52', '2022-01-19 13:15:52'),
(656, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:17:13', '2022-01-19 13:17:13'),
(657, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:17:15', '2022-01-19 13:17:15'),
(658, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:17:17', '2022-01-19 13:17:17'),
(659, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:17:18', '2022-01-19 13:17:18'),
(660, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:17:31', '2022-01-19 13:17:31'),
(661, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:17:53', '2022-01-19 13:17:53'),
(662, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:20:05', '2022-01-19 13:20:05'),
(663, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:20:25', '2022-01-19 13:20:25'),
(664, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:21:29', '2022-01-19 13:21:29'),
(665, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:21:45', '2022-01-19 13:21:45'),
(666, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:21:48', '2022-01-19 13:21:48'),
(667, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:24:32', '2022-01-19 13:24:32'),
(668, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 13:25:14', '2022-01-19 13:25:14'),
(669, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:25:40', '2022-01-19 13:25:40'),
(670, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:25:43', '2022-01-19 13:25:43'),
(671, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:25:44', '2022-01-19 13:25:44'),
(672, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:25:46', '2022-01-19 13:25:46'),
(673, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:25:48', '2022-01-19 13:25:48'),
(674, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:25:50', '2022-01-19 13:25:50'),
(675, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 13:27:39', '2022-01-19 13:27:39'),
(676, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 1\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 13:28:02', '2022-01-19 13:28:02'),
(677, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:28:02', '2022-01-19 13:28:02'),
(678, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:29:28', '2022-01-19 13:29:28'),
(679, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 1\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 13:29:33', '2022-01-19 13:29:33'),
(680, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:29:34', '2022-01-19 13:29:34'),
(681, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:29:37', '2022-01-19 13:29:37'),
(682, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 2\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 13:29:42', '2022-01-19 13:29:42'),
(683, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:29:43', '2022-01-19 13:29:43'),
(684, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:33:39', '2022-01-19 13:33:39'),
(685, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:33:43', '2022-01-19 13:33:43'),
(686, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:33:45', '2022-01-19 13:33:45'),
(687, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:33:50', '2022-01-19 13:33:50'),
(688, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:33:53', '2022-01-19 13:33:53'),
(689, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:33:57', '2022-01-19 13:33:57'),
(690, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 2\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 13:34:07', '2022-01-19 13:34:07'),
(691, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:34:08', '2022-01-19 13:34:08'),
(692, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:36:44', '2022-01-19 13:36:44'),
(693, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:36:45', '2022-01-19 13:36:45'),
(694, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:36:48', '2022-01-19 13:36:48'),
(695, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 2\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 13:36:58', '2022-01-19 13:36:58'),
(696, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:36:59', '2022-01-19 13:36:59');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(697, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:38:03', '2022-01-19 13:38:03'),
(698, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:38:08', '2022-01-19 13:38:08'),
(699, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 2\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 13:38:23', '2022-01-19 13:38:23'),
(700, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:38:23', '2022-01-19 13:38:23'),
(701, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 13:40:02', '2022-01-19 13:40:02'),
(702, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:40:04', '2022-01-19 13:40:04'),
(703, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:40:06', '2022-01-19 13:40:06'),
(704, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 13:40:10', '2022-01-19 13:40:10'),
(705, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '[]', '2022-01-19 13:40:31', '2022-01-19 13:40:31'),
(706, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '[]', '2022-01-19 13:40:48', '2022-01-19 13:40:48'),
(707, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-19 14:00:05', '2022-01-19 14:00:05'),
(708, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:00:14', '2022-01-19 14:00:14'),
(709, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:00:18', '2022-01-19 14:00:18'),
(710, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 2\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 14:00:25', '2022-01-19 14:00:25'),
(711, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 14:00:25', '2022-01-19 14:00:25'),
(712, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:00:34', '2022-01-19 14:00:34'),
(713, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 2\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 14:00:40', '2022-01-19 14:00:40'),
(714, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 14:00:41', '2022-01-19 14:00:41'),
(715, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:03:16', '2022-01-19 14:03:16'),
(716, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 2\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 14:03:24', '2022-01-19 14:03:24'),
(717, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 14:03:25', '2022-01-19 14:03:25'),
(718, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 14:07:45', '2022-01-19 14:07:45'),
(719, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:07:48', '2022-01-19 14:07:48'),
(720, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:08:50', '2022-01-19 14:08:50'),
(721, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:08:51', '2022-01-19 14:08:51'),
(722, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:08:52', '2022-01-19 14:08:52'),
(723, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:08:57', '2022-01-19 14:08:57'),
(724, 1, 'admin/locations/8', 'PUT', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0434\\u043e\\u0435\\u043c 2\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"\\u043f\\u0438\\u043f\\u0441\\u0430\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\\u0432\\u0430\\u043f\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 14:09:12', '2022-01-19 14:09:12'),
(725, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '[]', '2022-01-19 14:09:13', '2022-01-19 14:09:13'),
(726, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 14:13:15', '2022-01-19 14:13:15'),
(727, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:13:19', '2022-01-19 14:13:19'),
(728, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:13:32', '2022-01-19 14:13:32'),
(729, 1, 'admin/locations/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:13:38', '2022-01-19 14:13:38'),
(730, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:13:42', '2022-01-19 14:13:42'),
(731, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:13:43', '2022-01-19 14:13:43'),
(732, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"\\u0412\\u043e\\u0431\\u043b\\u0435\\u0440 \\u21161\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":\"jm,.m,.m,.m,.m,.,.m\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"on\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 14:14:10', '2022-01-19 14:14:10'),
(733, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:14:53', '2022-01-19 14:14:53'),
(734, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:16:07', '2022-01-19 14:16:07'),
(735, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:18:18', '2022-01-19 14:18:18'),
(736, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"union\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":null,\"square\":null,\"depth\":null,\"subject\":\"\\u041f\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\\/8\\/edit\"}', '2022-01-19 14:18:52', '2022-01-19 14:18:52'),
(737, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:19:02', '2022-01-19 14:19:02'),
(738, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:20:18', '2022-01-19 14:20:18'),
(739, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:20:30', '2022-01-19 14:20:30'),
(740, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:22:39', '2022-01-19 14:22:39'),
(741, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:22:51', '2022-01-19 14:22:51'),
(742, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:23:13', '2022-01-19 14:23:13'),
(743, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"union\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":null,\"square\":null,\"depth\":null,\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\\/8\\/edit\"}', '2022-01-19 14:23:32', '2022-01-19 14:23:32'),
(744, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:23:57', '2022-01-19 14:23:57'),
(745, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:23:58', '2022-01-19 14:23:58'),
(746, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:23:59', '2022-01-19 14:23:59'),
(747, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:28:40', '2022-01-19 14:28:40'),
(748, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:32:02', '2022-01-19 14:32:02'),
(749, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:32:29', '2022-01-19 14:32:29'),
(750, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":null,\"square\":null,\"depth\":null,\"subject\":\"\\u041a\\u0430\\u043b\\u0443\\u0436\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"fishes\":[\"1\",\"2\",null],\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\\/8\\/edit\"}', '2022-01-19 14:32:43', '2022-01-19 14:32:43'),
(751, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-19 14:33:16', '2022-01-19 14:33:16'),
(752, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:33:21', '2022-01-19 14:33:21'),
(753, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":null,\"square\":null,\"depth\":null,\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"fishes\":[\"\\u0410\\u043c\\u0443\\u0440\",\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",null],\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-19 14:33:30', '2022-01-19 14:33:30'),
(754, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:33:42', '2022-01-19 14:33:42'),
(755, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"description\":null,\"square\":null,\"depth\":null,\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"fishes\":[\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"\\u0412\\u043e\\u0431\\u043b\\u0430\",null],\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\"}', '2022-01-19 14:33:57', '2022-01-19 14:33:57'),
(756, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:34:13', '2022-01-19 14:34:13'),
(757, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:34:14', '2022-01-19 14:34:14'),
(758, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:34:20', '2022-01-19 14:34:20'),
(759, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-19 14:34:56', '2022-01-19 14:34:56'),
(760, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0415\\u0440\\u0438\\u043a\",\"description\":\"<i><b>\\u044c\\u0431\\u044e\\u043e\\u043b\\u0434\\u043b\\u0434\\u0436\\u043e\\u043f\\u0440\\u0430\\u043f\\u0440\\u0430\\u043f\\u0440\\u0430\\u043f\\u0440\\u0430\\u043f\\u0440<\\/b><\\/i>\",\"square\":\"10\",\"depth\":\"10\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"fishes\":[null],\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\\/8\\/edit\"}', '2022-01-19 14:37:23', '2022-01-19 14:37:23'),
(761, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:38:00', '2022-01-19 14:38:00'),
(762, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:38:01', '2022-01-19 14:38:01'),
(763, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:38:04', '2022-01-19 14:38:04'),
(764, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:38:07', '2022-01-19 14:38:07'),
(765, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:38:18', '2022-01-19 14:38:18'),
(766, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:38:19', '2022-01-19 14:38:19'),
(767, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:38:24', '2022-01-19 14:38:24'),
(768, 1, 'admin/locations/8', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:40:40', '2022-01-19 14:40:40'),
(769, 1, 'admin/locations/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:40:43', '2022-01-19 14:40:43'),
(770, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:40:53', '2022-01-19 14:40:53'),
(771, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:40:57', '2022-01-19 14:40:57'),
(772, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:40:59', '2022-01-19 14:40:59'),
(773, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"8\",\"_model\":\"App_Models_Location\",\"_token\":\"IpM4ScrQK5AmCOEasB5GhKGScF6dulqppruPoNDX\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-19 14:41:17', '2022-01-19 14:41:17'),
(774, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:41:18', '2022-01-19 14:41:18'),
(775, 1, 'admin/locations/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:41:43', '2022-01-19 14:41:43'),
(776, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:41:45', '2022-01-19 14:41:45'),
(777, 1, 'admin/locations/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:41:47', '2022-01-19 14:41:47'),
(778, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:42:56', '2022-01-19 14:42:56'),
(779, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:42:58', '2022-01-19 14:42:58'),
(780, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:43:01', '2022-01-19 14:43:01'),
(781, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:43:02', '2022-01-19 14:43:02'),
(782, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-19 14:43:06', '2022-01-19 14:43:06'),
(783, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 06:15:57', '2022-01-20 06:15:57'),
(784, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:16:11', '2022-01-20 06:16:11'),
(785, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:16:15', '2022-01-20 06:16:15'),
(786, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:16:18', '2022-01-20 06:16:18'),
(787, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:16:20', '2022-01-20 06:16:20'),
(788, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:16:21', '2022-01-20 06:16:21'),
(789, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:16:24', '2022-01-20 06:16:24'),
(790, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 06:31:04', '2022-01-20 06:31:04'),
(791, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:31:07', '2022-01-20 06:31:07'),
(792, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:31:09', '2022-01-20 06:31:09'),
(793, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:31:47', '2022-01-20 06:31:47'),
(794, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:31:50', '2022-01-20 06:31:50'),
(795, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:31:54', '2022-01-20 06:31:54'),
(796, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\\/\\u0410\\u043c\\u0443\\u0440\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:31:55', '2022-01-20 06:31:55'),
(797, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:31:57', '2022-01-20 06:31:57'),
(798, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\\/\\u0412\\u043e\\u0431\\u043b\\u0430\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:31:58', '2022-01-20 06:31:58'),
(799, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:32:01', '2022-01-20 06:32:01'),
(800, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\\/\\u0422\\u0430\\u0439\\u043c\\u0435\\u043d\\u044c\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:32:04', '2022-01-20 06:32:04'),
(801, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:32:06', '2022-01-20 06:32:06'),
(802, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:32:16', '2022-01-20 06:32:16'),
(803, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:32:22', '2022-01-20 06:32:22'),
(804, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0415\\u0440\\u0438\\u043a\",\"description\":null,\"square\":\"0\",\"depth\":\"0\",\"subject\":\"\\u0421\\u043c\\u043e\\u043b\\u0435\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"fishes\":[null],\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 06:32:37', '2022-01-20 06:32:37'),
(805, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:35:17', '2022-01-20 06:35:17'),
(806, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"q\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0415\\u0440\\u0438\\u043a\",\"description\":null,\"square\":null,\"depth\":null,\"subject\":\"\\u0421\\u0430\\u043c\\u0430\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"fishes\":[null],\"coorX\":\"48.6458\",\"coorY\":\"45.4656\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 06:35:29', '2022-01-20 06:35:29'),
(807, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:35:37', '2022-01-20 06:35:37'),
(808, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 06:36:29', '2022-01-20 06:36:29'),
(809, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 06:37:49', '2022-01-20 06:37:49'),
(810, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 06:39:42', '2022-01-20 06:39:42'),
(811, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"_file_sort_\":{\"imgs\":null},\"type\":\"\\u0417\\u0430\\u0442\\u043e\\u043d\",\"description\":null,\"square\":null,\"depth\":null,\"subject\":\"\\u041f\\u0441\\u043a\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"isRed\":\"off\",\"fishes\":[null],\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 06:42:09', '2022-01-20 06:42:09'),
(812, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:59:13', '2022-01-20 06:59:13'),
(813, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:59:14', '2022-01-20 06:59:14'),
(814, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 06:59:17', '2022-01-20 06:59:17'),
(815, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 06:59:24', '2022-01-20 06:59:24'),
(816, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:00:14', '2022-01-20 07:00:14'),
(817, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:00:33', '2022-01-20 07:00:33'),
(818, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:00:34', '2022-01-20 07:00:34'),
(819, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:00:55', '2022-01-20 07:00:55'),
(820, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:01:03', '2022-01-20 07:01:03'),
(821, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:01:49', '2022-01-20 07:01:49'),
(822, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:02:28', '2022-01-20 07:02:28'),
(823, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:02:41', '2022-01-20 07:02:41'),
(824, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0415\\u0440\\u0438\\u043a\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_file_sort_\":{\"imgs\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:03:06', '2022-01-20 07:03:06'),
(825, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:05:51', '2022-01-20 07:05:51'),
(826, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_file_sort_\":{\"imgs\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:05:58', '2022-01-20 07:05:58'),
(827, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:06:01', '2022-01-20 07:06:01'),
(828, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0415\\u0440\\u0438\\u043a\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_file_sort_\":{\"imgs\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:06:36', '2022-01-20 07:06:36'),
(829, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:06:38', '2022-01-20 07:06:38'),
(830, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:06:45', '2022-01-20 07:06:45'),
(831, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:07:21', '2022-01-20 07:07:21'),
(832, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:07:38', '2022-01-20 07:07:38'),
(833, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:07:39', '2022-01-20 07:07:39'),
(834, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:07:40', '2022-01-20 07:07:40'),
(835, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 07:16:23', '2022-01-20 07:16:23'),
(836, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:16:26', '2022-01-20 07:16:26'),
(837, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:16:29', '2022-01-20 07:16:29'),
(838, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:23:10', '2022-01-20 07:23:10'),
(839, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:23:27', '2022-01-20 07:23:27'),
(840, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"union\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:23:51', '2022-01-20 07:23:51'),
(841, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:24:27', '2022-01-20 07:24:27'),
(842, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"union\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:24:38', '2022-01-20 07:24:38'),
(843, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:24:38', '2022-01-20 07:24:38'),
(844, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"union\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:25:05', '2022-01-20 07:25:05'),
(845, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:33:40', '2022-01-20 07:33:40'),
(846, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u041a\\u0430\\u043b\\u0443\\u0436\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:33:57', '2022-01-20 07:33:57'),
(847, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:34:07', '2022-01-20 07:34:07'),
(848, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:34:18', '2022-01-20 07:34:18'),
(849, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 07:34:18', '2022-01-20 07:34:18'),
(850, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 07:39:54', '2022-01-20 07:39:54'),
(851, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 07:39:55', '2022-01-20 07:39:55'),
(852, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 07:39:57', '2022-01-20 07:39:57'),
(853, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:40:01', '2022-01-20 07:40:01'),
(854, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[\"\\u0410\\u043c\\u0443\\u0440\",\"\\u0411\\u0435\\u0440\\u0448\",\"\\u0412\\u043e\\u0431\\u043b\\u0430\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:40:15', '2022-01-20 07:40:15'),
(855, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:41:15', '2022-01-20 07:41:15'),
(856, 1, 'admin/water_types/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:41:16', '2022-01-20 07:41:16'),
(857, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:41:18', '2022-01-20 07:41:18'),
(858, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:41:19', '2022-01-20 07:41:19'),
(859, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0417\\u0430\\u0442\\u043e\\u043d\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[\"\\u0410\\u043c\\u0443\\u0440\",\"\\u0411\\u0435\\u0440\\u0448\",\"\\u0427\\u0435\\u0445\\u043e\\u043d\\u044c\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:41:42', '2022-01-20 07:41:42'),
(860, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:41:51', '2022-01-20 07:41:51'),
(861, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u041a\\u0430\\u043b\\u0443\\u0436\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 07:42:02', '2022-01-20 07:42:02'),
(862, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 07:42:07', '2022-01-20 07:42:07'),
(863, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:42:09', '2022-01-20 07:42:09'),
(864, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:42:15', '2022-01-20 07:42:15'),
(865, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 07:42:29', '2022-01-20 07:42:29'),
(866, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:42:31', '2022-01-20 07:42:31'),
(867, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:42:36', '2022-01-20 07:42:36'),
(868, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 07:44:38', '2022-01-20 07:44:38'),
(869, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:44:40', '2022-01-20 07:44:40'),
(870, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"qwerty\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:44:55', '2022-01-20 07:44:55'),
(871, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:44:55', '2022-01-20 07:44:55'),
(872, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 07:45:22', '2022-01-20 07:45:22'),
(873, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"union\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:45:27', '2022-01-20 07:45:27'),
(874, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 07:56:35', '2022-01-20 07:56:35'),
(875, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 07:56:36', '2022-01-20 07:56:36'),
(876, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 07:56:37', '2022-01-20 07:56:37'),
(877, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:56:39', '2022-01-20 07:56:39'),
(878, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"union\",\"type\":\"\\u0412\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[\"\\u0410\\u043c\\u0443\\u0440\",\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"\\u0412\\u043e\\u0431\\u043b\\u0430\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:56:58', '2022-01-20 07:56:58'),
(879, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 07:56:59', '2022-01-20 07:56:59'),
(880, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 07:57:09', '2022-01-20 07:57:09'),
(881, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"union\",\"type\":\"\\u0415\\u0440\\u0438\\u043a\",\"subject\":\"\\u041a\\u0430\\u043b\\u0438\\u043d\\u0438\\u043d\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.8121\",\"coorY\":\"44.7655\",\"isRed\":\"off\",\"description\":null,\"square\":null,\"depth\":null,\"fishes\":[null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 07:57:16', '2022-01-20 07:57:16'),
(882, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 07:57:17', '2022-01-20 07:57:17'),
(883, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 08:11:13', '2022-01-20 08:11:13'),
(884, 1, 'admin/locations/12,13', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 08:11:25', '2022-01-20 08:11:25'),
(885, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:11:25', '2022-01-20 08:11:25'),
(886, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 08:11:27', '2022-01-20 08:11:27'),
(887, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2022-01-20 08:11:48', '2022-01-20 08:11:48'),
(888, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2022-01-20 08:12:07', '2022-01-20 08:12:07'),
(889, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:12:09', '2022-01-20 08:12:09'),
(890, 1, 'admin/locations', 'POST', '127.0.0.1', '{\"name\":\"\\u043e\\u0437\\u0435\\u0440\\u043e \\u0411\\u0430\\u0441\\u043a\\u0443\\u043d\\u0447\\u0430\\u043a\",\"type\":\"\\u041e\\u0437\\u0435\\u0440\\u043e\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.18693101718213\",\"coorY\":\"46.873501708983156\",\"isRed\":\"off\",\"description\":\"\\u0417\\u0434\\u0435\\u0441\\u044c \\u0438\\u0434\\u0435\\u0442 \\u0434\\u043b\\u0438\\u043d\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\",\"square\":\"10\",\"depth\":\"10\",\"fishes\":[\"\\u0413\\u043e\\u0440\\u0431\\u0443\\u0448\\u0430\",\"\\u041e\\u043a\\u0443\\u043d\\u044c\",\"\\u0427\\u0435\\u0445\\u043e\\u043d\\u044c\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 08:15:21', '2022-01-20 08:15:21'),
(891, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 08:15:22', '2022-01-20 08:15:22'),
(892, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 08:17:33', '2022-01-20 08:17:33'),
(893, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:17:38', '2022-01-20 08:17:38'),
(894, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:17:49', '2022-01-20 08:17:49'),
(895, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:18:14', '2022-01-20 08:18:14'),
(896, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:19:48', '2022-01-20 08:19:48'),
(897, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:19:53', '2022-01-20 08:19:53'),
(898, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:21:00', '2022-01-20 08:21:00'),
(899, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:21:03', '2022-01-20 08:21:03'),
(900, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:21:53', '2022-01-20 08:21:53'),
(901, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:22:02', '2022-01-20 08:22:02'),
(902, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:22:50', '2022-01-20 08:22:50'),
(903, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:22:53', '2022-01-20 08:22:53'),
(904, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:24:16', '2022-01-20 08:24:16'),
(905, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:24:22', '2022-01-20 08:24:22'),
(906, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:24:29', '2022-01-20 08:24:29'),
(907, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:24:34', '2022-01-20 08:24:34'),
(908, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:26:12', '2022-01-20 08:26:12'),
(909, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:26:24', '2022-01-20 08:26:24'),
(910, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:28:10', '2022-01-20 08:28:10'),
(911, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:28:12', '2022-01-20 08:28:12'),
(912, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:56:14', '2022-01-20 08:56:14'),
(913, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 08:59:04', '2022-01-20 08:59:04'),
(914, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:59:07', '2022-01-20 08:59:07');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(915, 1, 'admin/locations/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u0440\\u0435\\u043a\\u0430 \\u0412\\u043e\\u043b\\u0433\\u04302\",\"type\":\"\\u0420\\u0435\\u043a\\u0430\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.878\",\"coorY\":\"44.6995\",\"isRed\":\"off\",\"description\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0301\\u0434\\u0441\\u043a\\u043e\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u0301\\u043b\\u0438\\u0449\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u043e \\u043f\\u043b\\u043e\\u0442\\u0438\\u043d\\u043e\\u0439 \\u0412\\u043e\\u043b\\u0436\\u0441\\u043a\\u043e\\u0439 \\u0413\\u042d\\u0421 \\u0438\\u043c. 22-\\u0433\\u043e \\u0441\\u044a\\u0435\\u0437\\u0434\\u0430 \\u041a\\u041f\\u0421\\u0421 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435, \\u043d\\u0430 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0438 \\u0421\\u0430\\u0440\\u0430\\u0442\\u043e\\u0432\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0435\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438. \\u0417\\u0430\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0430 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u043b\\u043e \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 1958\\u20141961 \\u0433\\u043e\\u0434\\u043e\\u0432.\\r\\n            \\u041f\\u043b\\u043e\\u0449\\u0430\\u0434\\u044c \\u2014 3117 \\u043a\\u043c\\u00b2, \\u043e\\u0431\\u044a\\u0451\\u043c \\u2014 31,5 \\u043a\\u043c\\u00b3, \\u0434\\u043b\\u0438\\u043d\\u0430 \\u2014 540 \\u043a\\u043c, \\u043d\\u0430\\u0438\\u0431\\u043e\\u043b\\u044c\\u0448\\u0430\\u044f \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 \\u2014 17 \\u043a\\u043c, \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430 \\u2014 10,1 \\u043c. \\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430 41 \\u043c[2]. \\u041f\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043f\\u043b\\u043e\\u0449\\u0430\\u0434\\u0438 \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435 \\u0443\\u0441\\u0442\\u0443\\u043f\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u041a\\u0443\\u0439\\u0431\\u044b\\u0448\\u0435\\u0432\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0438 \\u0420\\u044b\\u0431\\u0438\\u043d\\u0441\\u043a\\u043e\\u043c\\u0443.\\r\\n            \\u041e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0441\\u0435\\u0437\\u043e\\u043d\\u043d\\u043e\\u0435 \\u0440\\u0435\\u0433\\u0443\\u043b\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0442\\u043e\\u043a\\u0430 (\\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f \\u0434\\u043e 3 \\u043c). \\u0418\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0446\\u0435\\u043b\\u044f\\u0445 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u043a\\u0438, \\u0432\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0442\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442\\u0430, \\u0438\\u0440\\u0440\\u0438\\u0433\\u0430\\u0446\\u0438\\u0438 \\u0438 \\u0432\\u043e\\u0434\\u043e\\u0441\\u043d\\u0430\\u0431\\u0436\\u0435\\u043d\\u0438\\u044f. \\u0420\\u044b\\u0431\\u043e\\u043b\\u043e\\u0432\\u0441\\u0442\\u0432\\u043e (\\u043b\\u0435\\u0449, \\u0441\\u0443\\u0434\\u0430\\u043a, \\u0441\\u0430\\u0437\\u0430\\u043d). \\u041d\\u0430 \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u0445 \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0430 \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u044b \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0421\\u0430\\u0440\\u0430\\u0442\\u043e\\u0432, \\u042d\\u043d\\u0433\\u0435\\u043b\\u044c\\u0441, \\u041a\\u0430\\u043c\\u044b\\u0448\\u0438\\u043d, \\u0414\\u0443\\u0431\\u043e\\u0432\\u043a\\u0430, \\u0412\\u043e\\u043b\\u044c\\u0441\\u043a, \\u041c\\u0430\\u0440\\u043a\\u0441.\\r\\n            \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435 \\u2014 \\u043e\\u0447\\u0435\\u043d\\u044c \\u0432\\u0430\\u0436\\u043d\\u044b\\u0439 \\u0440\\u0435\\u043a\\u0440\\u0435\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0441\\u0443\\u0440\\u0441, \\u043c\\u0435\\u0441\\u0442\\u043e \\u0442\\u0443\\u0440\\u0438\\u0437\\u043c\\u0430 \\u0438 \\u043e\\u0442\\u0434\\u044b\\u0445\\u0430. \\u0412 \\u043f\\u043b\\u043e\\u0442\\u0438\\u043d\\u0435 \\u0412\\u043e\\u043b\\u0436\\u0441\\u043a\\u043e\\u0439 \\u0413\\u042d\\u0421 \\u044d\\u043a\\u0441\\u043f\\u043b\\u0443\\u0430\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u0438\\u043d \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u0432 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 \\u0440\\u044b\\u0431\\u043e\\u043f\\u043e\\u0434\\u044a\\u0451\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432. \\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0435 \\u043f\\u043e\\u0440\\u0442\\u044b: \\u0421\\u0430\\u0440\\u0430\\u0442\\u043e\\u0432, \\u041a\\u0430\\u043c\\u044b\\u0448\\u0438\\u043d, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a, \\u0411\\u044b\\u043a\\u043e\\u0432\\u043e, \\u041f\\u0440\\u0438\\u043c\\u043e\\u0440\\u0441\\u043a, \\u0414\\u0443\\u0431\\u043e\\u0432\\u043a\\u0430.\\r\\n            \\u0412 1980-\\u0445 \\u0433\\u043e\\u0434\\u0430\\u0445 \\u0431\\u044b\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0435\\u0440\\u043d\\u0443\\u0442\\u043e \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u043e \\u043a\\u0430\\u043d\\u0430\\u043b\\u0430 \\u0412\\u043e\\u043b\\u0433\\u043e-\\u0414\\u043e\\u043d 2, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0431\\u044b \\u043d\\u0430\\u043f\\u0440\\u044f\\u043c\\u0443\\u044e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u044f\\u043b \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435 \\u0441 \\u0440\\u0435\\u043a\\u043e\\u0439 \\u0414\\u043e\\u043d. (\\u0412 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0435\\u0433\\u043e \\u0412\\u043e\\u043b\\u0433\\u043e-\\u0414\\u043e\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u0430\\u043d\\u0430\\u043b\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a \\u044e\\u0433\\u0443 \\u043e\\u0442 \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0430, \\u043d\\u0438\\u0436\\u0435 \\u043f\\u043e \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u044e \\u043e\\u0442 \\u0412\\u043e\\u043b\\u0436\\u0441\\u043a\\u043e\\u0439 \\u0413\\u042d\\u0421.) \\u041f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u0431\\u044b\\u043b \\u0437\\u0430\\u043a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u0432 1990 \\u0433\\u043e\\u0434\\u0443.\",\"square\":\"3530\",\"depth\":\"10\",\"fishes\":[\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"\\u0411\\u0435\\u0440\\u0448\",\"\\u0412\\u043e\\u0431\\u043b\\u0430\",\"\\u0413\\u043e\\u0440\\u0431\\u0443\\u0448\\u0430\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 08:59:24', '2022-01-20 08:59:24'),
(916, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 08:59:24', '2022-01-20 08:59:24'),
(917, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 08:59:30', '2022-01-20 08:59:30'),
(918, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:59:32', '2022-01-20 08:59:32'),
(919, 1, 'admin/locations/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u0440\\u0435\\u043a\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0430\",\"type\":\"\\u0420\\u0435\\u043a\\u0430\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.878\",\"coorY\":\"44.6995\",\"isRed\":\"off\",\"description\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0301\\u0434\\u0441\\u043a\\u043e\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u0301\\u043b\\u0438\\u0449\\u0435 \\u043e\\u0431\\u0440\\u0430\\u0437\\u043e\\u0432\\u0430\\u043d\\u043e \\u043f\\u043b\\u043e\\u0442\\u0438\\u043d\\u043e\\u0439 \\u0412\\u043e\\u043b\\u0436\\u0441\\u043a\\u043e\\u0439 \\u0413\\u042d\\u0421 \\u0438\\u043c. 22-\\u0433\\u043e \\u0441\\u044a\\u0435\\u0437\\u0434\\u0430 \\u041a\\u041f\\u0421\\u0421 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435, \\u043d\\u0430 \\u0442\\u0435\\u0440\\u0440\\u0438\\u0442\\u043e\\u0440\\u0438\\u0438 \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0438 \\u0421\\u0430\\u0440\\u0430\\u0442\\u043e\\u0432\\u0441\\u043a\\u043e\\u0439 \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u0435\\u0439 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438. \\u0417\\u0430\\u043f\\u043e\\u043b\\u043d\\u0435\\u043d\\u0438\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0430 \\u043f\\u0440\\u043e\\u0438\\u0441\\u0445\\u043e\\u0434\\u0438\\u043b\\u043e \\u0432 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 1958\\u20141961 \\u0433\\u043e\\u0434\\u043e\\u0432.\\r\\n            \\u041f\\u043b\\u043e\\u0449\\u0430\\u0434\\u044c \\u2014 3117 \\u043a\\u043c\\u00b2, \\u043e\\u0431\\u044a\\u0451\\u043c \\u2014 31,5 \\u043a\\u043c\\u00b3, \\u0434\\u043b\\u0438\\u043d\\u0430 \\u2014 540 \\u043a\\u043c, \\u043d\\u0430\\u0438\\u0431\\u043e\\u043b\\u044c\\u0448\\u0430\\u044f \\u0448\\u0438\\u0440\\u0438\\u043d\\u0430 \\u2014 17 \\u043a\\u043c, \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430 \\u2014 10,1 \\u043c. \\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u0430\\u044f \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430 41 \\u043c[2]. \\u041f\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u043f\\u043b\\u043e\\u0449\\u0430\\u0434\\u0438 \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435 \\u0443\\u0441\\u0442\\u0443\\u043f\\u0430\\u0435\\u0442 \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u041a\\u0443\\u0439\\u0431\\u044b\\u0448\\u0435\\u0432\\u0441\\u043a\\u043e\\u043c\\u0443 \\u0438 \\u0420\\u044b\\u0431\\u0438\\u043d\\u0441\\u043a\\u043e\\u043c\\u0443.\\r\\n            \\u041e\\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u043b\\u044f\\u0435\\u0442 \\u0441\\u0435\\u0437\\u043e\\u043d\\u043d\\u043e\\u0435 \\u0440\\u0435\\u0433\\u0443\\u043b\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0441\\u0442\\u043e\\u043a\\u0430 (\\u043a\\u043e\\u043b\\u0435\\u0431\\u0430\\u043d\\u0438\\u044f \\u0443\\u0440\\u043e\\u0432\\u043d\\u044f \\u0434\\u043e 3 \\u043c). \\u0418\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0446\\u0435\\u043b\\u044f\\u0445 \\u044d\\u043d\\u0435\\u0440\\u0433\\u0435\\u0442\\u0438\\u043a\\u0438, \\u0432\\u043e\\u0434\\u043d\\u043e\\u0433\\u043e \\u0442\\u0440\\u0430\\u043d\\u0441\\u043f\\u043e\\u0440\\u0442\\u0430, \\u0438\\u0440\\u0440\\u0438\\u0433\\u0430\\u0446\\u0438\\u0438 \\u0438 \\u0432\\u043e\\u0434\\u043e\\u0441\\u043d\\u0430\\u0431\\u0436\\u0435\\u043d\\u0438\\u044f. \\u0420\\u044b\\u0431\\u043e\\u043b\\u043e\\u0432\\u0441\\u0442\\u0432\\u043e (\\u043b\\u0435\\u0449, \\u0441\\u0443\\u0434\\u0430\\u043a, \\u0441\\u0430\\u0437\\u0430\\u043d). \\u041d\\u0430 \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u0445 \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0433\\u043e \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0430 \\u0440\\u0430\\u0441\\u043f\\u043e\\u043b\\u043e\\u0436\\u0435\\u043d\\u044b \\u0433\\u043e\\u0440\\u043e\\u0434\\u0430 \\u0421\\u0430\\u0440\\u0430\\u0442\\u043e\\u0432, \\u042d\\u043d\\u0433\\u0435\\u043b\\u044c\\u0441, \\u041a\\u0430\\u043c\\u044b\\u0448\\u0438\\u043d, \\u0414\\u0443\\u0431\\u043e\\u0432\\u043a\\u0430, \\u0412\\u043e\\u043b\\u044c\\u0441\\u043a, \\u041c\\u0430\\u0440\\u043a\\u0441.\\r\\n            \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435 \\u2014 \\u043e\\u0447\\u0435\\u043d\\u044c \\u0432\\u0430\\u0436\\u043d\\u044b\\u0439 \\u0440\\u0435\\u043a\\u0440\\u0435\\u0430\\u0446\\u0438\\u043e\\u043d\\u043d\\u044b\\u0439 \\u0440\\u0435\\u0441\\u0443\\u0440\\u0441, \\u043c\\u0435\\u0441\\u0442\\u043e \\u0442\\u0443\\u0440\\u0438\\u0437\\u043c\\u0430 \\u0438 \\u043e\\u0442\\u0434\\u044b\\u0445\\u0430. \\u0412 \\u043f\\u043b\\u043e\\u0442\\u0438\\u043d\\u0435 \\u0412\\u043e\\u043b\\u0436\\u0441\\u043a\\u043e\\u0439 \\u0413\\u042d\\u0421 \\u044d\\u043a\\u0441\\u043f\\u043b\\u0443\\u0430\\u0442\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0434\\u0438\\u043d \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u0432 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438 \\u0440\\u044b\\u0431\\u043e\\u043f\\u043e\\u0434\\u044a\\u0451\\u043c\\u043d\\u0438\\u043a\\u043e\\u0432. \\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u044b\\u0435 \\u043f\\u043e\\u0440\\u0442\\u044b: \\u0421\\u0430\\u0440\\u0430\\u0442\\u043e\\u0432, \\u041a\\u0430\\u043c\\u044b\\u0448\\u0438\\u043d, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a, \\u0411\\u044b\\u043a\\u043e\\u0432\\u043e, \\u041f\\u0440\\u0438\\u043c\\u043e\\u0440\\u0441\\u043a, \\u0414\\u0443\\u0431\\u043e\\u0432\\u043a\\u0430.\\r\\n            \\u0412 1980-\\u0445 \\u0433\\u043e\\u0434\\u0430\\u0445 \\u0431\\u044b\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0435\\u0440\\u043d\\u0443\\u0442\\u043e \\u0441\\u0442\\u0440\\u043e\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u0442\\u0432\\u043e \\u043a\\u0430\\u043d\\u0430\\u043b\\u0430 \\u0412\\u043e\\u043b\\u0433\\u043e-\\u0414\\u043e\\u043d 2, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u0431\\u044b \\u043d\\u0430\\u043f\\u0440\\u044f\\u043c\\u0443\\u044e \\u0441\\u043e\\u0435\\u0434\\u0438\\u043d\\u044f\\u043b \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u043e\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0445\\u0440\\u0430\\u043d\\u0438\\u043b\\u0438\\u0449\\u0435 \\u0441 \\u0440\\u0435\\u043a\\u043e\\u0439 \\u0414\\u043e\\u043d. (\\u0412 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u0441\\u0443\\u0449\\u0435\\u0441\\u0442\\u0432\\u0443\\u044e\\u0449\\u0435\\u0433\\u043e \\u0412\\u043e\\u043b\\u0433\\u043e-\\u0414\\u043e\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u043a\\u0430\\u043d\\u0430\\u043b\\u0430, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u043a \\u044e\\u0433\\u0443 \\u043e\\u0442 \\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0430, \\u043d\\u0438\\u0436\\u0435 \\u043f\\u043e \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u044e \\u043e\\u0442 \\u0412\\u043e\\u043b\\u0436\\u0441\\u043a\\u043e\\u0439 \\u0413\\u042d\\u0421.) \\u041f\\u0440\\u043e\\u0435\\u043a\\u0442 \\u0431\\u044b\\u043b \\u0437\\u0430\\u043a\\u043e\\u043d\\u0441\\u0435\\u0440\\u0432\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d \\u0432 1990 \\u0433\\u043e\\u0434\\u0443.\",\"square\":\"3530\",\"depth\":\"10\",\"fishes\":[\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"\\u0411\\u0435\\u0440\\u0448\",\"\\u0412\\u043e\\u0431\\u043b\\u0430\",\"\\u0413\\u043e\\u0440\\u0431\\u0443\\u0448\\u0430\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 08:59:38', '2022-01-20 08:59:38'),
(920, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 08:59:38', '2022-01-20 08:59:38'),
(921, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:59:48', '2022-01-20 08:59:48'),
(922, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:59:53', '2022-01-20 08:59:53'),
(923, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 08:59:55', '2022-01-20 08:59:55'),
(924, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 09:00:17', '2022-01-20 09:00:17'),
(925, 1, 'admin/locations/14', 'PUT', '127.0.0.1', '{\"name\":\"\\u043e\\u0437\\u0435\\u0440\\u043e \\u0411\\u0430\\u0441\\u043a\\u0443\\u043d\\u0447\\u0430\\u043a\",\"type\":\"\\u041e\\u0437\\u0435\\u0440\\u043e\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.1869\",\"coorY\":\"46.8735\",\"isRed\":\"off\",\"description\":\"\\u0417\\u0434\\u0435\\u0441\\u044c \\u0438\\u0434\\u0435\\u0442 \\u0434\\u043b\\u0438\\u043d\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\",\"square\":\"10\",\"depth\":\"10\",\"fishes\":[\"\\u0413\\u043e\\u0440\\u0431\\u0443\\u0448\\u0430\",\"\\u041e\\u043a\\u0443\\u043d\\u044c\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\\/create\"}', '2022-01-20 09:00:34', '2022-01-20 09:00:34'),
(926, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 09:00:34', '2022-01-20 09:00:34'),
(927, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:00:44', '2022-01-20 09:00:44'),
(928, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 09:00:48', '2022-01-20 09:00:48'),
(929, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:01:22', '2022-01-20 09:01:22'),
(930, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:01:24', '2022-01-20 09:01:24'),
(931, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:01:28', '2022-01-20 09:01:28'),
(932, 1, 'admin/locations/14', 'PUT', '127.0.0.1', '{\"name\":\"\\u043e\\u0437\\u0435\\u0440\\u043e \\u0411\\u0430\\u0441\\u043a\\u0443\\u043d\\u0447\\u0430\\u043a\",\"type\":\"\\u041e\\u0437\\u0435\\u0440\\u043e\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.1869\",\"coorY\":\"46.8735\",\"isRed\":\"off\",\"description\":\"\\u0417\\u0434\\u0435\\u0441\\u044c \\u0438\\u0434\\u0435\\u0442 \\u0434\\u043b\\u0438\\u043d\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\",\"square\":\"10\",\"depth\":\"10\",\"fishes\":[\"\\u0411\\u0435\\u0440\\u0448\",\"\\u0413\\u043e\\u0440\\u0431\\u0443\\u0448\\u0430\",\"\\u041e\\u043a\\u0443\\u043d\\u044c\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 09:01:36', '2022-01-20 09:01:36'),
(933, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 09:01:37', '2022-01-20 09:01:37'),
(934, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:01:54', '2022-01-20 09:01:54'),
(935, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:01:57', '2022-01-20 09:01:57'),
(936, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:02:07', '2022-01-20 09:02:07'),
(937, 1, 'admin/locations/14', 'PUT', '127.0.0.1', '{\"name\":\"\\u043e\\u0437\\u0435\\u0440\\u043e \\u0411\\u0430\\u0441\\u043a\\u0443\\u043d\\u0447\\u0430\\u043a\",\"type\":\"\\u041e\\u0437\\u0435\\u0440\\u043e\",\"subject\":\"\\u0412\\u043e\\u043b\\u0433\\u043e\\u0433\\u0440\\u0430\\u0434\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b.\",\"coorX\":\"48.1869\",\"coorY\":\"46.8735\",\"isRed\":\"off\",\"description\":\"\\u0417\\u0434\\u0435\\u0441\\u044c \\u0438\\u0434\\u0435\\u0442 \\u0434\\u043b\\u0438\\u043d\\u043d\\u043e\\u0435 \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\",\"square\":\"10\",\"depth\":\"10\",\"fishes\":[\"\\u0411\\u0435\\u0440\\u0448\",\"\\u0413\\u043e\\u0440\\u0431\\u0443\\u0448\\u0430\",\"\\u041e\\u043a\\u0443\\u043d\\u044c\",null],\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/locations\"}', '2022-01-20 09:02:18', '2022-01-20 09:02:18'),
(938, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 09:02:18', '2022-01-20 09:02:18'),
(939, 1, 'admin/locations/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:03:04', '2022-01-20 09:03:04'),
(940, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:03:09', '2022-01-20 09:03:09'),
(941, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"14\",\"_model\":\"App_Models_Location\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 09:03:27', '2022-01-20 09:03:27'),
(942, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"14\",\"_model\":\"App_Models_Location\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 09:04:19', '2022-01-20 09:04:19'),
(943, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:04:19', '2022-01-20 09:04:19'),
(944, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:06:06', '2022-01-20 09:06:06'),
(945, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:06:21', '2022-01-20 09:06:21'),
(946, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:08:28', '2022-01-20 09:08:28'),
(947, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:08:33', '2022-01-20 09:08:33'),
(948, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:08:36', '2022-01-20 09:08:36'),
(949, 1, 'admin/locations/create', 'GET', '127.0.0.1', '[]', '2022-01-20 09:11:19', '2022-01-20 09:11:19'),
(950, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:11:41', '2022-01-20 09:11:41'),
(951, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:11:44', '2022-01-20 09:11:44'),
(952, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:11:52', '2022-01-20 09:11:52'),
(953, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:16:03', '2022-01-20 09:16:03'),
(954, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:16:28', '2022-01-20 09:16:28'),
(955, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:18:20', '2022-01-20 09:18:20'),
(956, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:18:34', '2022-01-20 09:18:34'),
(957, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:20:25', '2022-01-20 09:20:25'),
(958, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:22:25', '2022-01-20 09:22:25'),
(959, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:23:23', '2022-01-20 09:23:23'),
(960, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:23:27', '2022-01-20 09:23:27'),
(961, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:23:38', '2022-01-20 09:23:38'),
(962, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:23:40', '2022-01-20 09:23:40'),
(963, 1, 'admin/locations', 'GET', '127.0.0.1', '[]', '2022-01-20 09:25:20', '2022-01-20 09:25:20'),
(964, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:25:32', '2022-01-20 09:25:32'),
(965, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:25:56', '2022-01-20 09:25:56'),
(966, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:26:30', '2022-01-20 09:26:30'),
(967, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_export_\":\"all\",\"location_id\":\"1\"}', '2022-01-20 09:26:53', '2022-01-20 09:26:53'),
(968, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:27:20', '2022-01-20 09:27:20'),
(969, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:27:34', '2022-01-20 09:27:34'),
(970, 1, 'admin/locations/1', 'GET', '127.0.0.1', '[]', '2022-01-20 09:27:48', '2022-01-20 09:27:48'),
(971, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:28:08', '2022-01-20 09:28:08'),
(972, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:28:14', '2022-01-20 09:28:14'),
(973, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:00', '2022-01-20 09:29:00'),
(974, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:02', '2022-01-20 09:29:02'),
(975, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:08', '2022-01-20 09:29:08'),
(976, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:10', '2022-01-20 09:29:10'),
(977, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:13', '2022-01-20 09:29:13'),
(978, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:17', '2022-01-20 09:29:17'),
(979, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:31', '2022-01-20 09:29:31'),
(980, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:33', '2022-01-20 09:29:33'),
(981, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:35', '2022-01-20 09:29:35'),
(982, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:39', '2022-01-20 09:29:39'),
(983, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:41', '2022-01-20 09:29:41'),
(984, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:43', '2022-01-20 09:29:43'),
(985, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\\/\\u043e\\u0437\\u0435\\u0440\\u043e \\u0411\\u0430\\u0441\\u043a\\u0443\\u043d\\u0447\\u0430\\u043a\",\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:45', '2022-01-20 09:29:45'),
(986, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:48', '2022-01-20 09:29:48'),
(987, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:52', '2022-01-20 09:29:52'),
(988, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:58', '2022-01-20 09:29:58'),
(989, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:29:59', '2022-01-20 09:29:59'),
(990, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:30:04', '2022-01-20 09:30:04'),
(991, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 09:31:56', '2022-01-20 09:31:56'),
(992, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:32:00', '2022-01-20 09:32:00'),
(993, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:32:01', '2022-01-20 09:32:01'),
(994, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:32:03', '2022-01-20 09:32:03'),
(995, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:35:51', '2022-01-20 09:35:51'),
(996, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0420\\u044b\\u0431\\u044b\",\"icon\":\"fab fa-accessible-icon\",\"uri\":\"fishes\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 09:37:13', '2022-01-20 09:37:13'),
(997, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-20 09:37:13', '2022-01-20 09:37:13'),
(998, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:37:17', '2022-01-20 09:37:17'),
(999, 1, 'admin/auth/menu/19', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u0420\\u044b\\u0431\\u044b\",\"icon\":\"fa-anchor\",\"uri\":\"fishes\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/auth\\/menu\"}', '2022-01-20 09:40:21', '2022-01-20 09:40:21'),
(1000, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-20 09:40:21', '2022-01-20 09:40:21'),
(1001, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-20 09:40:24', '2022-01-20 09:40:24'),
(1002, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_order\":\"[{\\\"id\\\":9},{\\\"id\\\":19},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":12},{\\\"id\\\":11},{\\\"id\\\":13}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8},{\\\"id\\\":14,\\\"children\\\":[{\\\"id\\\":15},{\\\"id\\\":16},{\\\"id\\\":17},{\\\"id\\\":18}]}]\"}', '2022-01-20 09:40:31', '2022-01-20 09:40:31'),
(1003, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:40:31', '2022-01-20 09:40:31'),
(1004, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-01-20 09:40:36', '2022-01-20 09:40:36'),
(1005, 1, 'admin/auth/menu/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:42:11', '2022-01-20 09:42:11'),
(1006, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:42:14', '2022-01-20 09:42:14'),
(1007, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:42:22', '2022-01-20 09:42:22'),
(1008, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 09:43:02', '2022-01-20 09:43:02'),
(1009, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 09:45:07', '2022-01-20 09:45:07'),
(1010, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 09:46:36', '2022-01-20 09:46:36'),
(1011, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 09:49:05', '2022-01-20 09:49:05'),
(1012, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 09:50:30', '2022-01-20 09:50:30'),
(1013, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:52:52', '2022-01-20 09:52:52'),
(1014, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:53:01', '2022-01-20 09:53:01'),
(1015, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:53:06', '2022-01-20 09:53:06'),
(1016, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:53:15', '2022-01-20 09:53:15'),
(1017, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:53:20', '2022-01-20 09:53:20'),
(1018, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:55:47', '2022-01-20 09:55:47'),
(1019, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:55:50', '2022-01-20 09:55:50'),
(1020, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '[]', '2022-01-20 09:56:25', '2022-01-20 09:56:25'),
(1021, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:56:33', '2022-01-20 09:56:33'),
(1022, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:56:36', '2022-01-20 09:56:36'),
(1023, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:56:40', '2022-01-20 09:56:40'),
(1024, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 09:56:42', '2022-01-20 09:56:42'),
(1025, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '[]', '2022-01-20 10:01:45', '2022-01-20 10:01:45'),
(1026, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '[]', '2022-01-20 10:02:26', '2022-01-20 10:02:26'),
(1027, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '[]', '2022-01-20 10:05:25', '2022-01-20 10:05:25'),
(1028, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '[]', '2022-01-20 10:05:39', '2022-01-20 10:05:39'),
(1029, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:06:26', '2022-01-20 10:06:26'),
(1030, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:06:30', '2022-01-20 10:06:30'),
(1031, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:06:33', '2022-01-20 10:06:33'),
(1032, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:06:37', '2022-01-20 10:06:37'),
(1033, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:06:43', '2022-01-20 10:06:43'),
(1034, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:13', '2022-01-20 10:07:13'),
(1035, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:17', '2022-01-20 10:07:17'),
(1036, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:21', '2022-01-20 10:07:21'),
(1037, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:23', '2022-01-20 10:07:23'),
(1038, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:27', '2022-01-20 10:07:27'),
(1039, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:32', '2022-01-20 10:07:32'),
(1040, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:35', '2022-01-20 10:07:35'),
(1041, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:36', '2022-01-20 10:07:36'),
(1042, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:37', '2022-01-20 10:07:37'),
(1043, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:38', '2022-01-20 10:07:38'),
(1044, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:39', '2022-01-20 10:07:39'),
(1045, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:40', '2022-01-20 10:07:40'),
(1046, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:43', '2022-01-20 10:07:43'),
(1047, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:07:46', '2022-01-20 10:07:46'),
(1048, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:49', '2022-01-20 10:08:49'),
(1049, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:51', '2022-01-20 10:08:51'),
(1050, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:53', '2022-01-20 10:08:53'),
(1051, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:53', '2022-01-20 10:08:53'),
(1052, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:54', '2022-01-20 10:08:54'),
(1053, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:55', '2022-01-20 10:08:55'),
(1054, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:56', '2022-01-20 10:08:56'),
(1055, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:56', '2022-01-20 10:08:56'),
(1056, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:08:57', '2022-01-20 10:08:57'),
(1057, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 10:10:14', '2022-01-20 10:10:14'),
(1058, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:10:17', '2022-01-20 10:10:17'),
(1059, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:10:21', '2022-01-20 10:10:21'),
(1060, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:10:22', '2022-01-20 10:10:22'),
(1061, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:10:24', '2022-01-20 10:10:24'),
(1062, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:10:26', '2022-01-20 10:10:26'),
(1063, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:10:34', '2022-01-20 10:10:34'),
(1064, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:10:39', '2022-01-20 10:10:39'),
(1065, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:10:44', '2022-01-20 10:10:44'),
(1066, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:11:04', '2022-01-20 10:11:04'),
(1067, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:11:18', '2022-01-20 10:11:18'),
(1068, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:11:52', '2022-01-20 10:11:52'),
(1069, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:11:55', '2022-01-20 10:11:55'),
(1070, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:11:57', '2022-01-20 10:11:57'),
(1071, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:13:06', '2022-01-20 10:13:06'),
(1072, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:13:09', '2022-01-20 10:13:09'),
(1073, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:13:11', '2022-01-20 10:13:11'),
(1074, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:14:19', '2022-01-20 10:14:19'),
(1075, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:14:42', '2022-01-20 10:14:42'),
(1076, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:14:44', '2022-01-20 10:14:44'),
(1077, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:14:46', '2022-01-20 10:14:46'),
(1078, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:14:49', '2022-01-20 10:14:49'),
(1079, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:14:52', '2022-01-20 10:14:52'),
(1080, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:14:55', '2022-01-20 10:14:55'),
(1081, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:15:03', '2022-01-20 10:15:03'),
(1082, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:15:04', '2022-01-20 10:15:04'),
(1083, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:17:36', '2022-01-20 10:17:36'),
(1084, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:17:39', '2022-01-20 10:17:39'),
(1085, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:17:41', '2022-01-20 10:17:41'),
(1086, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:17:46', '2022-01-20 10:17:46'),
(1087, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:18:21', '2022-01-20 10:18:21'),
(1088, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:18:31', '2022-01-20 10:18:31'),
(1089, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:18:33', '2022-01-20 10:18:33'),
(1090, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:19:02', '2022-01-20 10:19:02'),
(1091, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:22:56', '2022-01-20 10:22:56'),
(1092, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"fish_name\":\"fggdfg\",\"type\":\"3\",\"isRed\":\"off\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 10:23:06', '2022-01-20 10:23:06'),
(1093, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:23:09', '2022-01-20 10:23:09'),
(1094, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:23:51', '2022-01-20 10:23:51'),
(1095, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:24:07', '2022-01-20 10:24:07'),
(1096, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:24:41', '2022-01-20 10:24:41'),
(1097, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:25:02', '2022-01-20 10:25:02'),
(1098, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:25:28', '2022-01-20 10:25:28'),
(1099, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:25:35', '2022-01-20 10:25:35'),
(1100, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:25:43', '2022-01-20 10:25:43'),
(1101, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:25:46', '2022-01-20 10:25:46'),
(1102, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:27:15', '2022-01-20 10:27:15'),
(1103, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:29:50', '2022-01-20 10:29:50'),
(1104, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:29:53', '2022-01-20 10:29:53'),
(1105, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:30:04', '2022-01-20 10:30:04'),
(1106, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:30:05', '2022-01-20 10:30:05'),
(1107, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:38:27', '2022-01-20 10:38:27'),
(1108, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 10:39:21', '2022-01-20 10:39:21'),
(1109, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:40:37', '2022-01-20 10:40:37'),
(1110, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:40:43', '2022-01-20 10:40:43'),
(1111, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:40:47', '2022-01-20 10:40:47'),
(1112, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 10:42:30', '2022-01-20 10:42:30'),
(1113, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:42:33', '2022-01-20 10:42:33'),
(1114, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:42:38', '2022-01-20 10:42:38'),
(1115, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:43:18', '2022-01-20 10:43:18'),
(1116, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 10:43:20', '2022-01-20 10:43:20'),
(1117, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 10:43:45', '2022-01-20 10:43:45'),
(1118, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 10:54:18', '2022-01-20 10:54:18'),
(1119, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 10:54:50', '2022-01-20 10:54:50'),
(1120, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 11:00:34', '2022-01-20 11:00:34'),
(1121, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 11:01:53', '2022-01-20 11:01:53'),
(1122, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 11:02:45', '2022-01-20 11:02:45'),
(1123, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:03:20', '2022-01-20 11:03:20'),
(1124, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:03:27', '2022-01-20 11:03:27'),
(1125, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:03:32', '2022-01-20 11:03:32'),
(1126, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:03:35', '2022-01-20 11:03:35'),
(1127, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:03:37', '2022-01-20 11:03:37'),
(1128, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:03:40', '2022-01-20 11:03:40'),
(1129, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:03:45', '2022-01-20 11:03:45'),
(1130, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:03:48', '2022-01-20 11:03:48'),
(1131, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 11:08:06', '2022-01-20 11:08:06'),
(1132, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:08:08', '2022-01-20 11:08:08'),
(1133, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:08:09', '2022-01-20 11:08:09'),
(1134, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:09:03', '2022-01-20 11:09:03'),
(1135, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:09:31', '2022-01-20 11:09:31'),
(1136, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:10:05', '2022-01-20 11:10:05'),
(1137, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:11:12', '2022-01-20 11:11:12'),
(1138, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:14:05', '2022-01-20 11:14:05'),
(1139, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:26:37', '2022-01-20 11:26:37'),
(1140, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:27:55', '2022-01-20 11:27:55'),
(1141, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:30:27', '2022-01-20 11:30:27'),
(1142, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:34:09', '2022-01-20 11:34:09'),
(1143, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:38:57', '2022-01-20 11:38:57'),
(1144, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:39:28', '2022-01-20 11:39:28'),
(1145, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:40:44', '2022-01-20 11:40:44'),
(1146, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:43:36', '2022-01-20 11:43:36'),
(1147, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:46:18', '2022-01-20 11:46:18'),
(1148, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 11:47:04', '2022-01-20 11:47:04'),
(1149, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:51:08', '2022-01-20 11:51:08'),
(1150, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:51:12', '2022-01-20 11:51:12'),
(1151, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:51:17', '2022-01-20 11:51:17'),
(1152, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 11:51:20', '2022-01-20 11:51:20'),
(1153, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 12:32:20', '2022-01-20 12:32:20');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1154, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:32:23', '2022-01-20 12:32:23'),
(1155, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:32:24', '2022-01-20 12:32:24'),
(1156, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:32:35', '2022-01-20 12:32:35'),
(1157, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:32:55', '2022-01-20 12:32:55'),
(1158, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:32:59', '2022-01-20 12:32:59'),
(1159, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:33:02', '2022-01-20 12:33:02'),
(1160, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:33:06', '2022-01-20 12:33:06'),
(1161, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:33:06', '2022-01-20 12:33:06'),
(1162, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:33:07', '2022-01-20 12:33:07'),
(1163, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:34:53', '2022-01-20 12:34:53'),
(1164, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:34:53', '2022-01-20 12:34:53'),
(1165, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:34:55', '2022-01-20 12:34:55'),
(1166, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:35:11', '2022-01-20 12:35:11'),
(1167, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:35:18', '2022-01-20 12:35:18'),
(1168, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:35:23', '2022-01-20 12:35:23'),
(1169, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:35:24', '2022-01-20 12:35:24'),
(1170, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:35:37', '2022-01-20 12:35:37'),
(1171, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:35:44', '2022-01-20 12:35:44'),
(1172, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:35:47', '2022-01-20 12:35:47'),
(1173, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:37:10', '2022-01-20 12:37:10'),
(1174, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:39:15', '2022-01-20 12:39:15'),
(1175, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:39:29', '2022-01-20 12:39:29'),
(1176, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:39:45', '2022-01-20 12:39:45'),
(1177, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:39:47', '2022-01-20 12:39:47'),
(1178, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:39:54', '2022-01-20 12:39:54'),
(1179, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:41:37', '2022-01-20 12:41:37'),
(1180, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:41:40', '2022-01-20 12:41:40'),
(1181, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:42:41', '2022-01-20 12:42:41'),
(1182, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:43:14', '2022-01-20 12:43:14'),
(1183, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:43:19', '2022-01-20 12:43:19'),
(1184, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:45:31', '2022-01-20 12:45:31'),
(1185, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:47:51', '2022-01-20 12:47:51'),
(1186, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:48:03', '2022-01-20 12:48:03'),
(1187, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:48:13', '2022-01-20 12:48:13'),
(1188, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:48:16', '2022-01-20 12:48:16'),
(1189, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:48:17', '2022-01-20 12:48:17'),
(1190, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:48:56', '2022-01-20 12:48:56'),
(1191, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:49:13', '2022-01-20 12:49:13'),
(1192, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:50:14', '2022-01-20 12:50:14'),
(1193, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:50:41', '2022-01-20 12:50:41'),
(1194, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:50:44', '2022-01-20 12:50:44'),
(1195, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 12:52:33', '2022-01-20 12:52:33'),
(1196, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:52:38', '2022-01-20 12:52:38'),
(1197, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:52:39', '2022-01-20 12:52:39'),
(1198, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:54:02', '2022-01-20 12:54:02'),
(1199, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 12:54:03', '2022-01-20 12:54:03'),
(1200, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:03:39', '2022-01-20 13:03:39'),
(1201, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:08:20', '2022-01-20 13:08:20'),
(1202, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:08:30', '2022-01-20 13:08:30'),
(1203, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:08:31', '2022-01-20 13:08:31'),
(1204, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:08:33', '2022-01-20 13:08:33'),
(1205, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:10:22', '2022-01-20 13:10:22'),
(1206, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:11:49', '2022-01-20 13:11:49'),
(1207, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:12:00', '2022-01-20 13:12:00'),
(1208, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:12:12', '2022-01-20 13:12:12'),
(1209, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:12:15', '2022-01-20 13:12:15'),
(1210, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-20 13:14:42', '2022-01-20 13:14:42'),
(1211, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:14:45', '2022-01-20 13:14:45'),
(1212, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:14:47', '2022-01-20 13:14:47'),
(1213, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:15:50', '2022-01-20 13:15:50'),
(1214, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:16:16', '2022-01-20 13:16:16'),
(1215, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:16:59', '2022-01-20 13:16:59'),
(1216, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:17:02', '2022-01-20 13:17:02'),
(1217, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\",\"fish_name\":\"fggdfg\",\"type\":null,\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 13:17:18', '2022-01-20 13:17:18'),
(1218, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:18:07', '2022-01-20 13:18:07'),
(1219, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:18:08', '2022-01-20 13:18:08'),
(1220, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:18:10', '2022-01-20 13:18:10'),
(1221, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:18:15', '2022-01-20 13:18:15'),
(1222, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:18:18', '2022-01-20 13:18:18'),
(1223, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:18:19', '2022-01-20 13:18:19'),
(1224, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\"},\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\",\"fish_name\":\"fggdfg\",\"type\":null,\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 13:18:23', '2022-01-20 13:18:23'),
(1225, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:19:11', '2022-01-20 13:19:11'),
(1226, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:19:12', '2022-01-20 13:19:12'),
(1227, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":null,\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 13:19:17', '2022-01-20 13:19:17'),
(1228, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:19:52', '2022-01-20 13:19:52'),
(1229, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:19:54', '2022-01-20 13:19:54'),
(1230, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:19:55', '2022-01-20 13:19:55'),
(1231, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"0\",\"1\",\"2\",null],\"daytime_weight\":\"0\",\"yeartime\":[\"1\",\"2\",null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[\"2\",\"3\",null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.65\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":null,\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 13:20:35', '2022-01-20 13:20:35'),
(1232, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 13:22:14', '2022-01-20 13:22:14'),
(1233, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:22:15', '2022-01-20 13:22:15'),
(1234, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:22:16', '2022-01-20 13:22:16'),
(1235, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0434\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"0\",\"yeartime\":[\"\\u043e\\u0441\\u0435\\u043d\\u044c\",\"\\u043b\\u0435\\u0442\\u043e\",\"\\u0432\\u0435\\u0441\\u043d\\u0430\",null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[\"1\",\"2\",null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":null,\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 13:22:34', '2022-01-20 13:22:34'),
(1236, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:24:07', '2022-01-20 13:24:07'),
(1237, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:24:08', '2022-01-20 13:24:08'),
(1238, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:24:09', '2022-01-20 13:24:09'),
(1239, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0434\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"0\",\"yeartime\":[\"\\u043e\\u0441\\u0435\\u043d\\u044c\",\"\\u043b\\u0435\\u0442\\u043e\",\"\\u0432\\u0435\\u0441\\u043d\\u0430\",null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[\"\\u043d\\u043e\\u0432\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",\"\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":null,\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 13:24:19', '2022-01-20 13:24:19'),
(1240, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 13:45:03', '2022-01-20 13:45:03'),
(1241, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:45:14', '2022-01-20 13:45:14'),
(1242, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:45:28', '2022-01-20 13:45:28'),
(1243, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:45:35', '2022-01-20 13:45:35'),
(1244, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 13:46:33', '2022-01-20 13:46:33'),
(1245, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:46:58', '2022-01-20 13:46:58'),
(1246, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:46:59', '2022-01-20 13:46:59'),
(1247, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:07', '2022-01-20 13:47:07'),
(1248, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:11', '2022-01-20 13:47:11'),
(1249, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:13', '2022-01-20 13:47:13'),
(1250, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:17', '2022-01-20 13:47:17'),
(1251, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:23', '2022-01-20 13:47:23'),
(1252, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:29', '2022-01-20 13:47:29'),
(1253, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:30', '2022-01-20 13:47:30'),
(1254, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:33', '2022-01-20 13:47:33'),
(1255, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:35', '2022-01-20 13:47:35'),
(1256, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:39', '2022-01-20 13:47:39'),
(1257, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 13:47:54', '2022-01-20 13:47:54'),
(1258, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:47:55', '2022-01-20 13:47:55'),
(1259, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:48:00', '2022-01-20 13:48:00'),
(1260, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:48:04', '2022-01-20 13:48:04'),
(1261, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:48:13', '2022-01-20 13:48:13'),
(1262, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:48:18', '2022-01-20 13:48:18'),
(1263, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 13:48:38', '2022-01-20 13:48:38'),
(1264, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:48:39', '2022-01-20 13:48:39'),
(1265, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 13:49:38', '2022-01-20 13:49:38'),
(1266, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:49:39', '2022-01-20 13:49:39'),
(1267, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 13:50:49', '2022-01-20 13:50:49'),
(1268, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:50:49', '2022-01-20 13:50:49'),
(1269, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 13:51:09', '2022-01-20 13:51:09'),
(1270, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:51:09', '2022-01-20 13:51:09'),
(1271, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 13:54:52', '2022-01-20 13:54:52'),
(1272, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 13:54:52', '2022-01-20 13:54:52'),
(1273, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 13:55:11', '2022-01-20 13:55:11'),
(1274, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 13:55:35', '2022-01-20 13:55:35'),
(1275, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 13:55:36', '2022-01-20 13:55:36'),
(1276, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041f\\u0440\\u0435\\u0441\\u043d\\u043e\\u0432\\u043e\\u0434\\u043d\\u044b\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 13:55:52', '2022-01-20 13:55:52'),
(1277, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:55:53', '2022-01-20 13:55:53'),
(1278, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041f\\u0440\\u0435\\u0441\\u043d\\u043e\\u0432\\u043e\\u0434\\u043d\\u044b\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 13:56:42', '2022-01-20 13:56:42'),
(1279, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:56:43', '2022-01-20 13:56:43'),
(1280, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041f\\u0440\\u0435\\u0441\\u043d\\u043e\\u0432\\u043e\\u0434\\u043d\\u044b\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 13:57:52', '2022-01-20 13:57:52'),
(1281, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:57:52', '2022-01-20 13:57:52'),
(1282, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041f\\u0440\\u0435\\u0441\\u043d\\u043e\\u0432\\u043e\\u0434\\u043d\\u044b\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 13:59:27', '2022-01-20 13:59:27'),
(1283, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 13:59:27', '2022-01-20 13:59:27'),
(1284, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041f\\u0440\\u0435\\u0441\\u043d\\u043e\\u0432\\u043e\\u0434\\u043d\\u044b\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 14:00:13', '2022-01-20 14:00:13'),
(1285, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:00:32', '2022-01-20 14:00:32'),
(1286, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:00:33', '2022-01-20 14:00:33'),
(1287, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg2\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"dsfsdf\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 14:00:50', '2022-01-20 14:00:50'),
(1288, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:02:44', '2022-01-20 14:02:44'),
(1289, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:02:45', '2022-01-20 14:02:45'),
(1290, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:02:52', '2022-01-20 14:02:52'),
(1291, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:03:26', '2022-01-20 14:03:26'),
(1292, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:03:28', '2022-01-20 14:03:28'),
(1293, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:03:33', '2022-01-20 14:03:33'),
(1294, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:04:04', '2022-01-20 14:04:04'),
(1295, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:04:06', '2022-01-20 14:04:06'),
(1296, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041f\\u0440\\u0435\\u0441\\u043d\\u043e\\u0432\\u043e\\u0434\\u043d\\u044b\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"dsfsdf\",\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:04:15', '2022-01-20 14:04:15'),
(1297, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 14:04:16', '2022-01-20 14:04:16'),
(1298, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 14:05:49', '2022-01-20 14:05:49'),
(1299, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:06:00', '2022-01-20 14:06:00'),
(1300, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 14:06:00', '2022-01-20 14:06:00'),
(1301, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 14:07:12', '2022-01-20 14:07:12'),
(1302, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 14:07:12', '2022-01-20 14:07:12'),
(1303, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:07:17', '2022-01-20 14:07:17'),
(1304, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:07:19', '2022-01-20 14:07:19'),
(1305, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg2\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:07:27', '2022-01-20 14:07:27'),
(1306, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 14:07:27', '2022-01-20 14:07:27'),
(1307, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg2\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 14:07:58', '2022-01-20 14:07:58'),
(1308, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:08:53', '2022-01-20 14:08:53'),
(1309, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:08:54', '2022-01-20 14:08:54'),
(1310, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:08:59', '2022-01-20 14:08:59'),
(1311, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 14:09:00', '2022-01-20 14:09:00'),
(1312, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 14:09:18', '2022-01-20 14:09:18'),
(1313, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 14:09:19', '2022-01-20 14:09:19'),
(1314, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:10:41', '2022-01-20 14:10:41'),
(1315, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:10:44', '2022-01-20 14:10:44'),
(1316, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg2\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":\"klkl;\",\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:10:57', '2022-01-20 14:10:57'),
(1317, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:13:53', '2022-01-20 14:13:53'),
(1318, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:13:55', '2022-01-20 14:13:55'),
(1319, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:14:01', '2022-01-20 14:14:01'),
(1320, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:14:04', '2022-01-20 14:14:04');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1321, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'PUT', '127.0.0.1', '{\"factors\":{\"14\":{\"opt_values\":\"-10,20.22\",\"weight\":\"0.93\",\"id\":\"14\",\"_remove_\":\"0\"},\"15\":{\"opt_values\":\"\\u0432\\u0435\\u0447\\u0435\\u0440,\\u0443\\u0442\\u0440\\u043e\",\"weight\":\"0.63\",\"id\":\"15\",\"_remove_\":\"0\"},\"16\":{\"opt_values\":\"\\u0437\\u0438\\u043c\\u0430\",\"weight\":\"0.51\",\"id\":\"16\",\"_remove_\":\"0\"},\"17\":{\"opt_values\":\"\\u0434\\u043e\\u0436\\u0434\\u044c,\\u044f\\u0441\\u043d\\u043e,\\u0441\\u043d\\u0435\\u0433,\\u0442\\u0443\\u043c\\u0430\\u043d,\\u043e\\u0431\\u043b\\u0430\\u0447\\u043d\\u043e\",\"weight\":\"0.56\",\"id\":\"17\",\"_remove_\":\"0\"},\"18\":{\"opt_values\":\"\\u0440\\u0430\\u0441\\u0442\\u0443\\u0449\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u0443\\u0431\\u044b\\u0432\\u0430\\u044e\\u0448\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",\"weight\":\"0.35\",\"id\":\"18\",\"_remove_\":\"0\"},\"19\":{\"opt_values\":\"4.92,7.07\",\"weight\":\"0.39\",\"id\":\"19\",\"_remove_\":\"0\"},\"20\":{\"opt_values\":\"848,854\",\"weight\":\"0.21\",\"id\":\"20\",\"_remove_\":\"0\"},\"21\":{\"opt_values\":\"57,100\",\"weight\":\"0.08\",\"id\":\"21\",\"_remove_\":\"0\"},\"22\":{\"opt_values\":\"57,86\",\"weight\":\"0.1\",\"id\":\"22\",\"_remove_\":\"0\"},\"23\":{\"opt_values\":\"0,8\",\"weight\":\"0.1\",\"id\":\"23\",\"_remove_\":\"0\"}},\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"Morone chrysops2\",\"other_names\":\"White bass (\\u0430\\u043d\\u0433\\u043b.)\",\"family\":\"\\u041a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435\",\"genus\":\"\\u0410\\u043c\\u0443\\u0440\\u044b \\u0431\\u0435\\u043b\\u044b\\u0435\",\"lifestyle\":\"\\u043f\\u0435\\u043b\\u0430\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439\",\"food_type\":\"\\u043c\\u0438\\u0440\\u043d\\u044b\\u0439\",\"area\":\"\\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0427\\u0435\\u0440\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0422\\u0438\\u0445\\u043e\\u0433\\u043e \\u043e\\u043a\\u0435\\u0430\\u043d\\u0430, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u041a\\u0430\\u0441\\u043f\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0410\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f\",\"appereance\":\"\\u0422\\u0435\\u043b\\u043e \\u043c\\u0430\\u0441\\u0441\\u0438\\u0432\\u043d\\u043e\\u0435, \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0435 (huso \\u0432 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u0435 \\u0441 \\u043b\\u0430\\u0442\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u2014 \\u0441\\u0432\\u0438\\u043d\\u044c\\u044f).\\r\\n\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430 \\u2014 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431. \\u0412 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u043b\\u0430 \\u0434\\u043b\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 1000 \\u043a\\u0433. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u044d\\u043a\\u0437\\u0435\\u043c\\u043f\\u043b\\u044f\\u0440\\u043e\\u0432, \\u0432\\u0438\\u0434\\u0438\\u043c\\u043e, \\u043f\\u0440\\u0435\\u0432\\u044b\\u0448\\u0430\\u043b\\u0430 100 \\u043b\\u0435\\u0442.\\r\\n\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442 \\u0432 46 \\u043b\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d \\u0432 1977 \\u0433 \\u0438 44 \\u0433\\u043e\\u0434\\u0430 \\u0432 1983 \\u0433. \\u0412 1970 \\u0433. \\u0432 \\u043f\\u0440\\u043e\\u043c\\u044b\\u0441\\u043b\\u043e\\u0432\\u044b\\u0445 \\u0443\\u043b\\u043e\\u0432\\u0430\\u0445 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435 \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0434\\u043b\\u0438\\u043d\\u0430 \\u0441\\u0430\\u043c\\u043e\\u043a \\u0431\\u0435\\u043b\\u0443\\u0433\\u0438 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u0430 267 \\u0441\\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u0430 142 \\u043a\\u0433, \\u0441\\u0430\\u043c\\u0446\\u043e\\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e 221 \\u0441\\u043c \\u0438 81 \\u043a\\u0433. \\u041e\\u0431\\u0449\\u0438\\u0439 \\u0446\\u0432\\u0435\\u0442 \\u0442\\u0435\\u043b\\u0430 \\u043f\\u0435\\u043f\\u0435\\u043b\\u044c\\u043d\\u043e-\\u0441\\u0435\\u0440\\u044b\\u0439, \\u0431\\u0440\\u044e\\u0445\\u043e \\u0441\\u0435\\u0440\\u043e\\u0432\\u0430\\u0442\\u043e- \\u0431\\u0435\\u043b\\u043e\\u0435, \\u043d\\u043e\\u0441 \\u0436\\u0435\\u043b\\u0442\\u043e\\u0432\\u0430\\u0442\\u044b\\u0439.\\r\\n\\u041a\\u0440\\u043e\\u043c\\u0435 \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u044b, \\u0431\\u0435\\u043b\\u0443\\u0433\\u0430 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043e\\u0441\\u0435\\u0442\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u0441\\u0432\\u043e\\u0438\\u043c \\u0442\\u043e\\u043b\\u0441\\u0442\\u044b\\u043c \\u0446\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0442\\u0443\\u043b\\u043e\\u0432\\u0438\\u0449\\u0435\\u043c \\u0438 \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u0438\\u043c \\u0437\\u0430\\u043e\\u0441\\u0442\\u0440\\u0435\\u043d\\u043d\\u044b\\u043c \\u043d\\u043e\\u0441\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u043e\\u0441\\u0432\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442 \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u043c\\u0438 \\u0449\\u0438\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438.\\r\\n\\u0420\\u044b\\u043b\\u043e \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0435, \\u0442\\u0443\\u043f\\u043e\\u0435. \\u0420\\u043e\\u0442 \\u0443 \\u043d\\u0435\\u0435 \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u044b\\u0439, \\u043f\\u043e\\u043b\\u0443\\u043b\\u0443\\u043d\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439, \\u043d\\u043e, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u043a\\u0430\\u043b\\u0443\\u0433\\u0438, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0439 \\u043d\\u0430 \\u0431\\u043e\\u043a\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b, \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0432\\u0441\\u044e \\u0448\\u0438\\u0440\\u0438\\u043d\\u0443 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0438 \\u043e\\u043a\\u0440\\u0443\\u0436\\u0435\\u043d \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0439 \\u0433\\u0443\\u0431\\u043e\\u0439; \\u0443\\u0441\\u0438\\u043a\\u0438 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0448\\u0438\\u0440\\u0438\\u043d\\u043e\\u0439 \\u0438 \\u0445\\u0432\\u0430\\u0442\\u0430\\u044e\\u0442 \\u0434\\u043e \\u0440\\u0442\\u0430. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u0435 \\u0449\\u0438\\u0442\\u043a\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u0435 \\u0438 \\u0436\\u0443\\u0447\\u043a\\u0438, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0435, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u0441\\u044f \\u043e\\u0442\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u043c\\u0438: \\u0441\\u043f\\u0438\\u043d\\u043d\\u044b\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\\u0439 \\u0447\\u0430\\u0441\\u0442\\u044c\\u044e 12-13, \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 40-45 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0445 10-12.\",\"habitat\":\"\\u041e\\u0431\\u0438\\u0442\\u0430\\u0435\\u0442 \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430 \\u0443 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0431\\u0435\\u0440\\u0435\\u0433\\u043e\\u0432, \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0445 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 - 15-30 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0445\\u043e\\u0442\\u044f \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0435 \\u0432 100-300 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432. \\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0441\\u0442\\u0430\\u0439\\u043a\\u0430\\u043c\\u0438 \\u0443 \\u0434\\u043d\\u0430 \\u0438 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043b\\u0449\\u0443 \\u0432\\u043e\\u0434\\u044b.\\r\\n\\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u043c\\u044f\\u0433\\u043a\\u0438\\u0439 \\u0438\\u043b\\u0438\\u0441\\u0442\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u044b\\u0439 \\u0433\\u0440\\u0443\\u043d\\u0442, \\u043d\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0440\\u0430\\u043a\\u0443\\u0448\\u0435\\u0447\\u043d\\u0438\\u043a\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u0435\\u043d\\u0438\\u0441\\u0442\\u043e\\u043c \\u0434\\u043d\\u0435.\",\"food_features\":\"\\u041e\\u0442\\u044b\\u0441\\u043a\\u0438\\u0432\\u0430\\u0442\\u044c \\u043f\\u0438\\u0449\\u0443 \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u044e\\u0442 \\u0438\\u0445 \\u0434\\u043b\\u0438\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0438\\u043a\\u0438: \\u0440\\u044b\\u0431\\u043a\\u0430 \\u043c\\u0435\\u0434\\u043b\\u0435\\u043d\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0435\\u0442\\u0441\\u044f \\u0443 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430 \\u0438 \\u0442\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\\"\\u043e\\u0449\\u0443\\u043f\\u044b\\u0432\\u0430\\u0435\\u0442\\\" \\u0435\\u0433\\u043e \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u044c \\u0443\\u0441\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\\u0445 \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0434\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445. \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0431\\u0435\\u0441\\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u043e\\u0447\\u043d\\u044b\\u043c\\u0438.\",\"reproduction\":\"\\u041f\\u043e\\u043b\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0440\\u0435\\u043b\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0432\\u0442\\u043e\\u0440\\u043e\\u043c-\\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u043c \\u0433\\u043e\\u0434\\u0443 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u041d\\u0435\\u0440\\u0435\\u0441\\u0442 - \\u0441 \\u043c\\u0430\\u044f \\u043f\\u043e \\u0430\\u0432\\u0433\\u0443\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 \\u043e\\u0442 10 \\u0434\\u043e 55 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432 \\u0431\\u043b\\u0438\\u0437 \\u0438\\u043b\\u0438\\u0441\\u0442\\u043e\\u0433\\u043e \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430. \\u041a\\u0430\\u0436\\u0434\\u0430\\u044f \\u0441\\u0430\\u043c\\u043a\\u0430 \\u0432\\u044b\\u043c\\u0435\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0440\\u0446\\u0438\\u0439 \\u0438\\u043a\\u0440\\u044b, \\u043e\\u0431\\u0449\\u0430\\u044f \\u043f\\u043b\\u043e\\u0434\\u043e\\u0432\\u0438\\u0442\\u043e\\u0441\\u0442\\u044c \\u0437\\u0430 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0442 3,6 \\u0434\\u043e 88 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0438\\u043a\\u0440\\u0438\\u043d\\u043e\\u043a.\\r\\n\\u0412\\u044b\\u043c\\u0435\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f \\u0438 \\u043e\\u043f\\u043b\\u043e\\u0434\\u043e\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u0430\\u044f \\u0438\\u043a\\u0440\\u0430 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0440\\u0445\\u043d\\u0438\\u0435 \\u0441\\u043b\\u043e\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 3,5-2,5 \\u0434\\u043d\\u044f, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u044b, \\u0438\\u0437 \\u043d\\u0435\\u0435 \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043b\\u0438\\u0447\\u0438\\u043d\\u043a\\u0438. \\r\\n            \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u043c\\u0438 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u043c\\u0438 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430\\u043c\\u0438 \\u0442\\u043e\\u043b\\u0449\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u043c\\u0430\\u0441\\u043a\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0445\\u0438\\u0449\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u0438\\u0441\\u0442\\u043e\\u0439, \\u0441\\u0438\\u043d\\u0435\\u0432\\u0430\\u0442\\u043e-\\u0437\\u0435\\u043b\\u0435\\u043d\\u043e\\u0439 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u043e\\u0439. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u0447\\u0435\\u0440\\u0435\\u0437 1,5-2 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u044b\\u043b\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0430\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0438, \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0432 \\u0434\\u043b\\u0438\\u043d\\u044b 4-6 \\u0441\\u0430\\u043d\\u0442\\u0438\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u043e\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0434\\u043d\\u043e \\u0438 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u043b\\u044f \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u043e\\u0431\\u043b\\u0438\\u043a \\u0438 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u0443.\\r\\n\\u0412\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0435 \\u0431\\u0430\\u0440\\u0430\\u0431\\u0443\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0432\\u0435\\u0441\\u043d\\u043e\\u0439 \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0437\\u0434\\u0435\\u0441\\u044c \\u0434\\u043e \\u0437\\u0438\\u043c\\u044b, \\u0438\\u043d\\u043e\\u0433\\u0434\\u0430 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u0432 \\u0443\\u0441\\u0442\\u044c\\u044f\\u0445 \\u0440\\u0435\\u043a. \\u041d\\u0430 \\u0437\\u0438\\u043c\\u0443 \\u0440\\u044b\\u0431\\u044b \\u043e\\u0442\\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u044b. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 - 10-12 \\u043b\\u0435\\u0442, \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u043b\\u0435\\u0442\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u0442\\u044c \\u0434\\u043b\\u0438\\u043d\\u044b \\u043e\\u0442 4 \\u0434\\u043e 12 \\u0441\\u043c, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043d\\u0435\\u0440\\u0435\\u0441\\u0442\\u0430.\",\"catches\":\"\\u0427\\u0442\\u043e \\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u043b\\u043e\\u0432\\u043b\\u0438 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430, \\u0442\\u043e \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0441\\u043d\\u044b (\\u043a\\u0430\\u043a \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0435\\u0435\\u0442\\u0441\\u044f \\u0432\\u044b\\u0448\\u0435 10 \\u0433\\u0440\\u0430\\u0434\\u0443\\u0441\\u043e\\u0432) \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e \\u0441\\u0435\\u0440\\u0435\\u0434\\u0438\\u043d\\u044b \\u043e\\u0441\\u0435\\u043d\\u0438. \\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u043c\\u0435\\u0436\\u0443\\u0442\\u043e\\u043a \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u043a\\u043b\\u0435\\u0432\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u044b\\u0431\\u044b, \\u0438 \\u0441\\u043f\\u0430\\u0434\\u044b, \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0430\\u043a \\u0438 \\u0443 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439\\u0441\\u0442\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0435\\u0441\\u0442\\u044c \\u043e\\u0434\\u043d\\u0430 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u0435\\u0439\\u0448\\u0430\\u044f \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u043d\\u0430\\u0442\\u044c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0443: \\u0447\\u0435\\u043c \\u0436\\u0430\\u0440\\u0447\\u0435, \\u0442\\u0435\\u043c \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043a\\u043b\\u0435\\u0432 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430. \\u0418 \\u043d\\u0430\\u043e\\u0431\\u043e\\u0440\\u043e\\u0442.\\r\\n\\u0412 \\u0436\\u0430\\u0440\\u0443, \\u0431\\u0435\\u043b\\u044b\\u0439 \\u0430\\u043c\\u0443\\u0440 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442\\u0441\\u044f, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0432\\u044b\\u0434\\u0430\\u0432\\u0430\\u044f \\u0441\\u0432\\u043e\\u0435 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435: \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0434\\u0430\\u0436\\u0435 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0439 \\u0440\\u044b\\u0431\\u0430\\u043a \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c \\u043c\\u043e\\u0449\\u043d\\u044b\\u0435 \\u0432\\u0441\\u043f\\u043b\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0435\\u0441\\u044f \\u0432 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u043a\\u0440\\u0443\\u0433\\u0438, \\u0430 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0432\\u0435\\u0437\\u0435\\u0442 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0435\\u0441\\u043b\\u0438 \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0433\\u043e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0430), \\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0441\\u0430\\u043c\\u0443 \\u0440\\u044b\\u0431\\u0443.\\r\\n\\u041d\\u043e, \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0430\\u043c\\u0443\\u0440\\u0430 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u043f\\u043e\\u043b\\u043e\\u0432\\u0438\\u043d\\u0430 \\u0434\\u0435\\u043b\\u0430, \\u0434\\u0430\\u0436\\u0435 \\u0441\\u043a\\u0430\\u0436\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u043d\\u043e \\u043d\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0443\\u043b\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u0430 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0430 \\u0443\\u0434\\u0430\\u0441\\u0442\\u0441\\u044f.\",\"baits\":\"\\u041f\\u043e\\u043d\\u044f\\u0442\\u043d\\u043e, \\u0447\\u0442\\u043e \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u043b\\u0438\\u0441\\u0442\\u044c\\u044f \\u0438 \\u0441\\u0442\\u0435\\u0431\\u043b\\u0438 \\u043a\\u0430\\u043c\\u044b\\u0448\\u0430, \\u0441\\u0442\\u0435\\u0431\\u0435\\u043b\\u044c\\u043a\\u0438 \\u0438 \\u0437\\u0435\\u0440\\u043d\\u0430 \\u043a\\u0443\\u043a\\u0443\\u0440\\u0443\\u0437\\u044b, \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0440\\u043e\\u0441\\u043b\\u0438 (\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0438\\u0437 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0436\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u0430).\\r\\n\\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u0441\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0438 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438, \\u0432 \\u043e\\u0431\\u0449\\u0435\\u043c \\u2014 \\u0441 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0443\\u0436\\u043d\\u043e \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c. \\u0418 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0430\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442.\\r\\n\\u0422\\u0435\\u043e\\u0440\\u0438\\u044f \\u2014 \\u044d\\u0442\\u043e, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e, \\u043d\\u043e \\u0441\\u0430\\u043c\\u044b\\u0439 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434: \\u0432\\u0441\\u0435 \\u0443\\u0442\\u043e\\u0447\\u043d\\u0438\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431\\u0430\\u043a\\u043e\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043b\\u043e\\u0432\\u044f\\u0442 \\u043d\\u0430 \\u043f\\u043e\\u043f\\u043b\\u0430\\u0432\\u043e\\u0447\\u043d\\u0443\\u044e \\u0441\\u043d\\u0430\\u0441\\u0442\\u044c (\\u0448\\u0442\\u0435\\u043a\\u0435\\u0440, \\u043c\\u0430\\u0442\\u0447), \\u043d\\u0430 \\u0444\\u0438\\u0434\\u0435\\u0440, \\u043d\\u0430\\u0445\\u043b\\u044b\\u0441\\u0442\\u043e\\u043c.\\r\\n\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u043a\\u043e\\u0439, \\u043d\\u043e \\u043e\\u0447\\u0435\\u043d\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0438 \\u0437\\u0430\\u0445\\u0432\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439.\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:14:13', '2022-01-20 14:14:13'),
(1322, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:14:13', '2022-01-20 14:14:13');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1323, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'PUT', '127.0.0.1', '{\"factors\":{\"14\":{\"opt_values\":\"-10,20.22\",\"weight\":\"0.93\",\"id\":\"14\",\"_remove_\":\"0\"},\"15\":{\"opt_values\":\"\\u0432\\u0435\\u0447\\u0435\\u0440,\\u0443\\u0442\\u0440\\u043e\",\"weight\":\"0.63\",\"id\":\"15\",\"_remove_\":\"0\"},\"16\":{\"opt_values\":\"\\u0437\\u0438\\u043c\\u0430\",\"weight\":\"0.51\",\"id\":\"16\",\"_remove_\":\"0\"},\"17\":{\"opt_values\":\"\\u0434\\u043e\\u0436\\u0434\\u044c,\\u044f\\u0441\\u043d\\u043e,\\u0441\\u043d\\u0435\\u0433,\\u0442\\u0443\\u043c\\u0430\\u043d,\\u043e\\u0431\\u043b\\u0430\\u0447\\u043d\\u043e\",\"weight\":\"0.56\",\"id\":\"17\",\"_remove_\":\"0\"},\"18\":{\"opt_values\":\"\\u0440\\u0430\\u0441\\u0442\\u0443\\u0449\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u0443\\u0431\\u044b\\u0432\\u0430\\u044e\\u0448\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",\"weight\":\"0.35\",\"id\":\"18\",\"_remove_\":\"0\"},\"19\":{\"opt_values\":\"4.92,7.07\",\"weight\":\"0.39\",\"id\":\"19\",\"_remove_\":\"0\"},\"20\":{\"opt_values\":\"848,854\",\"weight\":\"0.21\",\"id\":\"20\",\"_remove_\":\"0\"},\"21\":{\"opt_values\":\"57,100\",\"weight\":\"0.08\",\"id\":\"21\",\"_remove_\":\"0\"},\"22\":{\"opt_values\":\"57,86\",\"weight\":\"0.1\",\"id\":\"22\",\"_remove_\":\"0\"},\"23\":{\"opt_values\":\"0,8\",\"weight\":\"0.1\",\"id\":\"23\",\"_remove_\":\"0\"}},\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"Morone chrysops2\",\"other_names\":\"White bass (\\u0430\\u043d\\u0433\\u043b.)\",\"family\":\"\\u041a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435\",\"genus\":\"\\u0410\\u043c\\u0443\\u0440\\u044b \\u0431\\u0435\\u043b\\u044b\\u0435\",\"lifestyle\":\"\\u043f\\u0435\\u043b\\u0430\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439\",\"food_type\":\"\\u043c\\u0438\\u0440\\u043d\\u044b\\u0439\",\"area\":\"\\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0427\\u0435\\u0440\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0422\\u0438\\u0445\\u043e\\u0433\\u043e \\u043e\\u043a\\u0435\\u0430\\u043d\\u0430, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u041a\\u0430\\u0441\\u043f\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0410\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f\",\"appereance\":\"\\u0422\\u0435\\u043b\\u043e \\u043c\\u0430\\u0441\\u0441\\u0438\\u0432\\u043d\\u043e\\u0435, \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0435 (huso \\u0432 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u0435 \\u0441 \\u043b\\u0430\\u0442\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u2014 \\u0441\\u0432\\u0438\\u043d\\u044c\\u044f).\\r\\n\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430 \\u2014 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431. \\u0412 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u043b\\u0430 \\u0434\\u043b\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 1000 \\u043a\\u0433. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u044d\\u043a\\u0437\\u0435\\u043c\\u043f\\u043b\\u044f\\u0440\\u043e\\u0432, \\u0432\\u0438\\u0434\\u0438\\u043c\\u043e, \\u043f\\u0440\\u0435\\u0432\\u044b\\u0448\\u0430\\u043b\\u0430 100 \\u043b\\u0435\\u0442.\\r\\n\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442 \\u0432 46 \\u043b\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d \\u0432 1977 \\u0433 \\u0438 44 \\u0433\\u043e\\u0434\\u0430 \\u0432 1983 \\u0433. \\u0412 1970 \\u0433. \\u0432 \\u043f\\u0440\\u043e\\u043c\\u044b\\u0441\\u043b\\u043e\\u0432\\u044b\\u0445 \\u0443\\u043b\\u043e\\u0432\\u0430\\u0445 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435 \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0434\\u043b\\u0438\\u043d\\u0430 \\u0441\\u0430\\u043c\\u043e\\u043a \\u0431\\u0435\\u043b\\u0443\\u0433\\u0438 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u0430 267 \\u0441\\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u0430 142 \\u043a\\u0433, \\u0441\\u0430\\u043c\\u0446\\u043e\\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e 221 \\u0441\\u043c \\u0438 81 \\u043a\\u0433. \\u041e\\u0431\\u0449\\u0438\\u0439 \\u0446\\u0432\\u0435\\u0442 \\u0442\\u0435\\u043b\\u0430 \\u043f\\u0435\\u043f\\u0435\\u043b\\u044c\\u043d\\u043e-\\u0441\\u0435\\u0440\\u044b\\u0439, \\u0431\\u0440\\u044e\\u0445\\u043e \\u0441\\u0435\\u0440\\u043e\\u0432\\u0430\\u0442\\u043e- \\u0431\\u0435\\u043b\\u043e\\u0435, \\u043d\\u043e\\u0441 \\u0436\\u0435\\u043b\\u0442\\u043e\\u0432\\u0430\\u0442\\u044b\\u0439.\\r\\n\\u041a\\u0440\\u043e\\u043c\\u0435 \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u044b, \\u0431\\u0435\\u043b\\u0443\\u0433\\u0430 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043e\\u0441\\u0435\\u0442\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u0441\\u0432\\u043e\\u0438\\u043c \\u0442\\u043e\\u043b\\u0441\\u0442\\u044b\\u043c \\u0446\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0442\\u0443\\u043b\\u043e\\u0432\\u0438\\u0449\\u0435\\u043c \\u0438 \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u0438\\u043c \\u0437\\u0430\\u043e\\u0441\\u0442\\u0440\\u0435\\u043d\\u043d\\u044b\\u043c \\u043d\\u043e\\u0441\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u043e\\u0441\\u0432\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442 \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u043c\\u0438 \\u0449\\u0438\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438.\\r\\n\\u0420\\u044b\\u043b\\u043e \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0435, \\u0442\\u0443\\u043f\\u043e\\u0435. \\u0420\\u043e\\u0442 \\u0443 \\u043d\\u0435\\u0435 \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u044b\\u0439, \\u043f\\u043e\\u043b\\u0443\\u043b\\u0443\\u043d\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439, \\u043d\\u043e, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u043a\\u0430\\u043b\\u0443\\u0433\\u0438, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0439 \\u043d\\u0430 \\u0431\\u043e\\u043a\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b, \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0432\\u0441\\u044e \\u0448\\u0438\\u0440\\u0438\\u043d\\u0443 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0438 \\u043e\\u043a\\u0440\\u0443\\u0436\\u0435\\u043d \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0439 \\u0433\\u0443\\u0431\\u043e\\u0439; \\u0443\\u0441\\u0438\\u043a\\u0438 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0448\\u0438\\u0440\\u0438\\u043d\\u043e\\u0439 \\u0438 \\u0445\\u0432\\u0430\\u0442\\u0430\\u044e\\u0442 \\u0434\\u043e \\u0440\\u0442\\u0430. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u0435 \\u0449\\u0438\\u0442\\u043a\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u0435 \\u0438 \\u0436\\u0443\\u0447\\u043a\\u0438, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0435, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u0441\\u044f \\u043e\\u0442\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u043c\\u0438: \\u0441\\u043f\\u0438\\u043d\\u043d\\u044b\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\\u0439 \\u0447\\u0430\\u0441\\u0442\\u044c\\u044e 12-13, \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 40-45 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0445 10-12.\",\"habitat\":\"\\u041e\\u0431\\u0438\\u0442\\u0430\\u0435\\u0442 \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430 \\u0443 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0431\\u0435\\u0440\\u0435\\u0433\\u043e\\u0432, \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0445 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 - 15-30 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0445\\u043e\\u0442\\u044f \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0435 \\u0432 100-300 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432. \\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0441\\u0442\\u0430\\u0439\\u043a\\u0430\\u043c\\u0438 \\u0443 \\u0434\\u043d\\u0430 \\u0438 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043b\\u0449\\u0443 \\u0432\\u043e\\u0434\\u044b.\\r\\n\\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u043c\\u044f\\u0433\\u043a\\u0438\\u0439 \\u0438\\u043b\\u0438\\u0441\\u0442\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u044b\\u0439 \\u0433\\u0440\\u0443\\u043d\\u0442, \\u043d\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0440\\u0430\\u043a\\u0443\\u0448\\u0435\\u0447\\u043d\\u0438\\u043a\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u0435\\u043d\\u0438\\u0441\\u0442\\u043e\\u043c \\u0434\\u043d\\u0435.\",\"food_features\":\"\\u041e\\u0442\\u044b\\u0441\\u043a\\u0438\\u0432\\u0430\\u0442\\u044c \\u043f\\u0438\\u0449\\u0443 \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u044e\\u0442 \\u0438\\u0445 \\u0434\\u043b\\u0438\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0438\\u043a\\u0438: \\u0440\\u044b\\u0431\\u043a\\u0430 \\u043c\\u0435\\u0434\\u043b\\u0435\\u043d\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0435\\u0442\\u0441\\u044f \\u0443 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430 \\u0438 \\u0442\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\\"\\u043e\\u0449\\u0443\\u043f\\u044b\\u0432\\u0430\\u0435\\u0442\\\" \\u0435\\u0433\\u043e \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u044c \\u0443\\u0441\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\\u0445 \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0434\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445. \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0431\\u0435\\u0441\\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u043e\\u0447\\u043d\\u044b\\u043c\\u0438.\",\"reproduction\":\"\\u041f\\u043e\\u043b\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0440\\u0435\\u043b\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0432\\u0442\\u043e\\u0440\\u043e\\u043c-\\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u043c \\u0433\\u043e\\u0434\\u0443 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u041d\\u0435\\u0440\\u0435\\u0441\\u0442 - \\u0441 \\u043c\\u0430\\u044f \\u043f\\u043e \\u0430\\u0432\\u0433\\u0443\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 \\u043e\\u0442 10 \\u0434\\u043e 55 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432 \\u0431\\u043b\\u0438\\u0437 \\u0438\\u043b\\u0438\\u0441\\u0442\\u043e\\u0433\\u043e \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430. \\u041a\\u0430\\u0436\\u0434\\u0430\\u044f \\u0441\\u0430\\u043c\\u043a\\u0430 \\u0432\\u044b\\u043c\\u0435\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0440\\u0446\\u0438\\u0439 \\u0438\\u043a\\u0440\\u044b, \\u043e\\u0431\\u0449\\u0430\\u044f \\u043f\\u043b\\u043e\\u0434\\u043e\\u0432\\u0438\\u0442\\u043e\\u0441\\u0442\\u044c \\u0437\\u0430 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0442 3,6 \\u0434\\u043e 88 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0438\\u043a\\u0440\\u0438\\u043d\\u043e\\u043a.\\r\\n\\u0412\\u044b\\u043c\\u0435\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f \\u0438 \\u043e\\u043f\\u043b\\u043e\\u0434\\u043e\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u0430\\u044f \\u0438\\u043a\\u0440\\u0430 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0440\\u0445\\u043d\\u0438\\u0435 \\u0441\\u043b\\u043e\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 3,5-2,5 \\u0434\\u043d\\u044f, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u044b, \\u0438\\u0437 \\u043d\\u0435\\u0435 \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043b\\u0438\\u0447\\u0438\\u043d\\u043a\\u0438. \\r\\n            \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u043c\\u0438 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u043c\\u0438 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430\\u043c\\u0438 \\u0442\\u043e\\u043b\\u0449\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u043c\\u0430\\u0441\\u043a\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0445\\u0438\\u0449\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u0438\\u0441\\u0442\\u043e\\u0439, \\u0441\\u0438\\u043d\\u0435\\u0432\\u0430\\u0442\\u043e-\\u0437\\u0435\\u043b\\u0435\\u043d\\u043e\\u0439 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u043e\\u0439. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u0447\\u0435\\u0440\\u0435\\u0437 1,5-2 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u044b\\u043b\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0430\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0438, \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0432 \\u0434\\u043b\\u0438\\u043d\\u044b 4-6 \\u0441\\u0430\\u043d\\u0442\\u0438\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u043e\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0434\\u043d\\u043e \\u0438 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u043b\\u044f \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u043e\\u0431\\u043b\\u0438\\u043a \\u0438 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u0443.\\r\\n\\u0412\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0435 \\u0431\\u0430\\u0440\\u0430\\u0431\\u0443\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0432\\u0435\\u0441\\u043d\\u043e\\u0439 \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0437\\u0434\\u0435\\u0441\\u044c \\u0434\\u043e \\u0437\\u0438\\u043c\\u044b, \\u0438\\u043d\\u043e\\u0433\\u0434\\u0430 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u0432 \\u0443\\u0441\\u0442\\u044c\\u044f\\u0445 \\u0440\\u0435\\u043a. \\u041d\\u0430 \\u0437\\u0438\\u043c\\u0443 \\u0440\\u044b\\u0431\\u044b \\u043e\\u0442\\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u044b. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 - 10-12 \\u043b\\u0435\\u0442, \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u043b\\u0435\\u0442\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u0442\\u044c \\u0434\\u043b\\u0438\\u043d\\u044b \\u043e\\u0442 4 \\u0434\\u043e 12 \\u0441\\u043c, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043d\\u0435\\u0440\\u0435\\u0441\\u0442\\u0430.\",\"catches\":\"\\u0427\\u0442\\u043e \\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u043b\\u043e\\u0432\\u043b\\u0438 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430, \\u0442\\u043e \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0441\\u043d\\u044b (\\u043a\\u0430\\u043a \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0435\\u0435\\u0442\\u0441\\u044f \\u0432\\u044b\\u0448\\u0435 10 \\u0433\\u0440\\u0430\\u0434\\u0443\\u0441\\u043e\\u0432) \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e \\u0441\\u0435\\u0440\\u0435\\u0434\\u0438\\u043d\\u044b \\u043e\\u0441\\u0435\\u043d\\u0438. \\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u043c\\u0435\\u0436\\u0443\\u0442\\u043e\\u043a \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u043a\\u043b\\u0435\\u0432\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u044b\\u0431\\u044b, \\u0438 \\u0441\\u043f\\u0430\\u0434\\u044b, \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0430\\u043a \\u0438 \\u0443 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439\\u0441\\u0442\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0435\\u0441\\u0442\\u044c \\u043e\\u0434\\u043d\\u0430 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u0435\\u0439\\u0448\\u0430\\u044f \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u043d\\u0430\\u0442\\u044c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0443: \\u0447\\u0435\\u043c \\u0436\\u0430\\u0440\\u0447\\u0435, \\u0442\\u0435\\u043c \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043a\\u043b\\u0435\\u0432 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430. \\u0418 \\u043d\\u0430\\u043e\\u0431\\u043e\\u0440\\u043e\\u0442.\\r\\n\\u0412 \\u0436\\u0430\\u0440\\u0443, \\u0431\\u0435\\u043b\\u044b\\u0439 \\u0430\\u043c\\u0443\\u0440 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442\\u0441\\u044f, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0432\\u044b\\u0434\\u0430\\u0432\\u0430\\u044f \\u0441\\u0432\\u043e\\u0435 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435: \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0434\\u0430\\u0436\\u0435 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0439 \\u0440\\u044b\\u0431\\u0430\\u043a \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c \\u043c\\u043e\\u0449\\u043d\\u044b\\u0435 \\u0432\\u0441\\u043f\\u043b\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0435\\u0441\\u044f \\u0432 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u043a\\u0440\\u0443\\u0433\\u0438, \\u0430 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0432\\u0435\\u0437\\u0435\\u0442 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0435\\u0441\\u043b\\u0438 \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0433\\u043e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0430), \\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0441\\u0430\\u043c\\u0443 \\u0440\\u044b\\u0431\\u0443.\\r\\n\\u041d\\u043e, \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0430\\u043c\\u0443\\u0440\\u0430 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u043f\\u043e\\u043b\\u043e\\u0432\\u0438\\u043d\\u0430 \\u0434\\u0435\\u043b\\u0430, \\u0434\\u0430\\u0436\\u0435 \\u0441\\u043a\\u0430\\u0436\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u043d\\u043e \\u043d\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0443\\u043b\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u0430 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0430 \\u0443\\u0434\\u0430\\u0441\\u0442\\u0441\\u044f.\",\"baits\":\"\\u041f\\u043e\\u043d\\u044f\\u0442\\u043d\\u043e, \\u0447\\u0442\\u043e \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u043b\\u0438\\u0441\\u0442\\u044c\\u044f \\u0438 \\u0441\\u0442\\u0435\\u0431\\u043b\\u0438 \\u043a\\u0430\\u043c\\u044b\\u0448\\u0430, \\u0441\\u0442\\u0435\\u0431\\u0435\\u043b\\u044c\\u043a\\u0438 \\u0438 \\u0437\\u0435\\u0440\\u043d\\u0430 \\u043a\\u0443\\u043a\\u0443\\u0440\\u0443\\u0437\\u044b, \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0440\\u043e\\u0441\\u043b\\u0438 (\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0438\\u0437 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0436\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u0430).\\r\\n\\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u0441\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0438 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438, \\u0432 \\u043e\\u0431\\u0449\\u0435\\u043c \\u2014 \\u0441 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0443\\u0436\\u043d\\u043e \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c. \\u0418 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0430\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442.\\r\\n\\u0422\\u0435\\u043e\\u0440\\u0438\\u044f \\u2014 \\u044d\\u0442\\u043e, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e, \\u043d\\u043e \\u0441\\u0430\\u043c\\u044b\\u0439 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434: \\u0432\\u0441\\u0435 \\u0443\\u0442\\u043e\\u0447\\u043d\\u0438\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431\\u0430\\u043a\\u043e\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043b\\u043e\\u0432\\u044f\\u0442 \\u043d\\u0430 \\u043f\\u043e\\u043f\\u043b\\u0430\\u0432\\u043e\\u0447\\u043d\\u0443\\u044e \\u0441\\u043d\\u0430\\u0441\\u0442\\u044c (\\u0448\\u0442\\u0435\\u043a\\u0435\\u0440, \\u043c\\u0430\\u0442\\u0447), \\u043d\\u0430 \\u0444\\u0438\\u0434\\u0435\\u0440, \\u043d\\u0430\\u0445\\u043b\\u044b\\u0441\\u0442\\u043e\\u043c.\\r\\n\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u043a\\u043e\\u0439, \\u043d\\u043e \\u043e\\u0447\\u0435\\u043d\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0438 \\u0437\\u0430\\u0445\\u0432\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439.\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\"}', '2022-01-20 14:15:38', '2022-01-20 14:15:38'),
(1324, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:15:38', '2022-01-20 14:15:38');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1325, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'PUT', '127.0.0.1', '{\"factors\":{\"14\":{\"opt_values\":\"-10,20.22\",\"weight\":\"0.93\",\"id\":\"14\",\"_remove_\":\"0\"},\"15\":{\"opt_values\":\"\\u0432\\u0435\\u0447\\u0435\\u0440,\\u0443\\u0442\\u0440\\u043e\",\"weight\":\"0.63\",\"id\":\"15\",\"_remove_\":\"0\"},\"16\":{\"opt_values\":\"\\u0437\\u0438\\u043c\\u0430\",\"weight\":\"0.51\",\"id\":\"16\",\"_remove_\":\"0\"},\"17\":{\"opt_values\":\"\\u0434\\u043e\\u0436\\u0434\\u044c,\\u044f\\u0441\\u043d\\u043e,\\u0441\\u043d\\u0435\\u0433,\\u0442\\u0443\\u043c\\u0430\\u043d,\\u043e\\u0431\\u043b\\u0430\\u0447\\u043d\\u043e\",\"weight\":\"0.56\",\"id\":\"17\",\"_remove_\":\"0\"},\"18\":{\"opt_values\":\"\\u0440\\u0430\\u0441\\u0442\\u0443\\u0449\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u0443\\u0431\\u044b\\u0432\\u0430\\u044e\\u0448\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",\"weight\":\"0.35\",\"id\":\"18\",\"_remove_\":\"0\"},\"19\":{\"opt_values\":\"4.92,7.07\",\"weight\":\"0.39\",\"id\":\"19\",\"_remove_\":\"0\"},\"20\":{\"opt_values\":\"848,854\",\"weight\":\"0.21\",\"id\":\"20\",\"_remove_\":\"0\"},\"21\":{\"opt_values\":\"57,100\",\"weight\":\"0.08\",\"id\":\"21\",\"_remove_\":\"0\"},\"22\":{\"opt_values\":\"57,86\",\"weight\":\"0.1\",\"id\":\"22\",\"_remove_\":\"0\"},\"23\":{\"opt_values\":\"0,8\",\"weight\":\"0.1\",\"id\":\"23\",\"_remove_\":\"0\"}},\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"Morone chrysops2\",\"other_names\":\"White bass (\\u0430\\u043d\\u0433\\u043b.)\",\"family\":\"\\u041a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435\",\"genus\":\"\\u0410\\u043c\\u0443\\u0440\\u044b \\u0431\\u0435\\u043b\\u044b\\u0435\",\"lifestyle\":\"\\u043f\\u0435\\u043b\\u0430\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439\",\"food_type\":\"\\u043c\\u0438\\u0440\\u043d\\u044b\\u0439\",\"area\":\"\\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0427\\u0435\\u0440\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0422\\u0438\\u0445\\u043e\\u0433\\u043e \\u043e\\u043a\\u0435\\u0430\\u043d\\u0430, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u041a\\u0430\\u0441\\u043f\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0410\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f\",\"appereance\":\"\\u0422\\u0435\\u043b\\u043e \\u043c\\u0430\\u0441\\u0441\\u0438\\u0432\\u043d\\u043e\\u0435, \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0435 (huso \\u0432 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u0435 \\u0441 \\u043b\\u0430\\u0442\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u2014 \\u0441\\u0432\\u0438\\u043d\\u044c\\u044f).\\r\\n\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430 \\u2014 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431. \\u0412 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u043b\\u0430 \\u0434\\u043b\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 1000 \\u043a\\u0433. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u044d\\u043a\\u0437\\u0435\\u043c\\u043f\\u043b\\u044f\\u0440\\u043e\\u0432, \\u0432\\u0438\\u0434\\u0438\\u043c\\u043e, \\u043f\\u0440\\u0435\\u0432\\u044b\\u0448\\u0430\\u043b\\u0430 100 \\u043b\\u0435\\u0442.\\r\\n\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442 \\u0432 46 \\u043b\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d \\u0432 1977 \\u0433 \\u0438 44 \\u0433\\u043e\\u0434\\u0430 \\u0432 1983 \\u0433. \\u0412 1970 \\u0433. \\u0432 \\u043f\\u0440\\u043e\\u043c\\u044b\\u0441\\u043b\\u043e\\u0432\\u044b\\u0445 \\u0443\\u043b\\u043e\\u0432\\u0430\\u0445 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435 \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0434\\u043b\\u0438\\u043d\\u0430 \\u0441\\u0430\\u043c\\u043e\\u043a \\u0431\\u0435\\u043b\\u0443\\u0433\\u0438 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u0430 267 \\u0441\\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u0430 142 \\u043a\\u0433, \\u0441\\u0430\\u043c\\u0446\\u043e\\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e 221 \\u0441\\u043c \\u0438 81 \\u043a\\u0433. \\u041e\\u0431\\u0449\\u0438\\u0439 \\u0446\\u0432\\u0435\\u0442 \\u0442\\u0435\\u043b\\u0430 \\u043f\\u0435\\u043f\\u0435\\u043b\\u044c\\u043d\\u043e-\\u0441\\u0435\\u0440\\u044b\\u0439, \\u0431\\u0440\\u044e\\u0445\\u043e \\u0441\\u0435\\u0440\\u043e\\u0432\\u0430\\u0442\\u043e- \\u0431\\u0435\\u043b\\u043e\\u0435, \\u043d\\u043e\\u0441 \\u0436\\u0435\\u043b\\u0442\\u043e\\u0432\\u0430\\u0442\\u044b\\u0439.\\r\\n\\u041a\\u0440\\u043e\\u043c\\u0435 \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u044b, \\u0431\\u0435\\u043b\\u0443\\u0433\\u0430 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043e\\u0441\\u0435\\u0442\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u0441\\u0432\\u043e\\u0438\\u043c \\u0442\\u043e\\u043b\\u0441\\u0442\\u044b\\u043c \\u0446\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0442\\u0443\\u043b\\u043e\\u0432\\u0438\\u0449\\u0435\\u043c \\u0438 \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u0438\\u043c \\u0437\\u0430\\u043e\\u0441\\u0442\\u0440\\u0435\\u043d\\u043d\\u044b\\u043c \\u043d\\u043e\\u0441\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u043e\\u0441\\u0432\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442 \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u043c\\u0438 \\u0449\\u0438\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438.\\r\\n\\u0420\\u044b\\u043b\\u043e \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0435, \\u0442\\u0443\\u043f\\u043e\\u0435. \\u0420\\u043e\\u0442 \\u0443 \\u043d\\u0435\\u0435 \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u044b\\u0439, \\u043f\\u043e\\u043b\\u0443\\u043b\\u0443\\u043d\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439, \\u043d\\u043e, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u043a\\u0430\\u043b\\u0443\\u0433\\u0438, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0439 \\u043d\\u0430 \\u0431\\u043e\\u043a\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b, \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0432\\u0441\\u044e \\u0448\\u0438\\u0440\\u0438\\u043d\\u0443 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0438 \\u043e\\u043a\\u0440\\u0443\\u0436\\u0435\\u043d \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0439 \\u0433\\u0443\\u0431\\u043e\\u0439; \\u0443\\u0441\\u0438\\u043a\\u0438 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0448\\u0438\\u0440\\u0438\\u043d\\u043e\\u0439 \\u0438 \\u0445\\u0432\\u0430\\u0442\\u0430\\u044e\\u0442 \\u0434\\u043e \\u0440\\u0442\\u0430. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u0435 \\u0449\\u0438\\u0442\\u043a\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u0435 \\u0438 \\u0436\\u0443\\u0447\\u043a\\u0438, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0435, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u0441\\u044f \\u043e\\u0442\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u043c\\u0438: \\u0441\\u043f\\u0438\\u043d\\u043d\\u044b\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\\u0439 \\u0447\\u0430\\u0441\\u0442\\u044c\\u044e 12-13, \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 40-45 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0445 10-12.\",\"habitat\":\"\\u041e\\u0431\\u0438\\u0442\\u0430\\u0435\\u0442 \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430 \\u0443 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0431\\u0435\\u0440\\u0435\\u0433\\u043e\\u0432, \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0445 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 - 15-30 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0445\\u043e\\u0442\\u044f \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0435 \\u0432 100-300 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432. \\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0441\\u0442\\u0430\\u0439\\u043a\\u0430\\u043c\\u0438 \\u0443 \\u0434\\u043d\\u0430 \\u0438 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043b\\u0449\\u0443 \\u0432\\u043e\\u0434\\u044b.\\r\\n\\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u043c\\u044f\\u0433\\u043a\\u0438\\u0439 \\u0438\\u043b\\u0438\\u0441\\u0442\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u044b\\u0439 \\u0433\\u0440\\u0443\\u043d\\u0442, \\u043d\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0440\\u0430\\u043a\\u0443\\u0448\\u0435\\u0447\\u043d\\u0438\\u043a\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u0435\\u043d\\u0438\\u0441\\u0442\\u043e\\u043c \\u0434\\u043d\\u0435.\",\"food_features\":\"\\u041e\\u0442\\u044b\\u0441\\u043a\\u0438\\u0432\\u0430\\u0442\\u044c \\u043f\\u0438\\u0449\\u0443 \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u044e\\u0442 \\u0438\\u0445 \\u0434\\u043b\\u0438\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0438\\u043a\\u0438: \\u0440\\u044b\\u0431\\u043a\\u0430 \\u043c\\u0435\\u0434\\u043b\\u0435\\u043d\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0435\\u0442\\u0441\\u044f \\u0443 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430 \\u0438 \\u0442\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\\"\\u043e\\u0449\\u0443\\u043f\\u044b\\u0432\\u0430\\u0435\\u0442\\\" \\u0435\\u0433\\u043e \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u044c \\u0443\\u0441\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\\u0445 \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0434\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445. \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0431\\u0435\\u0441\\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u043e\\u0447\\u043d\\u044b\\u043c\\u0438.\",\"reproduction\":\"\\u041f\\u043e\\u043b\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0440\\u0435\\u043b\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0432\\u0442\\u043e\\u0440\\u043e\\u043c-\\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u043c \\u0433\\u043e\\u0434\\u0443 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u041d\\u0435\\u0440\\u0435\\u0441\\u0442 - \\u0441 \\u043c\\u0430\\u044f \\u043f\\u043e \\u0430\\u0432\\u0433\\u0443\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 \\u043e\\u0442 10 \\u0434\\u043e 55 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432 \\u0431\\u043b\\u0438\\u0437 \\u0438\\u043b\\u0438\\u0441\\u0442\\u043e\\u0433\\u043e \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430. \\u041a\\u0430\\u0436\\u0434\\u0430\\u044f \\u0441\\u0430\\u043c\\u043a\\u0430 \\u0432\\u044b\\u043c\\u0435\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0440\\u0446\\u0438\\u0439 \\u0438\\u043a\\u0440\\u044b, \\u043e\\u0431\\u0449\\u0430\\u044f \\u043f\\u043b\\u043e\\u0434\\u043e\\u0432\\u0438\\u0442\\u043e\\u0441\\u0442\\u044c \\u0437\\u0430 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0442 3,6 \\u0434\\u043e 88 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0438\\u043a\\u0440\\u0438\\u043d\\u043e\\u043a.\\r\\n\\u0412\\u044b\\u043c\\u0435\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f \\u0438 \\u043e\\u043f\\u043b\\u043e\\u0434\\u043e\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u0430\\u044f \\u0438\\u043a\\u0440\\u0430 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0440\\u0445\\u043d\\u0438\\u0435 \\u0441\\u043b\\u043e\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 3,5-2,5 \\u0434\\u043d\\u044f, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u044b, \\u0438\\u0437 \\u043d\\u0435\\u0435 \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043b\\u0438\\u0447\\u0438\\u043d\\u043a\\u0438. \\r\\n            \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u043c\\u0438 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u043c\\u0438 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430\\u043c\\u0438 \\u0442\\u043e\\u043b\\u0449\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u043c\\u0430\\u0441\\u043a\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0445\\u0438\\u0449\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u0438\\u0441\\u0442\\u043e\\u0439, \\u0441\\u0438\\u043d\\u0435\\u0432\\u0430\\u0442\\u043e-\\u0437\\u0435\\u043b\\u0435\\u043d\\u043e\\u0439 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u043e\\u0439. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u0447\\u0435\\u0440\\u0435\\u0437 1,5-2 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u044b\\u043b\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0430\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0438, \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0432 \\u0434\\u043b\\u0438\\u043d\\u044b 4-6 \\u0441\\u0430\\u043d\\u0442\\u0438\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u043e\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0434\\u043d\\u043e \\u0438 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u043b\\u044f \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u043e\\u0431\\u043b\\u0438\\u043a \\u0438 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u0443.\\r\\n\\u0412\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0435 \\u0431\\u0430\\u0440\\u0430\\u0431\\u0443\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0432\\u0435\\u0441\\u043d\\u043e\\u0439 \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0437\\u0434\\u0435\\u0441\\u044c \\u0434\\u043e \\u0437\\u0438\\u043c\\u044b, \\u0438\\u043d\\u043e\\u0433\\u0434\\u0430 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u0432 \\u0443\\u0441\\u0442\\u044c\\u044f\\u0445 \\u0440\\u0435\\u043a. \\u041d\\u0430 \\u0437\\u0438\\u043c\\u0443 \\u0440\\u044b\\u0431\\u044b \\u043e\\u0442\\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u044b. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 - 10-12 \\u043b\\u0435\\u0442, \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u043b\\u0435\\u0442\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u0442\\u044c \\u0434\\u043b\\u0438\\u043d\\u044b \\u043e\\u0442 4 \\u0434\\u043e 12 \\u0441\\u043c, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043d\\u0435\\u0440\\u0435\\u0441\\u0442\\u0430.\",\"catches\":\"\\u0427\\u0442\\u043e \\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u043b\\u043e\\u0432\\u043b\\u0438 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430, \\u0442\\u043e \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0441\\u043d\\u044b (\\u043a\\u0430\\u043a \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0435\\u0435\\u0442\\u0441\\u044f \\u0432\\u044b\\u0448\\u0435 10 \\u0433\\u0440\\u0430\\u0434\\u0443\\u0441\\u043e\\u0432) \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e \\u0441\\u0435\\u0440\\u0435\\u0434\\u0438\\u043d\\u044b \\u043e\\u0441\\u0435\\u043d\\u0438. \\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u043c\\u0435\\u0436\\u0443\\u0442\\u043e\\u043a \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u043a\\u043b\\u0435\\u0432\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u044b\\u0431\\u044b, \\u0438 \\u0441\\u043f\\u0430\\u0434\\u044b, \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0430\\u043a \\u0438 \\u0443 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439\\u0441\\u0442\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0435\\u0441\\u0442\\u044c \\u043e\\u0434\\u043d\\u0430 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u0435\\u0439\\u0448\\u0430\\u044f \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u043d\\u0430\\u0442\\u044c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0443: \\u0447\\u0435\\u043c \\u0436\\u0430\\u0440\\u0447\\u0435, \\u0442\\u0435\\u043c \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043a\\u043b\\u0435\\u0432 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430. \\u0418 \\u043d\\u0430\\u043e\\u0431\\u043e\\u0440\\u043e\\u0442.\\r\\n\\u0412 \\u0436\\u0430\\u0440\\u0443, \\u0431\\u0435\\u043b\\u044b\\u0439 \\u0430\\u043c\\u0443\\u0440 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442\\u0441\\u044f, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0432\\u044b\\u0434\\u0430\\u0432\\u0430\\u044f \\u0441\\u0432\\u043e\\u0435 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435: \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0434\\u0430\\u0436\\u0435 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0439 \\u0440\\u044b\\u0431\\u0430\\u043a \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c \\u043c\\u043e\\u0449\\u043d\\u044b\\u0435 \\u0432\\u0441\\u043f\\u043b\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0435\\u0441\\u044f \\u0432 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u043a\\u0440\\u0443\\u0433\\u0438, \\u0430 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0432\\u0435\\u0437\\u0435\\u0442 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0435\\u0441\\u043b\\u0438 \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0433\\u043e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0430), \\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0441\\u0430\\u043c\\u0443 \\u0440\\u044b\\u0431\\u0443.\\r\\n\\u041d\\u043e, \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0430\\u043c\\u0443\\u0440\\u0430 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u043f\\u043e\\u043b\\u043e\\u0432\\u0438\\u043d\\u0430 \\u0434\\u0435\\u043b\\u0430, \\u0434\\u0430\\u0436\\u0435 \\u0441\\u043a\\u0430\\u0436\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u043d\\u043e \\u043d\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0443\\u043b\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u0430 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0430 \\u0443\\u0434\\u0430\\u0441\\u0442\\u0441\\u044f.\",\"baits\":\"\\u041f\\u043e\\u043d\\u044f\\u0442\\u043d\\u043e, \\u0447\\u0442\\u043e \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u043b\\u0438\\u0441\\u0442\\u044c\\u044f \\u0438 \\u0441\\u0442\\u0435\\u0431\\u043b\\u0438 \\u043a\\u0430\\u043c\\u044b\\u0448\\u0430, \\u0441\\u0442\\u0435\\u0431\\u0435\\u043b\\u044c\\u043a\\u0438 \\u0438 \\u0437\\u0435\\u0440\\u043d\\u0430 \\u043a\\u0443\\u043a\\u0443\\u0440\\u0443\\u0437\\u044b, \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0440\\u043e\\u0441\\u043b\\u0438 (\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0438\\u0437 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0436\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u0430).\\r\\n\\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u0441\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0438 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438, \\u0432 \\u043e\\u0431\\u0449\\u0435\\u043c \\u2014 \\u0441 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0443\\u0436\\u043d\\u043e \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c. \\u0418 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0430\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442.\\r\\n\\u0422\\u0435\\u043e\\u0440\\u0438\\u044f \\u2014 \\u044d\\u0442\\u043e, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e, \\u043d\\u043e \\u0441\\u0430\\u043c\\u044b\\u0439 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434: \\u0432\\u0441\\u0435 \\u0443\\u0442\\u043e\\u0447\\u043d\\u0438\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431\\u0430\\u043a\\u043e\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043b\\u043e\\u0432\\u044f\\u0442 \\u043d\\u0430 \\u043f\\u043e\\u043f\\u043b\\u0430\\u0432\\u043e\\u0447\\u043d\\u0443\\u044e \\u0441\\u043d\\u0430\\u0441\\u0442\\u044c (\\u0448\\u0442\\u0435\\u043a\\u0435\\u0440, \\u043c\\u0430\\u0442\\u0447), \\u043d\\u0430 \\u0444\\u0438\\u0434\\u0435\\u0440, \\u043d\\u0430\\u0445\\u043b\\u044b\\u0441\\u0442\\u043e\\u043c.\\r\\n\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u043a\\u043e\\u0439, \\u043d\\u043e \\u043e\\u0447\\u0435\\u043d\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0438 \\u0437\\u0430\\u0445\\u0432\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439.\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\"}', '2022-01-20 14:18:40', '2022-01-20 14:18:40'),
(1326, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:18:40', '2022-01-20 14:18:40'),
(1327, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:19:33', '2022-01-20 14:19:33'),
(1328, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:19:37', '2022-01-20 14:19:37'),
(1329, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:19:55', '2022-01-20 14:19:55'),
(1330, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:20:02', '2022-01-20 14:20:02'),
(1331, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:20:05', '2022-01-20 14:20:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1332, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'PUT', '127.0.0.1', '{\"factors\":{\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\":{\"opt_values\":\"0,8\",\"weight\":\"0.1\",\"fish_name\":\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"_remove_\":\"0\"}},\"name\":\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"Morone chrysops2\",\"other_names\":\"White bass (\\u0430\\u043d\\u0433\\u043b.)\",\"family\":\"\\u041a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435\",\"genus\":\"\\u0410\\u043c\\u0443\\u0440\\u044b \\u0431\\u0435\\u043b\\u044b\\u0435\",\"lifestyle\":\"\\u043f\\u0435\\u043b\\u0430\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439\",\"food_type\":\"\\u043c\\u0438\\u0440\\u043d\\u044b\\u0439\",\"area\":\"\\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0427\\u0435\\u0440\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0422\\u0438\\u0445\\u043e\\u0433\\u043e \\u043e\\u043a\\u0435\\u0430\\u043d\\u0430, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u041a\\u0430\\u0441\\u043f\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0410\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f\",\"appereance\":\"\\u0422\\u0435\\u043b\\u043e \\u043c\\u0430\\u0441\\u0441\\u0438\\u0432\\u043d\\u043e\\u0435, \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0435 (huso \\u0432 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u0435 \\u0441 \\u043b\\u0430\\u0442\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u2014 \\u0441\\u0432\\u0438\\u043d\\u044c\\u044f).\\r\\n\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430 \\u2014 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431. \\u0412 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u043b\\u0430 \\u0434\\u043b\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 1000 \\u043a\\u0433. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u044d\\u043a\\u0437\\u0435\\u043c\\u043f\\u043b\\u044f\\u0440\\u043e\\u0432, \\u0432\\u0438\\u0434\\u0438\\u043c\\u043e, \\u043f\\u0440\\u0435\\u0432\\u044b\\u0448\\u0430\\u043b\\u0430 100 \\u043b\\u0435\\u0442.\\r\\n\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442 \\u0432 46 \\u043b\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d \\u0432 1977 \\u0433 \\u0438 44 \\u0433\\u043e\\u0434\\u0430 \\u0432 1983 \\u0433. \\u0412 1970 \\u0433. \\u0432 \\u043f\\u0440\\u043e\\u043c\\u044b\\u0441\\u043b\\u043e\\u0432\\u044b\\u0445 \\u0443\\u043b\\u043e\\u0432\\u0430\\u0445 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435 \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0434\\u043b\\u0438\\u043d\\u0430 \\u0441\\u0430\\u043c\\u043e\\u043a \\u0431\\u0435\\u043b\\u0443\\u0433\\u0438 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u0430 267 \\u0441\\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u0430 142 \\u043a\\u0433, \\u0441\\u0430\\u043c\\u0446\\u043e\\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e 221 \\u0441\\u043c \\u0438 81 \\u043a\\u0433. \\u041e\\u0431\\u0449\\u0438\\u0439 \\u0446\\u0432\\u0435\\u0442 \\u0442\\u0435\\u043b\\u0430 \\u043f\\u0435\\u043f\\u0435\\u043b\\u044c\\u043d\\u043e-\\u0441\\u0435\\u0440\\u044b\\u0439, \\u0431\\u0440\\u044e\\u0445\\u043e \\u0441\\u0435\\u0440\\u043e\\u0432\\u0430\\u0442\\u043e- \\u0431\\u0435\\u043b\\u043e\\u0435, \\u043d\\u043e\\u0441 \\u0436\\u0435\\u043b\\u0442\\u043e\\u0432\\u0430\\u0442\\u044b\\u0439.\\r\\n\\u041a\\u0440\\u043e\\u043c\\u0435 \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u044b, \\u0431\\u0435\\u043b\\u0443\\u0433\\u0430 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043e\\u0441\\u0435\\u0442\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u0441\\u0432\\u043e\\u0438\\u043c \\u0442\\u043e\\u043b\\u0441\\u0442\\u044b\\u043c \\u0446\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0442\\u0443\\u043b\\u043e\\u0432\\u0438\\u0449\\u0435\\u043c \\u0438 \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u0438\\u043c \\u0437\\u0430\\u043e\\u0441\\u0442\\u0440\\u0435\\u043d\\u043d\\u044b\\u043c \\u043d\\u043e\\u0441\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u043e\\u0441\\u0432\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442 \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u043c\\u0438 \\u0449\\u0438\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438.\\r\\n\\u0420\\u044b\\u043b\\u043e \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0435, \\u0442\\u0443\\u043f\\u043e\\u0435. \\u0420\\u043e\\u0442 \\u0443 \\u043d\\u0435\\u0435 \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u044b\\u0439, \\u043f\\u043e\\u043b\\u0443\\u043b\\u0443\\u043d\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439, \\u043d\\u043e, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u043a\\u0430\\u043b\\u0443\\u0433\\u0438, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0439 \\u043d\\u0430 \\u0431\\u043e\\u043a\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b, \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0432\\u0441\\u044e \\u0448\\u0438\\u0440\\u0438\\u043d\\u0443 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0438 \\u043e\\u043a\\u0440\\u0443\\u0436\\u0435\\u043d \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0439 \\u0433\\u0443\\u0431\\u043e\\u0439; \\u0443\\u0441\\u0438\\u043a\\u0438 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0448\\u0438\\u0440\\u0438\\u043d\\u043e\\u0439 \\u0438 \\u0445\\u0432\\u0430\\u0442\\u0430\\u044e\\u0442 \\u0434\\u043e \\u0440\\u0442\\u0430. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u0435 \\u0449\\u0438\\u0442\\u043a\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u0435 \\u0438 \\u0436\\u0443\\u0447\\u043a\\u0438, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0435, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u0441\\u044f \\u043e\\u0442\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u043c\\u0438: \\u0441\\u043f\\u0438\\u043d\\u043d\\u044b\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\\u0439 \\u0447\\u0430\\u0441\\u0442\\u044c\\u044e 12-13, \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 40-45 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0445 10-12.\",\"habitat\":\"\\u041e\\u0431\\u0438\\u0442\\u0430\\u0435\\u0442 \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430 \\u0443 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0431\\u0435\\u0440\\u0435\\u0433\\u043e\\u0432, \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0445 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 - 15-30 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0445\\u043e\\u0442\\u044f \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0435 \\u0432 100-300 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432. \\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0441\\u0442\\u0430\\u0439\\u043a\\u0430\\u043c\\u0438 \\u0443 \\u0434\\u043d\\u0430 \\u0438 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043b\\u0449\\u0443 \\u0432\\u043e\\u0434\\u044b.\\r\\n\\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u043c\\u044f\\u0433\\u043a\\u0438\\u0439 \\u0438\\u043b\\u0438\\u0441\\u0442\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u044b\\u0439 \\u0433\\u0440\\u0443\\u043d\\u0442, \\u043d\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0440\\u0430\\u043a\\u0443\\u0448\\u0435\\u0447\\u043d\\u0438\\u043a\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u0435\\u043d\\u0438\\u0441\\u0442\\u043e\\u043c \\u0434\\u043d\\u0435.\",\"food_features\":\"\\u041e\\u0442\\u044b\\u0441\\u043a\\u0438\\u0432\\u0430\\u0442\\u044c \\u043f\\u0438\\u0449\\u0443 \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u044e\\u0442 \\u0438\\u0445 \\u0434\\u043b\\u0438\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0438\\u043a\\u0438: \\u0440\\u044b\\u0431\\u043a\\u0430 \\u043c\\u0435\\u0434\\u043b\\u0435\\u043d\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0435\\u0442\\u0441\\u044f \\u0443 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430 \\u0438 \\u0442\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\\"\\u043e\\u0449\\u0443\\u043f\\u044b\\u0432\\u0430\\u0435\\u0442\\\" \\u0435\\u0433\\u043e \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u044c \\u0443\\u0441\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\\u0445 \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0434\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445. \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0431\\u0435\\u0441\\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u043e\\u0447\\u043d\\u044b\\u043c\\u0438.\",\"reproduction\":\"\\u041f\\u043e\\u043b\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0440\\u0435\\u043b\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0432\\u0442\\u043e\\u0440\\u043e\\u043c-\\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u043c \\u0433\\u043e\\u0434\\u0443 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u041d\\u0435\\u0440\\u0435\\u0441\\u0442 - \\u0441 \\u043c\\u0430\\u044f \\u043f\\u043e \\u0430\\u0432\\u0433\\u0443\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 \\u043e\\u0442 10 \\u0434\\u043e 55 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432 \\u0431\\u043b\\u0438\\u0437 \\u0438\\u043b\\u0438\\u0441\\u0442\\u043e\\u0433\\u043e \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430. \\u041a\\u0430\\u0436\\u0434\\u0430\\u044f \\u0441\\u0430\\u043c\\u043a\\u0430 \\u0432\\u044b\\u043c\\u0435\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0440\\u0446\\u0438\\u0439 \\u0438\\u043a\\u0440\\u044b, \\u043e\\u0431\\u0449\\u0430\\u044f \\u043f\\u043b\\u043e\\u0434\\u043e\\u0432\\u0438\\u0442\\u043e\\u0441\\u0442\\u044c \\u0437\\u0430 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0442 3,6 \\u0434\\u043e 88 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0438\\u043a\\u0440\\u0438\\u043d\\u043e\\u043a.\\r\\n\\u0412\\u044b\\u043c\\u0435\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f \\u0438 \\u043e\\u043f\\u043b\\u043e\\u0434\\u043e\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u0430\\u044f \\u0438\\u043a\\u0440\\u0430 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0440\\u0445\\u043d\\u0438\\u0435 \\u0441\\u043b\\u043e\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 3,5-2,5 \\u0434\\u043d\\u044f, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u044b, \\u0438\\u0437 \\u043d\\u0435\\u0435 \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043b\\u0438\\u0447\\u0438\\u043d\\u043a\\u0438. \\r\\n            \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u043c\\u0438 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u043c\\u0438 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430\\u043c\\u0438 \\u0442\\u043e\\u043b\\u0449\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u043c\\u0430\\u0441\\u043a\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0445\\u0438\\u0449\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u0438\\u0441\\u0442\\u043e\\u0439, \\u0441\\u0438\\u043d\\u0435\\u0432\\u0430\\u0442\\u043e-\\u0437\\u0435\\u043b\\u0435\\u043d\\u043e\\u0439 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u043e\\u0439. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u0447\\u0435\\u0440\\u0435\\u0437 1,5-2 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u044b\\u043b\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0430\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0438, \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0432 \\u0434\\u043b\\u0438\\u043d\\u044b 4-6 \\u0441\\u0430\\u043d\\u0442\\u0438\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u043e\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0434\\u043d\\u043e \\u0438 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u043b\\u044f \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u043e\\u0431\\u043b\\u0438\\u043a \\u0438 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u0443.\\r\\n\\u0412\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0435 \\u0431\\u0430\\u0440\\u0430\\u0431\\u0443\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0432\\u0435\\u0441\\u043d\\u043e\\u0439 \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0437\\u0434\\u0435\\u0441\\u044c \\u0434\\u043e \\u0437\\u0438\\u043c\\u044b, \\u0438\\u043d\\u043e\\u0433\\u0434\\u0430 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u0432 \\u0443\\u0441\\u0442\\u044c\\u044f\\u0445 \\u0440\\u0435\\u043a. \\u041d\\u0430 \\u0437\\u0438\\u043c\\u0443 \\u0440\\u044b\\u0431\\u044b \\u043e\\u0442\\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u044b. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 - 10-12 \\u043b\\u0435\\u0442, \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u043b\\u0435\\u0442\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u0442\\u044c \\u0434\\u043b\\u0438\\u043d\\u044b \\u043e\\u0442 4 \\u0434\\u043e 12 \\u0441\\u043c, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043d\\u0435\\u0440\\u0435\\u0441\\u0442\\u0430.\",\"catches\":\"\\u0427\\u0442\\u043e \\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u043b\\u043e\\u0432\\u043b\\u0438 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430, \\u0442\\u043e \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0441\\u043d\\u044b (\\u043a\\u0430\\u043a \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0435\\u0435\\u0442\\u0441\\u044f \\u0432\\u044b\\u0448\\u0435 10 \\u0433\\u0440\\u0430\\u0434\\u0443\\u0441\\u043e\\u0432) \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e \\u0441\\u0435\\u0440\\u0435\\u0434\\u0438\\u043d\\u044b \\u043e\\u0441\\u0435\\u043d\\u0438. \\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u043c\\u0435\\u0436\\u0443\\u0442\\u043e\\u043a \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u043a\\u043b\\u0435\\u0432\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u044b\\u0431\\u044b, \\u0438 \\u0441\\u043f\\u0430\\u0434\\u044b, \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0430\\u043a \\u0438 \\u0443 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439\\u0441\\u0442\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0435\\u0441\\u0442\\u044c \\u043e\\u0434\\u043d\\u0430 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u0435\\u0439\\u0448\\u0430\\u044f \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u043d\\u0430\\u0442\\u044c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0443: \\u0447\\u0435\\u043c \\u0436\\u0430\\u0440\\u0447\\u0435, \\u0442\\u0435\\u043c \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043a\\u043b\\u0435\\u0432 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430. \\u0418 \\u043d\\u0430\\u043e\\u0431\\u043e\\u0440\\u043e\\u0442.\\r\\n\\u0412 \\u0436\\u0430\\u0440\\u0443, \\u0431\\u0435\\u043b\\u044b\\u0439 \\u0430\\u043c\\u0443\\u0440 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442\\u0441\\u044f, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0432\\u044b\\u0434\\u0430\\u0432\\u0430\\u044f \\u0441\\u0432\\u043e\\u0435 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435: \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0434\\u0430\\u0436\\u0435 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0439 \\u0440\\u044b\\u0431\\u0430\\u043a \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c \\u043c\\u043e\\u0449\\u043d\\u044b\\u0435 \\u0432\\u0441\\u043f\\u043b\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0435\\u0441\\u044f \\u0432 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u043a\\u0440\\u0443\\u0433\\u0438, \\u0430 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0432\\u0435\\u0437\\u0435\\u0442 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0435\\u0441\\u043b\\u0438 \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0433\\u043e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0430), \\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0441\\u0430\\u043c\\u0443 \\u0440\\u044b\\u0431\\u0443.\\r\\n\\u041d\\u043e, \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0430\\u043c\\u0443\\u0440\\u0430 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u043f\\u043e\\u043b\\u043e\\u0432\\u0438\\u043d\\u0430 \\u0434\\u0435\\u043b\\u0430, \\u0434\\u0430\\u0436\\u0435 \\u0441\\u043a\\u0430\\u0436\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u043d\\u043e \\u043d\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0443\\u043b\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u0430 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0430 \\u0443\\u0434\\u0430\\u0441\\u0442\\u0441\\u044f.\",\"baits\":\"\\u041f\\u043e\\u043d\\u044f\\u0442\\u043d\\u043e, \\u0447\\u0442\\u043e \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u043b\\u0438\\u0441\\u0442\\u044c\\u044f \\u0438 \\u0441\\u0442\\u0435\\u0431\\u043b\\u0438 \\u043a\\u0430\\u043c\\u044b\\u0448\\u0430, \\u0441\\u0442\\u0435\\u0431\\u0435\\u043b\\u044c\\u043a\\u0438 \\u0438 \\u0437\\u0435\\u0440\\u043d\\u0430 \\u043a\\u0443\\u043a\\u0443\\u0440\\u0443\\u0437\\u044b, \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0440\\u043e\\u0441\\u043b\\u0438 (\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0438\\u0437 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0436\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u0430).\\r\\n\\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u0441\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0438 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438, \\u0432 \\u043e\\u0431\\u0449\\u0435\\u043c \\u2014 \\u0441 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0443\\u0436\\u043d\\u043e \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c. \\u0418 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0430\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442.\\r\\n\\u0422\\u0435\\u043e\\u0440\\u0438\\u044f \\u2014 \\u044d\\u0442\\u043e, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e, \\u043d\\u043e \\u0441\\u0430\\u043c\\u044b\\u0439 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434: \\u0432\\u0441\\u0435 \\u0443\\u0442\\u043e\\u0447\\u043d\\u0438\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431\\u0430\\u043a\\u043e\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043b\\u043e\\u0432\\u044f\\u0442 \\u043d\\u0430 \\u043f\\u043e\\u043f\\u043b\\u0430\\u0432\\u043e\\u0447\\u043d\\u0443\\u044e \\u0441\\u043d\\u0430\\u0441\\u0442\\u044c (\\u0448\\u0442\\u0435\\u043a\\u0435\\u0440, \\u043c\\u0430\\u0442\\u0447), \\u043d\\u0430 \\u0444\\u0438\\u0434\\u0435\\u0440, \\u043d\\u0430\\u0445\\u043b\\u044b\\u0441\\u0442\\u043e\\u043c.\\r\\n\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u043a\\u043e\\u0439, \\u043d\\u043e \\u043e\\u0447\\u0435\\u043d\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0438 \\u0437\\u0430\\u0445\\u0432\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439.\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:20:20', '2022-01-20 14:20:20'),
(1333, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:20:21', '2022-01-20 14:20:21'),
(1334, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:20:33', '2022-01-20 14:20:33');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1335, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'PUT', '127.0.0.1', '{\"factors\":{\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\":{\"opt_values\":\"0,8\",\"weight\":\"0.1\",\"fish_name\":\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"_remove_\":\"0\"}},\"name\":\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"Morone chrysops\",\"other_names\":\"White bass (\\u0430\\u043d\\u0433\\u043b.)\",\"family\":\"\\u041a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435\",\"genus\":\"\\u0410\\u043c\\u0443\\u0440\\u044b \\u0431\\u0435\\u043b\\u044b\\u0435\",\"lifestyle\":\"\\u043f\\u0435\\u043b\\u0430\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439\",\"food_type\":\"\\u043c\\u0438\\u0440\\u043d\\u044b\\u0439\",\"area\":\"\\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0427\\u0435\\u0440\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0422\\u0438\\u0445\\u043e\\u0433\\u043e \\u043e\\u043a\\u0435\\u0430\\u043d\\u0430, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u041a\\u0430\\u0441\\u043f\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0410\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f\",\"appereance\":\"\\u0422\\u0435\\u043b\\u043e \\u043c\\u0430\\u0441\\u0441\\u0438\\u0432\\u043d\\u043e\\u0435, \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0435 (huso \\u0432 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u0435 \\u0441 \\u043b\\u0430\\u0442\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u2014 \\u0441\\u0432\\u0438\\u043d\\u044c\\u044f).\\r\\n\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430 \\u2014 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431. \\u0412 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u043b\\u0430 \\u0434\\u043b\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 1000 \\u043a\\u0433. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u044d\\u043a\\u0437\\u0435\\u043c\\u043f\\u043b\\u044f\\u0440\\u043e\\u0432, \\u0432\\u0438\\u0434\\u0438\\u043c\\u043e, \\u043f\\u0440\\u0435\\u0432\\u044b\\u0448\\u0430\\u043b\\u0430 100 \\u043b\\u0435\\u0442.\\r\\n\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442 \\u0432 46 \\u043b\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d \\u0432 1977 \\u0433 \\u0438 44 \\u0433\\u043e\\u0434\\u0430 \\u0432 1983 \\u0433. \\u0412 1970 \\u0433. \\u0432 \\u043f\\u0440\\u043e\\u043c\\u044b\\u0441\\u043b\\u043e\\u0432\\u044b\\u0445 \\u0443\\u043b\\u043e\\u0432\\u0430\\u0445 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435 \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0434\\u043b\\u0438\\u043d\\u0430 \\u0441\\u0430\\u043c\\u043e\\u043a \\u0431\\u0435\\u043b\\u0443\\u0433\\u0438 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u0430 267 \\u0441\\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u0430 142 \\u043a\\u0433, \\u0441\\u0430\\u043c\\u0446\\u043e\\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e 221 \\u0441\\u043c \\u0438 81 \\u043a\\u0433. \\u041e\\u0431\\u0449\\u0438\\u0439 \\u0446\\u0432\\u0435\\u0442 \\u0442\\u0435\\u043b\\u0430 \\u043f\\u0435\\u043f\\u0435\\u043b\\u044c\\u043d\\u043e-\\u0441\\u0435\\u0440\\u044b\\u0439, \\u0431\\u0440\\u044e\\u0445\\u043e \\u0441\\u0435\\u0440\\u043e\\u0432\\u0430\\u0442\\u043e- \\u0431\\u0435\\u043b\\u043e\\u0435, \\u043d\\u043e\\u0441 \\u0436\\u0435\\u043b\\u0442\\u043e\\u0432\\u0430\\u0442\\u044b\\u0439.\\r\\n\\u041a\\u0440\\u043e\\u043c\\u0435 \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u044b, \\u0431\\u0435\\u043b\\u0443\\u0433\\u0430 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043e\\u0441\\u0435\\u0442\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u0441\\u0432\\u043e\\u0438\\u043c \\u0442\\u043e\\u043b\\u0441\\u0442\\u044b\\u043c \\u0446\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0442\\u0443\\u043b\\u043e\\u0432\\u0438\\u0449\\u0435\\u043c \\u0438 \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u0438\\u043c \\u0437\\u0430\\u043e\\u0441\\u0442\\u0440\\u0435\\u043d\\u043d\\u044b\\u043c \\u043d\\u043e\\u0441\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u043e\\u0441\\u0432\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442 \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u043c\\u0438 \\u0449\\u0438\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438.\\r\\n\\u0420\\u044b\\u043b\\u043e \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0435, \\u0442\\u0443\\u043f\\u043e\\u0435. \\u0420\\u043e\\u0442 \\u0443 \\u043d\\u0435\\u0435 \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u044b\\u0439, \\u043f\\u043e\\u043b\\u0443\\u043b\\u0443\\u043d\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439, \\u043d\\u043e, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u043a\\u0430\\u043b\\u0443\\u0433\\u0438, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0439 \\u043d\\u0430 \\u0431\\u043e\\u043a\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b, \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0432\\u0441\\u044e \\u0448\\u0438\\u0440\\u0438\\u043d\\u0443 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0438 \\u043e\\u043a\\u0440\\u0443\\u0436\\u0435\\u043d \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0439 \\u0433\\u0443\\u0431\\u043e\\u0439; \\u0443\\u0441\\u0438\\u043a\\u0438 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0448\\u0438\\u0440\\u0438\\u043d\\u043e\\u0439 \\u0438 \\u0445\\u0432\\u0430\\u0442\\u0430\\u044e\\u0442 \\u0434\\u043e \\u0440\\u0442\\u0430. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u0435 \\u0449\\u0438\\u0442\\u043a\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u0435 \\u0438 \\u0436\\u0443\\u0447\\u043a\\u0438, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0435, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u0441\\u044f \\u043e\\u0442\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u043c\\u0438: \\u0441\\u043f\\u0438\\u043d\\u043d\\u044b\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\\u0439 \\u0447\\u0430\\u0441\\u0442\\u044c\\u044e 12-13, \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 40-45 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0445 10-12.\",\"habitat\":\"\\u041e\\u0431\\u0438\\u0442\\u0430\\u0435\\u0442 \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430 \\u0443 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0431\\u0435\\u0440\\u0435\\u0433\\u043e\\u0432, \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0445 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 - 15-30 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0445\\u043e\\u0442\\u044f \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0435 \\u0432 100-300 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432. \\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0441\\u0442\\u0430\\u0439\\u043a\\u0430\\u043c\\u0438 \\u0443 \\u0434\\u043d\\u0430 \\u0438 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043b\\u0449\\u0443 \\u0432\\u043e\\u0434\\u044b.\\r\\n\\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u043c\\u044f\\u0433\\u043a\\u0438\\u0439 \\u0438\\u043b\\u0438\\u0441\\u0442\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u044b\\u0439 \\u0433\\u0440\\u0443\\u043d\\u0442, \\u043d\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0440\\u0430\\u043a\\u0443\\u0448\\u0435\\u0447\\u043d\\u0438\\u043a\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u0435\\u043d\\u0438\\u0441\\u0442\\u043e\\u043c \\u0434\\u043d\\u0435.\",\"food_features\":\"\\u041e\\u0442\\u044b\\u0441\\u043a\\u0438\\u0432\\u0430\\u0442\\u044c \\u043f\\u0438\\u0449\\u0443 \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u044e\\u0442 \\u0438\\u0445 \\u0434\\u043b\\u0438\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0438\\u043a\\u0438: \\u0440\\u044b\\u0431\\u043a\\u0430 \\u043c\\u0435\\u0434\\u043b\\u0435\\u043d\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0435\\u0442\\u0441\\u044f \\u0443 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430 \\u0438 \\u0442\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\\"\\u043e\\u0449\\u0443\\u043f\\u044b\\u0432\\u0430\\u0435\\u0442\\\" \\u0435\\u0433\\u043e \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u044c \\u0443\\u0441\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\\u0445 \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0434\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445. \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0431\\u0435\\u0441\\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u043e\\u0447\\u043d\\u044b\\u043c\\u0438.\",\"reproduction\":\"\\u041f\\u043e\\u043b\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0440\\u0435\\u043b\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0432\\u0442\\u043e\\u0440\\u043e\\u043c-\\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u043c \\u0433\\u043e\\u0434\\u0443 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u041d\\u0435\\u0440\\u0435\\u0441\\u0442 - \\u0441 \\u043c\\u0430\\u044f \\u043f\\u043e \\u0430\\u0432\\u0433\\u0443\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 \\u043e\\u0442 10 \\u0434\\u043e 55 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432 \\u0431\\u043b\\u0438\\u0437 \\u0438\\u043b\\u0438\\u0441\\u0442\\u043e\\u0433\\u043e \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430. \\u041a\\u0430\\u0436\\u0434\\u0430\\u044f \\u0441\\u0430\\u043c\\u043a\\u0430 \\u0432\\u044b\\u043c\\u0435\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0440\\u0446\\u0438\\u0439 \\u0438\\u043a\\u0440\\u044b, \\u043e\\u0431\\u0449\\u0430\\u044f \\u043f\\u043b\\u043e\\u0434\\u043e\\u0432\\u0438\\u0442\\u043e\\u0441\\u0442\\u044c \\u0437\\u0430 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0442 3,6 \\u0434\\u043e 88 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0438\\u043a\\u0440\\u0438\\u043d\\u043e\\u043a.\\r\\n\\u0412\\u044b\\u043c\\u0435\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f \\u0438 \\u043e\\u043f\\u043b\\u043e\\u0434\\u043e\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u0430\\u044f \\u0438\\u043a\\u0440\\u0430 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0440\\u0445\\u043d\\u0438\\u0435 \\u0441\\u043b\\u043e\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 3,5-2,5 \\u0434\\u043d\\u044f, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u044b, \\u0438\\u0437 \\u043d\\u0435\\u0435 \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043b\\u0438\\u0447\\u0438\\u043d\\u043a\\u0438. \\r\\n            \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u043c\\u0438 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u043c\\u0438 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430\\u043c\\u0438 \\u0442\\u043e\\u043b\\u0449\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u043c\\u0430\\u0441\\u043a\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0445\\u0438\\u0449\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u0438\\u0441\\u0442\\u043e\\u0439, \\u0441\\u0438\\u043d\\u0435\\u0432\\u0430\\u0442\\u043e-\\u0437\\u0435\\u043b\\u0435\\u043d\\u043e\\u0439 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u043e\\u0439. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u0447\\u0435\\u0440\\u0435\\u0437 1,5-2 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u044b\\u043b\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0430\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0438, \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0432 \\u0434\\u043b\\u0438\\u043d\\u044b 4-6 \\u0441\\u0430\\u043d\\u0442\\u0438\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u043e\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0434\\u043d\\u043e \\u0438 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u043b\\u044f \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u043e\\u0431\\u043b\\u0438\\u043a \\u0438 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u0443.\\r\\n\\u0412\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0435 \\u0431\\u0430\\u0440\\u0430\\u0431\\u0443\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0432\\u0435\\u0441\\u043d\\u043e\\u0439 \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0437\\u0434\\u0435\\u0441\\u044c \\u0434\\u043e \\u0437\\u0438\\u043c\\u044b, \\u0438\\u043d\\u043e\\u0433\\u0434\\u0430 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u0432 \\u0443\\u0441\\u0442\\u044c\\u044f\\u0445 \\u0440\\u0435\\u043a. \\u041d\\u0430 \\u0437\\u0438\\u043c\\u0443 \\u0440\\u044b\\u0431\\u044b \\u043e\\u0442\\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u044b. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 - 10-12 \\u043b\\u0435\\u0442, \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u043b\\u0435\\u0442\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u0442\\u044c \\u0434\\u043b\\u0438\\u043d\\u044b \\u043e\\u0442 4 \\u0434\\u043e 12 \\u0441\\u043c, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043d\\u0435\\u0440\\u0435\\u0441\\u0442\\u0430.\",\"catches\":\"\\u0427\\u0442\\u043e \\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u043b\\u043e\\u0432\\u043b\\u0438 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430, \\u0442\\u043e \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0441\\u043d\\u044b (\\u043a\\u0430\\u043a \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0435\\u0435\\u0442\\u0441\\u044f \\u0432\\u044b\\u0448\\u0435 10 \\u0433\\u0440\\u0430\\u0434\\u0443\\u0441\\u043e\\u0432) \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e \\u0441\\u0435\\u0440\\u0435\\u0434\\u0438\\u043d\\u044b \\u043e\\u0441\\u0435\\u043d\\u0438. \\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u043c\\u0435\\u0436\\u0443\\u0442\\u043e\\u043a \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u043a\\u043b\\u0435\\u0432\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u044b\\u0431\\u044b, \\u0438 \\u0441\\u043f\\u0430\\u0434\\u044b, \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0430\\u043a \\u0438 \\u0443 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439\\u0441\\u0442\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0435\\u0441\\u0442\\u044c \\u043e\\u0434\\u043d\\u0430 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u0435\\u0439\\u0448\\u0430\\u044f \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u043d\\u0430\\u0442\\u044c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0443: \\u0447\\u0435\\u043c \\u0436\\u0430\\u0440\\u0447\\u0435, \\u0442\\u0435\\u043c \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043a\\u043b\\u0435\\u0432 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430. \\u0418 \\u043d\\u0430\\u043e\\u0431\\u043e\\u0440\\u043e\\u0442.\\r\\n\\u0412 \\u0436\\u0430\\u0440\\u0443, \\u0431\\u0435\\u043b\\u044b\\u0439 \\u0430\\u043c\\u0443\\u0440 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442\\u0441\\u044f, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0432\\u044b\\u0434\\u0430\\u0432\\u0430\\u044f \\u0441\\u0432\\u043e\\u0435 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435: \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0434\\u0430\\u0436\\u0435 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0439 \\u0440\\u044b\\u0431\\u0430\\u043a \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c \\u043c\\u043e\\u0449\\u043d\\u044b\\u0435 \\u0432\\u0441\\u043f\\u043b\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0435\\u0441\\u044f \\u0432 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u043a\\u0440\\u0443\\u0433\\u0438, \\u0430 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0432\\u0435\\u0437\\u0435\\u0442 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0435\\u0441\\u043b\\u0438 \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0433\\u043e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0430), \\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0441\\u0430\\u043c\\u0443 \\u0440\\u044b\\u0431\\u0443.\\r\\n\\u041d\\u043e, \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0430\\u043c\\u0443\\u0440\\u0430 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u043f\\u043e\\u043b\\u043e\\u0432\\u0438\\u043d\\u0430 \\u0434\\u0435\\u043b\\u0430, \\u0434\\u0430\\u0436\\u0435 \\u0441\\u043a\\u0430\\u0436\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u043d\\u043e \\u043d\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0443\\u043b\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u0430 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0430 \\u0443\\u0434\\u0430\\u0441\\u0442\\u0441\\u044f.\",\"baits\":\"\\u041f\\u043e\\u043d\\u044f\\u0442\\u043d\\u043e, \\u0447\\u0442\\u043e \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u043b\\u0438\\u0441\\u0442\\u044c\\u044f \\u0438 \\u0441\\u0442\\u0435\\u0431\\u043b\\u0438 \\u043a\\u0430\\u043c\\u044b\\u0448\\u0430, \\u0441\\u0442\\u0435\\u0431\\u0435\\u043b\\u044c\\u043a\\u0438 \\u0438 \\u0437\\u0435\\u0440\\u043d\\u0430 \\u043a\\u0443\\u043a\\u0443\\u0440\\u0443\\u0437\\u044b, \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0440\\u043e\\u0441\\u043b\\u0438 (\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0438\\u0437 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0436\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u0430).\\r\\n\\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u0441\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0438 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438, \\u0432 \\u043e\\u0431\\u0449\\u0435\\u043c \\u2014 \\u0441 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0443\\u0436\\u043d\\u043e \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c. \\u0418 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0430\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442.\\r\\n\\u0422\\u0435\\u043e\\u0440\\u0438\\u044f \\u2014 \\u044d\\u0442\\u043e, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e, \\u043d\\u043e \\u0441\\u0430\\u043c\\u044b\\u0439 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434: \\u0432\\u0441\\u0435 \\u0443\\u0442\\u043e\\u0447\\u043d\\u0438\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431\\u0430\\u043a\\u043e\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043b\\u043e\\u0432\\u044f\\u0442 \\u043d\\u0430 \\u043f\\u043e\\u043f\\u043b\\u0430\\u0432\\u043e\\u0447\\u043d\\u0443\\u044e \\u0441\\u043d\\u0430\\u0441\\u0442\\u044c (\\u0448\\u0442\\u0435\\u043a\\u0435\\u0440, \\u043c\\u0430\\u0442\\u0447), \\u043d\\u0430 \\u0444\\u0438\\u0434\\u0435\\u0440, \\u043d\\u0430\\u0445\\u043b\\u044b\\u0441\\u0442\\u043e\\u043c.\\r\\n\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u043a\\u043e\\u0439, \\u043d\\u043e \\u043e\\u0447\\u0435\\u043d\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0438 \\u0437\\u0430\\u0445\\u0432\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439.\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:20:45', '2022-01-20 14:20:45'),
(1336, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:20:46', '2022-01-20 14:20:46'),
(1337, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:20:49', '2022-01-20 14:20:49'),
(1338, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:20:59', '2022-01-20 14:20:59'),
(1339, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:21:02', '2022-01-20 14:21:02'),
(1340, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:22:33', '2022-01-20 14:22:33'),
(1341, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:22:39', '2022-01-20 14:22:39'),
(1342, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:23:22', '2022-01-20 14:23:22'),
(1343, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '[]', '2022-01-20 14:23:28', '2022-01-20 14:23:28'),
(1344, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:23:38', '2022-01-20 14:23:38'),
(1345, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:23:42', '2022-01-20 14:23:42'),
(1346, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:23:49', '2022-01-20 14:23:49'),
(1347, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:23:53', '2022-01-20 14:23:53'),
(1348, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:23:55', '2022-01-20 14:23:55'),
(1349, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:23:57', '2022-01-20 14:23:57'),
(1350, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '[]', '2022-01-20 14:24:21', '2022-01-20 14:24:21'),
(1351, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:25:20', '2022-01-20 14:25:20'),
(1352, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:25:23', '2022-01-20 14:25:23'),
(1353, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:26:09', '2022-01-20 14:26:09'),
(1354, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:26:12', '2022-01-20 14:26:12');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1355, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'PUT', '127.0.0.1', '{\"factors\":{\"14\":{\"name\":\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\",\"units\":\"\\u00b0C\",\"opt_values\":\"-10,20.22\",\"weight\":\"0.93\",\"id\":\"14\",\"_remove_\":\"0\"},\"15\":{\"name\":\"\\u0412\\u0440\\u0435\\u043c\\u044f \\u0441\\u0443\\u0442\\u043e\\u043a\",\"units\":null,\"opt_values\":\"\\u0432\\u0435\\u0447\\u0435\\u0440,\\u0443\\u0442\\u0440\\u043e\",\"weight\":\"0.63\",\"id\":\"15\",\"_remove_\":\"0\"},\"16\":{\"name\":\"\\u0412\\u0440\\u0435\\u043c\\u044f \\u0433\\u043e\\u0434\\u0430\",\"units\":null,\"opt_values\":\"\\u0437\\u0438\\u043c\\u0430\",\"weight\":\"0.51\",\"id\":\"16\",\"_remove_\":\"0\"},\"17\":{\"name\":\"\\u041e\\u0441\\u0430\\u0434\\u043a\\u0438\",\"units\":null,\"opt_values\":\"\\u0434\\u043e\\u0436\\u0434\\u044c,\\u044f\\u0441\\u043d\\u043e,\\u0441\\u043d\\u0435\\u0433,\\u0442\\u0443\\u043c\\u0430\\u043d,\\u043e\\u0431\\u043b\\u0430\\u0447\\u043d\\u043e\",\"weight\":\"0.56\",\"id\":\"17\",\"_remove_\":\"0\"},\"18\":{\"name\":\"\\u0424\\u0430\\u0437\\u0430 \\u043b\\u0443\\u043d\\u044b\",\"units\":null,\"opt_values\":\"\\u0440\\u0430\\u0441\\u0442\\u0443\\u0449\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u0443\\u0431\\u044b\\u0432\\u0430\\u044e\\u0448\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",\"weight\":\"0.35\",\"id\":\"18\",\"_remove_\":\"0\"},\"19\":{\"name\":\"\\u0421\\u0438\\u043b\\u0430 \\u0432\\u0435\\u0442\\u0440\\u0430\",\"units\":\"\\u043c\\/c\",\"opt_values\":\"4.92,7.07\",\"weight\":\"0.39\",\"id\":\"19\",\"_remove_\":\"0\"},\"20\":{\"name\":\"\\u0414\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\",\"units\":\"\\u043c\\u043c.\\u0440\\u0442.\\u0441\\u0442.\",\"opt_values\":\"848,854\",\"weight\":\"0.21\",\"id\":\"20\",\"_remove_\":\"0\"},\"21\":{\"name\":\"\\u041e\\u0431\\u043b\\u0430\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c\",\"units\":\"%\",\"opt_values\":\"57,100\",\"weight\":\"0.08\",\"id\":\"21\",\"_remove_\":\"0\"},\"22\":{\"name\":\"\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\",\"units\":\"%\",\"opt_values\":\"57,86\",\"weight\":\"0.1\",\"id\":\"22\",\"_remove_\":\"0\"},\"23\":{\"name\":\"\\u0423\\u0424 \\u0438\\u043d\\u0434\\u0435\\u043a\\u0441\",\"units\":null,\"opt_values\":\"0,8\",\"weight\":\"0.1\",\"id\":\"23\",\"_remove_\":\"0\"}},\"name\":\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"Morone chrysops2\",\"other_names\":\"White bass (\\u0430\\u043d\\u0433\\u043b.)\",\"family\":\"\\u041a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435\",\"genus\":\"\\u0410\\u043c\\u0443\\u0440\\u044b \\u0431\\u0435\\u043b\\u044b\\u0435\",\"lifestyle\":\"\\u043f\\u0435\\u043b\\u0430\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439\",\"food_type\":\"\\u043c\\u0438\\u0440\\u043d\\u044b\\u0439\",\"area\":\"\\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0427\\u0435\\u0440\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0422\\u0438\\u0445\\u043e\\u0433\\u043e \\u043e\\u043a\\u0435\\u0430\\u043d\\u0430, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u041a\\u0430\\u0441\\u043f\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0410\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f\",\"appereance\":\"\\u0422\\u0435\\u043b\\u043e \\u043c\\u0430\\u0441\\u0441\\u0438\\u0432\\u043d\\u043e\\u0435, \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0435 (huso \\u0432 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u0435 \\u0441 \\u043b\\u0430\\u0442\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u2014 \\u0441\\u0432\\u0438\\u043d\\u044c\\u044f).\\r\\n\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430 \\u2014 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431. \\u0412 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u043b\\u0430 \\u0434\\u043b\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 1000 \\u043a\\u0433. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u044d\\u043a\\u0437\\u0435\\u043c\\u043f\\u043b\\u044f\\u0440\\u043e\\u0432, \\u0432\\u0438\\u0434\\u0438\\u043c\\u043e, \\u043f\\u0440\\u0435\\u0432\\u044b\\u0448\\u0430\\u043b\\u0430 100 \\u043b\\u0435\\u0442.\\r\\n\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442 \\u0432 46 \\u043b\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d \\u0432 1977 \\u0433 \\u0438 44 \\u0433\\u043e\\u0434\\u0430 \\u0432 1983 \\u0433. \\u0412 1970 \\u0433. \\u0432 \\u043f\\u0440\\u043e\\u043c\\u044b\\u0441\\u043b\\u043e\\u0432\\u044b\\u0445 \\u0443\\u043b\\u043e\\u0432\\u0430\\u0445 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435 \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0434\\u043b\\u0438\\u043d\\u0430 \\u0441\\u0430\\u043c\\u043e\\u043a \\u0431\\u0435\\u043b\\u0443\\u0433\\u0438 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u0430 267 \\u0441\\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u0430 142 \\u043a\\u0433, \\u0441\\u0430\\u043c\\u0446\\u043e\\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e 221 \\u0441\\u043c \\u0438 81 \\u043a\\u0433. \\u041e\\u0431\\u0449\\u0438\\u0439 \\u0446\\u0432\\u0435\\u0442 \\u0442\\u0435\\u043b\\u0430 \\u043f\\u0435\\u043f\\u0435\\u043b\\u044c\\u043d\\u043e-\\u0441\\u0435\\u0440\\u044b\\u0439, \\u0431\\u0440\\u044e\\u0445\\u043e \\u0441\\u0435\\u0440\\u043e\\u0432\\u0430\\u0442\\u043e- \\u0431\\u0435\\u043b\\u043e\\u0435, \\u043d\\u043e\\u0441 \\u0436\\u0435\\u043b\\u0442\\u043e\\u0432\\u0430\\u0442\\u044b\\u0439.\\r\\n\\u041a\\u0440\\u043e\\u043c\\u0435 \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u044b, \\u0431\\u0435\\u043b\\u0443\\u0433\\u0430 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043e\\u0441\\u0435\\u0442\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u0441\\u0432\\u043e\\u0438\\u043c \\u0442\\u043e\\u043b\\u0441\\u0442\\u044b\\u043c \\u0446\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0442\\u0443\\u043b\\u043e\\u0432\\u0438\\u0449\\u0435\\u043c \\u0438 \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u0438\\u043c \\u0437\\u0430\\u043e\\u0441\\u0442\\u0440\\u0435\\u043d\\u043d\\u044b\\u043c \\u043d\\u043e\\u0441\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u043e\\u0441\\u0432\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442 \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u043c\\u0438 \\u0449\\u0438\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438.\\r\\n\\u0420\\u044b\\u043b\\u043e \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0435, \\u0442\\u0443\\u043f\\u043e\\u0435. \\u0420\\u043e\\u0442 \\u0443 \\u043d\\u0435\\u0435 \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u044b\\u0439, \\u043f\\u043e\\u043b\\u0443\\u043b\\u0443\\u043d\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439, \\u043d\\u043e, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u043a\\u0430\\u043b\\u0443\\u0433\\u0438, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0439 \\u043d\\u0430 \\u0431\\u043e\\u043a\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b, \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0432\\u0441\\u044e \\u0448\\u0438\\u0440\\u0438\\u043d\\u0443 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0438 \\u043e\\u043a\\u0440\\u0443\\u0436\\u0435\\u043d \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0439 \\u0433\\u0443\\u0431\\u043e\\u0439; \\u0443\\u0441\\u0438\\u043a\\u0438 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0448\\u0438\\u0440\\u0438\\u043d\\u043e\\u0439 \\u0438 \\u0445\\u0432\\u0430\\u0442\\u0430\\u044e\\u0442 \\u0434\\u043e \\u0440\\u0442\\u0430. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u0435 \\u0449\\u0438\\u0442\\u043a\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u0435 \\u0438 \\u0436\\u0443\\u0447\\u043a\\u0438, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0435, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u0441\\u044f \\u043e\\u0442\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u043c\\u0438: \\u0441\\u043f\\u0438\\u043d\\u043d\\u044b\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\\u0439 \\u0447\\u0430\\u0441\\u0442\\u044c\\u044e 12-13, \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 40-45 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0445 10-12.\",\"habitat\":\"\\u041e\\u0431\\u0438\\u0442\\u0430\\u0435\\u0442 \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430 \\u0443 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0431\\u0435\\u0440\\u0435\\u0433\\u043e\\u0432, \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0445 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 - 15-30 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0445\\u043e\\u0442\\u044f \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0435 \\u0432 100-300 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432. \\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0441\\u0442\\u0430\\u0439\\u043a\\u0430\\u043c\\u0438 \\u0443 \\u0434\\u043d\\u0430 \\u0438 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043b\\u0449\\u0443 \\u0432\\u043e\\u0434\\u044b.\\r\\n\\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u043c\\u044f\\u0433\\u043a\\u0438\\u0439 \\u0438\\u043b\\u0438\\u0441\\u0442\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u044b\\u0439 \\u0433\\u0440\\u0443\\u043d\\u0442, \\u043d\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0440\\u0430\\u043a\\u0443\\u0448\\u0435\\u0447\\u043d\\u0438\\u043a\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u0435\\u043d\\u0438\\u0441\\u0442\\u043e\\u043c \\u0434\\u043d\\u0435.\",\"food_features\":\"\\u041e\\u0442\\u044b\\u0441\\u043a\\u0438\\u0432\\u0430\\u0442\\u044c \\u043f\\u0438\\u0449\\u0443 \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u044e\\u0442 \\u0438\\u0445 \\u0434\\u043b\\u0438\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0438\\u043a\\u0438: \\u0440\\u044b\\u0431\\u043a\\u0430 \\u043c\\u0435\\u0434\\u043b\\u0435\\u043d\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0435\\u0442\\u0441\\u044f \\u0443 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430 \\u0438 \\u0442\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\\"\\u043e\\u0449\\u0443\\u043f\\u044b\\u0432\\u0430\\u0435\\u0442\\\" \\u0435\\u0433\\u043e \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u044c \\u0443\\u0441\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\\u0445 \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0434\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445. \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0431\\u0435\\u0441\\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u043e\\u0447\\u043d\\u044b\\u043c\\u0438.\",\"reproduction\":\"\\u041f\\u043e\\u043b\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0440\\u0435\\u043b\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0432\\u0442\\u043e\\u0440\\u043e\\u043c-\\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u043c \\u0433\\u043e\\u0434\\u0443 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u041d\\u0435\\u0440\\u0435\\u0441\\u0442 - \\u0441 \\u043c\\u0430\\u044f \\u043f\\u043e \\u0430\\u0432\\u0433\\u0443\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 \\u043e\\u0442 10 \\u0434\\u043e 55 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432 \\u0431\\u043b\\u0438\\u0437 \\u0438\\u043b\\u0438\\u0441\\u0442\\u043e\\u0433\\u043e \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430. \\u041a\\u0430\\u0436\\u0434\\u0430\\u044f \\u0441\\u0430\\u043c\\u043a\\u0430 \\u0432\\u044b\\u043c\\u0435\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0440\\u0446\\u0438\\u0439 \\u0438\\u043a\\u0440\\u044b, \\u043e\\u0431\\u0449\\u0430\\u044f \\u043f\\u043b\\u043e\\u0434\\u043e\\u0432\\u0438\\u0442\\u043e\\u0441\\u0442\\u044c \\u0437\\u0430 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0442 3,6 \\u0434\\u043e 88 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0438\\u043a\\u0440\\u0438\\u043d\\u043e\\u043a.\\r\\n\\u0412\\u044b\\u043c\\u0435\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f \\u0438 \\u043e\\u043f\\u043b\\u043e\\u0434\\u043e\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u0430\\u044f \\u0438\\u043a\\u0440\\u0430 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0440\\u0445\\u043d\\u0438\\u0435 \\u0441\\u043b\\u043e\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 3,5-2,5 \\u0434\\u043d\\u044f, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u044b, \\u0438\\u0437 \\u043d\\u0435\\u0435 \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043b\\u0438\\u0447\\u0438\\u043d\\u043a\\u0438. \\r\\n            \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u043c\\u0438 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u043c\\u0438 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430\\u043c\\u0438 \\u0442\\u043e\\u043b\\u0449\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u043c\\u0430\\u0441\\u043a\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0445\\u0438\\u0449\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u0438\\u0441\\u0442\\u043e\\u0439, \\u0441\\u0438\\u043d\\u0435\\u0432\\u0430\\u0442\\u043e-\\u0437\\u0435\\u043b\\u0435\\u043d\\u043e\\u0439 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u043e\\u0439. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u0447\\u0435\\u0440\\u0435\\u0437 1,5-2 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u044b\\u043b\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0430\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0438, \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0432 \\u0434\\u043b\\u0438\\u043d\\u044b 4-6 \\u0441\\u0430\\u043d\\u0442\\u0438\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u043e\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0434\\u043d\\u043e \\u0438 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u043b\\u044f \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u043e\\u0431\\u043b\\u0438\\u043a \\u0438 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u0443.\\r\\n\\u0412\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0435 \\u0431\\u0430\\u0440\\u0430\\u0431\\u0443\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0432\\u0435\\u0441\\u043d\\u043e\\u0439 \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0437\\u0434\\u0435\\u0441\\u044c \\u0434\\u043e \\u0437\\u0438\\u043c\\u044b, \\u0438\\u043d\\u043e\\u0433\\u0434\\u0430 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u0432 \\u0443\\u0441\\u0442\\u044c\\u044f\\u0445 \\u0440\\u0435\\u043a. \\u041d\\u0430 \\u0437\\u0438\\u043c\\u0443 \\u0440\\u044b\\u0431\\u044b \\u043e\\u0442\\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u044b. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 - 10-12 \\u043b\\u0435\\u0442, \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u043b\\u0435\\u0442\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u0442\\u044c \\u0434\\u043b\\u0438\\u043d\\u044b \\u043e\\u0442 4 \\u0434\\u043e 12 \\u0441\\u043c, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043d\\u0435\\u0440\\u0435\\u0441\\u0442\\u0430.\",\"catches\":\"\\u0427\\u0442\\u043e \\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u043b\\u043e\\u0432\\u043b\\u0438 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430, \\u0442\\u043e \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0441\\u043d\\u044b (\\u043a\\u0430\\u043a \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0435\\u0435\\u0442\\u0441\\u044f \\u0432\\u044b\\u0448\\u0435 10 \\u0433\\u0440\\u0430\\u0434\\u0443\\u0441\\u043e\\u0432) \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e \\u0441\\u0435\\u0440\\u0435\\u0434\\u0438\\u043d\\u044b \\u043e\\u0441\\u0435\\u043d\\u0438. \\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u043c\\u0435\\u0436\\u0443\\u0442\\u043e\\u043a \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u043a\\u043b\\u0435\\u0432\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u044b\\u0431\\u044b, \\u0438 \\u0441\\u043f\\u0430\\u0434\\u044b, \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0430\\u043a \\u0438 \\u0443 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439\\u0441\\u0442\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0435\\u0441\\u0442\\u044c \\u043e\\u0434\\u043d\\u0430 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u0435\\u0439\\u0448\\u0430\\u044f \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u043d\\u0430\\u0442\\u044c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0443: \\u0447\\u0435\\u043c \\u0436\\u0430\\u0440\\u0447\\u0435, \\u0442\\u0435\\u043c \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043a\\u043b\\u0435\\u0432 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430. \\u0418 \\u043d\\u0430\\u043e\\u0431\\u043e\\u0440\\u043e\\u0442.\\r\\n\\u0412 \\u0436\\u0430\\u0440\\u0443, \\u0431\\u0435\\u043b\\u044b\\u0439 \\u0430\\u043c\\u0443\\u0440 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442\\u0441\\u044f, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0432\\u044b\\u0434\\u0430\\u0432\\u0430\\u044f \\u0441\\u0432\\u043e\\u0435 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435: \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0434\\u0430\\u0436\\u0435 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0439 \\u0440\\u044b\\u0431\\u0430\\u043a \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c \\u043c\\u043e\\u0449\\u043d\\u044b\\u0435 \\u0432\\u0441\\u043f\\u043b\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0435\\u0441\\u044f \\u0432 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u043a\\u0440\\u0443\\u0433\\u0438, \\u0430 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0432\\u0435\\u0437\\u0435\\u0442 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0435\\u0441\\u043b\\u0438 \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0433\\u043e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0430), \\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0441\\u0430\\u043c\\u0443 \\u0440\\u044b\\u0431\\u0443.\\r\\n\\u041d\\u043e, \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0430\\u043c\\u0443\\u0440\\u0430 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u043f\\u043e\\u043b\\u043e\\u0432\\u0438\\u043d\\u0430 \\u0434\\u0435\\u043b\\u0430, \\u0434\\u0430\\u0436\\u0435 \\u0441\\u043a\\u0430\\u0436\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u043d\\u043e \\u043d\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0443\\u043b\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u0430 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0430 \\u0443\\u0434\\u0430\\u0441\\u0442\\u0441\\u044f.\",\"baits\":\"\\u041f\\u043e\\u043d\\u044f\\u0442\\u043d\\u043e, \\u0447\\u0442\\u043e \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u043b\\u0438\\u0441\\u0442\\u044c\\u044f \\u0438 \\u0441\\u0442\\u0435\\u0431\\u043b\\u0438 \\u043a\\u0430\\u043c\\u044b\\u0448\\u0430, \\u0441\\u0442\\u0435\\u0431\\u0435\\u043b\\u044c\\u043a\\u0438 \\u0438 \\u0437\\u0435\\u0440\\u043d\\u0430 \\u043a\\u0443\\u043a\\u0443\\u0440\\u0443\\u0437\\u044b, \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0440\\u043e\\u0441\\u043b\\u0438 (\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0438\\u0437 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0436\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u0430).\\r\\n\\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u0441\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0438 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438, \\u0432 \\u043e\\u0431\\u0449\\u0435\\u043c \\u2014 \\u0441 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0443\\u0436\\u043d\\u043e \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c. \\u0418 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0430\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442.\\r\\n\\u0422\\u0435\\u043e\\u0440\\u0438\\u044f \\u2014 \\u044d\\u0442\\u043e, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e, \\u043d\\u043e \\u0441\\u0430\\u043c\\u044b\\u0439 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434: \\u0432\\u0441\\u0435 \\u0443\\u0442\\u043e\\u0447\\u043d\\u0438\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431\\u0430\\u043a\\u043e\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043b\\u043e\\u0432\\u044f\\u0442 \\u043d\\u0430 \\u043f\\u043e\\u043f\\u043b\\u0430\\u0432\\u043e\\u0447\\u043d\\u0443\\u044e \\u0441\\u043d\\u0430\\u0441\\u0442\\u044c (\\u0448\\u0442\\u0435\\u043a\\u0435\\u0440, \\u043c\\u0430\\u0442\\u0447), \\u043d\\u0430 \\u0444\\u0438\\u0434\\u0435\\u0440, \\u043d\\u0430\\u0445\\u043b\\u044b\\u0441\\u0442\\u043e\\u043c.\\r\\n\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u043a\\u043e\\u0439, \\u043d\\u043e \\u043e\\u0447\\u0435\\u043d\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0438 \\u0437\\u0430\\u0445\\u0432\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439.\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:26:22', '2022-01-20 14:26:22'),
(1356, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:26:23', '2022-01-20 14:26:23'),
(1357, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:26:27', '2022-01-20 14:26:27');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1358, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'PUT', '127.0.0.1', '{\"factors\":{\"14\":{\"name\":\"\\u0422\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u0430\",\"units\":\"\\u00b0C\",\"opt_values\":\"-10,20.22\",\"weight\":\"0.93\",\"id\":\"14\",\"_remove_\":\"0\"},\"15\":{\"name\":\"\\u0412\\u0440\\u0435\\u043c\\u044f \\u0441\\u0443\\u0442\\u043e\\u043a\",\"units\":null,\"opt_values\":\"\\u0432\\u0435\\u0447\\u0435\\u0440,\\u0443\\u0442\\u0440\\u043e\",\"weight\":\"0.63\",\"id\":\"15\",\"_remove_\":\"0\"},\"16\":{\"name\":\"\\u0412\\u0440\\u0435\\u043c\\u044f \\u0433\\u043e\\u0434\\u0430\",\"units\":null,\"opt_values\":\"\\u0437\\u0438\\u043c\\u0430\",\"weight\":\"0.51\",\"id\":\"16\",\"_remove_\":\"0\"},\"17\":{\"name\":\"\\u041e\\u0441\\u0430\\u0434\\u043a\\u0438\",\"units\":null,\"opt_values\":\"\\u0434\\u043e\\u0436\\u0434\\u044c,\\u044f\\u0441\\u043d\\u043e,\\u0441\\u043d\\u0435\\u0433,\\u0442\\u0443\\u043c\\u0430\\u043d,\\u043e\\u0431\\u043b\\u0430\\u0447\\u043d\\u043e\",\"weight\":\"0.56\",\"id\":\"17\",\"_remove_\":\"0\"},\"18\":{\"name\":\"\\u0424\\u0430\\u0437\\u0430 \\u043b\\u0443\\u043d\\u044b\",\"units\":null,\"opt_values\":\"\\u0440\\u0430\\u0441\\u0442\\u0443\\u0449\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u0443\\u0431\\u044b\\u0432\\u0430\\u044e\\u0448\\u0430\\u044f \\u043b\\u0443\\u043d\\u0430,\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",\"weight\":\"0.35\",\"id\":\"18\",\"_remove_\":\"0\"},\"19\":{\"name\":\"\\u0421\\u0438\\u043b\\u0430 \\u0432\\u0435\\u0442\\u0440\\u0430\",\"units\":\"\\u043c\\/c\",\"opt_values\":\"4.92,7.07\",\"weight\":\"0.39\",\"id\":\"19\",\"_remove_\":\"0\"},\"20\":{\"name\":\"\\u0414\\u0430\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435\",\"units\":\"\\u043c\\u043c.\\u0440\\u0442.\\u0441\\u0442.\",\"opt_values\":\"848,854\",\"weight\":\"0.21\",\"id\":\"20\",\"_remove_\":\"0\"},\"21\":{\"name\":\"\\u041e\\u0431\\u043b\\u0430\\u0447\\u043d\\u043e\\u0441\\u0442\\u044c\",\"units\":\"%\",\"opt_values\":\"57,100\",\"weight\":\"0.08\",\"id\":\"21\",\"_remove_\":\"0\"},\"22\":{\"name\":\"\\u0412\\u043b\\u0430\\u0436\\u043d\\u043e\\u0441\\u0442\\u044c\",\"units\":\"%\",\"opt_values\":\"57,86\",\"weight\":\"0.1\",\"id\":\"22\",\"_remove_\":\"0\"},\"23\":{\"name\":\"\\u0423\\u0424 \\u0438\\u043d\\u0434\\u0435\\u043a\\u0441\",\"units\":null,\"opt_values\":\"0,8\",\"weight\":\"0.1\",\"id\":\"23\",\"_remove_\":\"0\"}},\"name\":\"\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"Morone chrysops\",\"other_names\":\"White bass (\\u0430\\u043d\\u0433\\u043b.)\",\"family\":\"\\u041a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435\",\"genus\":\"\\u0410\\u043c\\u0443\\u0440\\u044b \\u0431\\u0435\\u043b\\u044b\\u0435\",\"lifestyle\":\"\\u043f\\u0435\\u043b\\u0430\\u0433\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0439\",\"food_type\":\"\\u043c\\u0438\\u0440\\u043d\\u044b\\u0439\",\"area\":\"\\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0427\\u0435\\u0440\\u043d\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0422\\u0438\\u0445\\u043e\\u0433\\u043e \\u043e\\u043a\\u0435\\u0430\\u043d\\u0430, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u041a\\u0430\\u0441\\u043f\\u0438\\u0439\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f, \\u0431\\u0430\\u0441\\u0441\\u0435\\u0439\\u043d \\u0410\\u0440\\u0430\\u043b\\u044c\\u0441\\u043a\\u043e\\u0433\\u043e \\u043c\\u043e\\u0440\\u044f\",\"appereance\":\"\\u0422\\u0435\\u043b\\u043e \\u043c\\u0430\\u0441\\u0441\\u0438\\u0432\\u043d\\u043e\\u0435, \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0435 (huso \\u0432 \\u043f\\u0435\\u0440\\u0435\\u0432\\u043e\\u0434\\u0435 \\u0441 \\u043b\\u0430\\u0442\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u2014 \\u0441\\u0432\\u0438\\u043d\\u044c\\u044f).\\r\\n\\u0411\\u0435\\u043b\\u0443\\u0433\\u0430 \\u2014 \\u043e\\u0434\\u043d\\u0430 \\u0438\\u0437 \\u043a\\u0440\\u0443\\u043f\\u043d\\u0435\\u0439\\u0448\\u0438\\u0445 \\u043f\\u0440\\u043e\\u0445\\u043e\\u0434\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431. \\u0412 \\u043f\\u0440\\u043e\\u0448\\u043b\\u043e\\u043c \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u043b\\u0430 \\u0434\\u043b\\u0438\\u043d\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 5 \\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 1000 \\u043a\\u0433. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 \\u0442\\u0430\\u043a\\u0438\\u0445 \\u043a\\u0440\\u0443\\u043f\\u043d\\u044b\\u0445 \\u044d\\u043a\\u0437\\u0435\\u043c\\u043f\\u043b\\u044f\\u0440\\u043e\\u0432, \\u0432\\u0438\\u0434\\u0438\\u043c\\u043e, \\u043f\\u0440\\u0435\\u0432\\u044b\\u0448\\u0430\\u043b\\u0430 100 \\u043b\\u0435\\u0442.\\r\\n\\u041c\\u0430\\u043a\\u0441\\u0438\\u043c\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0439 \\u0432\\u043e\\u0437\\u0440\\u0430\\u0441\\u0442 \\u0432 46 \\u043b\\u0435\\u0442 \\u043e\\u0442\\u043c\\u0435\\u0447\\u0435\\u043d \\u0432 1977 \\u0433 \\u0438 44 \\u0433\\u043e\\u0434\\u0430 \\u0432 1983 \\u0433. \\u0412 1970 \\u0433. \\u0432 \\u043f\\u0440\\u043e\\u043c\\u044b\\u0441\\u043b\\u043e\\u0432\\u044b\\u0445 \\u0443\\u043b\\u043e\\u0432\\u0430\\u0445 \\u043d\\u0430 \\u0412\\u043e\\u043b\\u0433\\u0435 \\u0441\\u0440\\u0435\\u0434\\u043d\\u044f\\u044f \\u0434\\u043b\\u0438\\u043d\\u0430 \\u0441\\u0430\\u043c\\u043e\\u043a \\u0431\\u0435\\u043b\\u0443\\u0433\\u0438 \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u043b\\u0430 267 \\u0441\\u043c \\u0438 \\u043c\\u0430\\u0441\\u0441\\u0430 142 \\u043a\\u0433, \\u0441\\u0430\\u043c\\u0446\\u043e\\u0432 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e 221 \\u0441\\u043c \\u0438 81 \\u043a\\u0433. \\u041e\\u0431\\u0449\\u0438\\u0439 \\u0446\\u0432\\u0435\\u0442 \\u0442\\u0435\\u043b\\u0430 \\u043f\\u0435\\u043f\\u0435\\u043b\\u044c\\u043d\\u043e-\\u0441\\u0435\\u0440\\u044b\\u0439, \\u0431\\u0440\\u044e\\u0445\\u043e \\u0441\\u0435\\u0440\\u043e\\u0432\\u0430\\u0442\\u043e- \\u0431\\u0435\\u043b\\u043e\\u0435, \\u043d\\u043e\\u0441 \\u0436\\u0435\\u043b\\u0442\\u043e\\u0432\\u0430\\u0442\\u044b\\u0439.\\r\\n\\u041a\\u0440\\u043e\\u043c\\u0435 \\u0432\\u0435\\u043b\\u0438\\u0447\\u0438\\u043d\\u044b, \\u0431\\u0435\\u043b\\u0443\\u0433\\u0430 \\u043b\\u0435\\u0433\\u043a\\u043e \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0432\\u0441\\u0435\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043e\\u0441\\u0435\\u0442\\u0440\\u043e\\u0432\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u0441\\u0432\\u043e\\u0438\\u043c \\u0442\\u043e\\u043b\\u0441\\u0442\\u044b\\u043c \\u0446\\u0438\\u043b\\u0438\\u043d\\u0434\\u0440\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u043c \\u0442\\u0443\\u043b\\u043e\\u0432\\u0438\\u0449\\u0435\\u043c \\u0438 \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u0438\\u043c \\u0437\\u0430\\u043e\\u0441\\u0442\\u0440\\u0435\\u043d\\u043d\\u044b\\u043c \\u043d\\u043e\\u0441\\u043e\\u043c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u044b\\u0439 \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u0440\\u043e\\u0441\\u0432\\u0435\\u0447\\u0438\\u0432\\u0430\\u0435\\u0442, \\u0442\\u0430\\u043a \\u043a\\u0430\\u043a \\u043d\\u0435 \\u043f\\u043e\\u043a\\u0440\\u044b\\u0442 \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u043c\\u0438 \\u0449\\u0438\\u0442\\u0438\\u043a\\u0430\\u043c\\u0438.\\r\\n\\u0420\\u044b\\u043b\\u043e \\u043a\\u043e\\u0440\\u043e\\u0442\\u043a\\u043e\\u0435, \\u0442\\u0443\\u043f\\u043e\\u0435. \\u0420\\u043e\\u0442 \\u0443 \\u043d\\u0435\\u0435 \\u043e\\u0433\\u0440\\u043e\\u043c\\u043d\\u044b\\u0439, \\u043f\\u043e\\u043b\\u0443\\u043b\\u0443\\u043d\\u043d\\u043e\\u0439 \\u0444\\u043e\\u0440\\u043c\\u044b, \\u0431\\u043e\\u043b\\u044c\\u0448\\u043e\\u0439, \\u043d\\u043e, \\u0432 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0438\\u0435 \\u043e\\u0442 \\u043a\\u0430\\u043b\\u0443\\u0433\\u0438, \\u043d\\u0435 \\u043f\\u0435\\u0440\\u0435\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0439 \\u043d\\u0430 \\u0431\\u043e\\u043a\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b, \\u0437\\u0430\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442 \\u0432\\u0441\\u044e \\u0448\\u0438\\u0440\\u0438\\u043d\\u0443 \\u0433\\u043e\\u043b\\u043e\\u0432\\u044b \\u0438 \\u043e\\u043a\\u0440\\u0443\\u0436\\u0435\\u043d \\u0442\\u043e\\u043b\\u0441\\u0442\\u043e\\u0439 \\u0433\\u0443\\u0431\\u043e\\u0439; \\u0443\\u0441\\u0438\\u043a\\u0438 \\u043e\\u0442\\u043b\\u0438\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0448\\u0438\\u0440\\u0438\\u043d\\u043e\\u0439 \\u0438 \\u0445\\u0432\\u0430\\u0442\\u0430\\u044e\\u0442 \\u0434\\u043e \\u0440\\u0442\\u0430. \\u041a\\u0440\\u043e\\u043c\\u0435 \\u0442\\u043e\\u0433\\u043e, \\u043a\\u043e\\u0441\\u0442\\u044f\\u043d\\u044b\\u0435 \\u0449\\u0438\\u0442\\u043a\\u0438 \\u043d\\u0430 \\u0433\\u043e\\u043b\\u043e\\u0432\\u0435 \\u0438 \\u0436\\u0443\\u0447\\u043a\\u0438, \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0435 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0435, \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u044e\\u0442\\u0441\\u044f \\u043e\\u0442\\u043d\\u043e\\u0441\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u043c\\u0430\\u043b\\u043e \\u0440\\u0430\\u0437\\u0432\\u0438\\u0442\\u044b\\u043c\\u0438: \\u0441\\u043f\\u0438\\u043d\\u043d\\u044b\\u0445 \\u0431\\u044b\\u0432\\u0430\\u0435\\u0442 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435\\u0439 \\u0447\\u0430\\u0441\\u0442\\u044c\\u044e 12-13, \\u0431\\u043e\\u043a\\u043e\\u0432\\u044b\\u0445 40-45 \\u0438 \\u0431\\u0440\\u044e\\u0448\\u043d\\u044b\\u0445 10-12.\",\"habitat\":\"\\u041e\\u0431\\u0438\\u0442\\u0430\\u0435\\u0442 \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u0430\\u044f \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430 \\u0443 \\u043c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0445 \\u0431\\u0435\\u0440\\u0435\\u0433\\u043e\\u0432, \\u043e\\u0431\\u044b\\u043a\\u043d\\u043e\\u0432\\u0435\\u043d\\u043d\\u043e \\u043d\\u0430 \\u043d\\u0435\\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0445 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 - 15-30 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u0445\\u043e\\u0442\\u044f \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u0435\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0435 \\u0432 100-300 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432. \\u0421\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0441\\u0442\\u0430\\u0439\\u043a\\u0430\\u043c\\u0438 \\u0443 \\u0434\\u043d\\u0430 \\u0438 \\u043d\\u0438\\u043a\\u043e\\u0433\\u0434\\u0430 \\u043d\\u0435 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u044e\\u0442\\u0441\\u044f \\u0432 \\u0442\\u043e\\u043b\\u0449\\u0443 \\u0432\\u043e\\u0434\\u044b.\\r\\n\\u041f\\u0440\\u0435\\u0434\\u043f\\u043e\\u0447\\u0438\\u0442\\u0430\\u044e\\u0442 \\u043c\\u044f\\u0433\\u043a\\u0438\\u0439 \\u0438\\u043b\\u0438\\u0441\\u0442\\u044b\\u0439 \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u044b\\u0439 \\u0433\\u0440\\u0443\\u043d\\u0442, \\u043d\\u043e \\u0432\\u0441\\u0442\\u0440\\u0435\\u0447\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u043d\\u0430 \\u0440\\u0430\\u043a\\u0443\\u0448\\u0435\\u0447\\u043d\\u0438\\u043a\\u0435 \\u0438 \\u043a\\u0430\\u043c\\u0435\\u043d\\u0438\\u0441\\u0442\\u043e\\u043c \\u0434\\u043d\\u0435.\",\"food_features\":\"\\u041e\\u0442\\u044b\\u0441\\u043a\\u0438\\u0432\\u0430\\u0442\\u044c \\u043f\\u0438\\u0449\\u0443 \\u0441\\u0443\\u043b\\u0442\\u0430\\u043d\\u043a\\u0430\\u043c \\u043f\\u043e\\u043c\\u043e\\u0433\\u0430\\u044e\\u0442 \\u0438\\u0445 \\u0434\\u043b\\u0438\\u043d\\u043d\\u044b\\u0435 \\u0443\\u0441\\u0438\\u043a\\u0438: \\u0440\\u044b\\u0431\\u043a\\u0430 \\u043c\\u0435\\u0434\\u043b\\u0435\\u043d\\u043d\\u043e \\u043f\\u0435\\u0440\\u0435\\u043c\\u0435\\u0449\\u0430\\u0435\\u0442\\u0441\\u044f \\u0443 \\u0441\\u0430\\u043c\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430 \\u0438 \\u0442\\u0449\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\\"\\u043e\\u0449\\u0443\\u043f\\u044b\\u0432\\u0430\\u0435\\u0442\\\" \\u0435\\u0433\\u043e \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u044c \\u0443\\u0441\\u0438\\u043a\\u0430\\u043c\\u0438 \\u0432 \\u043f\\u043e\\u0438\\u0441\\u043a\\u0430\\u0445 \\u043c\\u0435\\u043b\\u043a\\u0438\\u0445 \\u0434\\u043e\\u043d\\u043d\\u044b\\u0445 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u0445. \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e\\u043d\\u043d\\u044b\\u043c\\u0438 \\u0431\\u0435\\u0441\\u043f\\u043e\\u0437\\u0432\\u043e\\u043d\\u043e\\u0447\\u043d\\u044b\\u043c\\u0438.\",\"reproduction\":\"\\u041f\\u043e\\u043b\\u043e\\u0432\\u043e\\u0439 \\u0437\\u0440\\u0435\\u043b\\u043e\\u0441\\u0442\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0432\\u0442\\u043e\\u0440\\u043e\\u043c-\\u0442\\u0440\\u0435\\u0442\\u044c\\u0435\\u043c \\u0433\\u043e\\u0434\\u0443 \\u0436\\u0438\\u0437\\u043d\\u0438. \\u041d\\u0435\\u0440\\u0435\\u0441\\u0442 - \\u0441 \\u043c\\u0430\\u044f \\u043f\\u043e \\u0430\\u0432\\u0433\\u0443\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u0430\\u0445 \\u043e\\u0442 10 \\u0434\\u043e 55 \\u043c\\u0435\\u0442\\u0440\\u043e\\u0432 \\u0431\\u043b\\u0438\\u0437 \\u0438\\u043b\\u0438\\u0441\\u0442\\u043e\\u0433\\u043e \\u0438\\u043b\\u0438 \\u043f\\u0435\\u0441\\u0447\\u0430\\u043d\\u043e\\u0433\\u043e \\u0434\\u043d\\u0430. \\u041a\\u0430\\u0436\\u0434\\u0430\\u044f \\u0441\\u0430\\u043c\\u043a\\u0430 \\u0432\\u044b\\u043c\\u0435\\u0442\\u044b\\u0432\\u0430\\u0435\\u0442 \\u043f\\u043e \\u043d\\u0435\\u0441\\u043a\\u043e\\u043b\\u044c\\u043a\\u043e \\u043f\\u043e\\u0440\\u0446\\u0438\\u0439 \\u0438\\u043a\\u0440\\u044b, \\u043e\\u0431\\u0449\\u0430\\u044f \\u043f\\u043b\\u043e\\u0434\\u043e\\u0432\\u0438\\u0442\\u043e\\u0441\\u0442\\u044c \\u0437\\u0430 \\u0441\\u0435\\u0437\\u043e\\u043d \\u0441\\u043e\\u0441\\u0442\\u0430\\u0432\\u043b\\u044f\\u0435\\u0442 \\u043e\\u0442 3,6 \\u0434\\u043e 88 \\u0442\\u044b\\u0441\\u044f\\u0447 \\u0438\\u043a\\u0440\\u0438\\u043d\\u043e\\u043a.\\r\\n\\u0412\\u044b\\u043c\\u0435\\u0442\\u0430\\u043d\\u043d\\u0430\\u044f \\u0438 \\u043e\\u043f\\u043b\\u043e\\u0434\\u043e\\u0442\\u0432\\u043e\\u0440\\u0435\\u043d\\u043d\\u0430\\u044f \\u0438\\u043a\\u0440\\u0430 \\u043f\\u043e\\u0434\\u043d\\u0438\\u043c\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0440\\u0445\\u043d\\u0438\\u0435 \\u0441\\u043b\\u043e\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u0447\\u0435\\u0440\\u0435\\u0437 3,5-2,5 \\u0434\\u043d\\u044f, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0442\\u0435\\u043c\\u043f\\u0435\\u0440\\u0430\\u0442\\u0443\\u0440\\u044b, \\u0438\\u0437 \\u043d\\u0435\\u0435 \\u0432\\u044b\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043b\\u0438\\u0447\\u0438\\u043d\\u043a\\u0438. \\r\\n            \\u041f\\u0438\\u0442\\u0430\\u0435\\u0442\\u0441\\u044f \\u043c\\u043e\\u043b\\u043e\\u0434\\u044c \\u043c\\u0435\\u043b\\u043a\\u0438\\u043c\\u0438 \\u0436\\u0438\\u0432\\u043e\\u0442\\u043d\\u044b\\u043c\\u0438 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u043c\\u0430\\u043c\\u0438 \\u0442\\u043e\\u043b\\u0449\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0438 \\u043c\\u0430\\u0441\\u043a\\u0438\\u0440\\u0443\\u0435\\u0442\\u0441\\u044f \\u043e\\u0442 \\u0445\\u0438\\u0449\\u043d\\u0438\\u043a\\u043e\\u0432 \\u0441\\u0435\\u0440\\u0435\\u0431\\u0440\\u0438\\u0441\\u0442\\u043e\\u0439, \\u0441\\u0438\\u043d\\u0435\\u0432\\u0430\\u0442\\u043e-\\u0437\\u0435\\u043b\\u0435\\u043d\\u043e\\u0439 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u043e\\u0439. \\u041f\\u0440\\u0438\\u043c\\u0435\\u0440\\u043d\\u043e \\u0447\\u0435\\u0440\\u0435\\u0437 1,5-2 \\u043c\\u0435\\u0441\\u044f\\u0446\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0432\\u044b\\u043b\\u0443\\u043f\\u043b\\u0435\\u043d\\u0438\\u044f \\u043c\\u0430\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0438, \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u043d\\u0443\\u0432 \\u0434\\u043b\\u0438\\u043d\\u044b 4-6 \\u0441\\u0430\\u043d\\u0442\\u0438\\u043c\\u0435\\u0442\\u0440\\u043e\\u0432, \\u043e\\u043f\\u0443\\u0441\\u043a\\u0430\\u044e\\u0442\\u0441\\u044f \\u043d\\u0430 \\u0434\\u043d\\u043e \\u0438 \\u043f\\u0440\\u0438\\u043e\\u0431\\u0440\\u0435\\u0442\\u0430\\u044e\\u0442 \\u0442\\u0438\\u043f\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0434\\u043b\\u044f \\u0432\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0445 \\u0440\\u044b\\u0431 \\u043e\\u0431\\u043b\\u0438\\u043a \\u0438 \\u043e\\u043a\\u0440\\u0430\\u0441\\u043a\\u0443.\\r\\n\\u0412\\u0437\\u0440\\u043e\\u0441\\u043b\\u044b\\u0435 \\u0431\\u0430\\u0440\\u0430\\u0431\\u0443\\u043b\\u044c\\u043a\\u0438 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434\\u044f\\u0442 \\u043a \\u0431\\u0435\\u0440\\u0435\\u0433\\u0430\\u043c \\u0432\\u0435\\u0441\\u043d\\u043e\\u0439 \\u0438 \\u0434\\u0435\\u0440\\u0436\\u0430\\u0442\\u0441\\u044f \\u0437\\u0434\\u0435\\u0441\\u044c \\u0434\\u043e \\u0437\\u0438\\u043c\\u044b, \\u0438\\u043d\\u043e\\u0433\\u0434\\u0430 \\u043e\\u043d\\u0438 \\u043f\\u043e\\u043f\\u0430\\u0434\\u0430\\u044e\\u0442\\u0441\\u044f \\u0438 \\u0432 \\u0443\\u0441\\u0442\\u044c\\u044f\\u0445 \\u0440\\u0435\\u043a. \\u041d\\u0430 \\u0437\\u0438\\u043c\\u0443 \\u0440\\u044b\\u0431\\u044b \\u043e\\u0442\\u043a\\u043e\\u0447\\u0435\\u0432\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043d\\u0430 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0438\\u0435 \\u0433\\u043b\\u0443\\u0431\\u0438\\u043d\\u044b. \\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0438\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e\\u0441\\u0442\\u044c \\u0436\\u0438\\u0437\\u043d\\u0438 - 10-12 \\u043b\\u0435\\u0442, \\u0432 \\u043f\\u0435\\u0440\\u0432\\u043e\\u0435 \\u043b\\u0435\\u0442\\u043e \\u0441\\u0432\\u043e\\u0435\\u0439 \\u0436\\u0438\\u0437\\u043d\\u0438 \\u043c\\u043e\\u0433\\u0443\\u0442 \\u0434\\u043e\\u0441\\u0442\\u0438\\u0433\\u0430\\u0442\\u044c \\u0434\\u043b\\u0438\\u043d\\u044b \\u043e\\u0442 4 \\u0434\\u043e 12 \\u0441\\u043c, \\u0432 \\u0437\\u0430\\u0432\\u0438\\u0441\\u0438\\u043c\\u043e\\u0441\\u0442\\u0438 \\u043e\\u0442 \\u0441\\u0440\\u043e\\u043a\\u043e\\u0432 \\u043d\\u0435\\u0440\\u0435\\u0441\\u0442\\u0430.\",\"catches\":\"\\u0427\\u0442\\u043e \\u043a\\u0430\\u0441\\u0430\\u0435\\u0442\\u0441\\u044f \\u043b\\u043e\\u0432\\u043b\\u0438 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430, \\u0442\\u043e \\u043f\\u0440\\u043e\\u0446\\u0435\\u0441\\u0441 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0438 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u0435\\u0442\\u0441\\u044f \\u0432 \\u0432\\u0435\\u0441\\u043d\\u044b (\\u043a\\u0430\\u043a \\u0442\\u043e\\u043b\\u044c\\u043a\\u043e \\u0432\\u043e\\u0434\\u0430 \\u043f\\u0440\\u043e\\u0433\\u0440\\u0435\\u0435\\u0442\\u0441\\u044f \\u0432\\u044b\\u0448\\u0435 10 \\u0433\\u0440\\u0430\\u0434\\u0443\\u0441\\u043e\\u0432) \\u0438 \\u043f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0430\\u0435\\u0442\\u0441\\u044f \\u0434\\u043e \\u0441\\u0435\\u0440\\u0435\\u0434\\u0438\\u043d\\u044b \\u043e\\u0441\\u0435\\u043d\\u0438. \\u0412 \\u044d\\u0442\\u043e\\u0442 \\u0448\\u0438\\u0440\\u043e\\u043a\\u0438\\u0439 \\u043f\\u0440\\u043e\\u043c\\u0435\\u0436\\u0443\\u0442\\u043e\\u043a \\u0432\\u0440\\u0435\\u043c\\u0435\\u043d\\u0438, \\u0431\\u044b\\u0432\\u0430\\u044e\\u0442 \\u043f\\u0435\\u0440\\u0438\\u043e\\u0434\\u044b \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e\\u0433\\u043e \\u043a\\u043b\\u0435\\u0432\\u0430 \\u044d\\u0442\\u043e\\u0439 \\u0440\\u044b\\u0431\\u044b, \\u0438 \\u0441\\u043f\\u0430\\u0434\\u044b, \\u0441\\u043e\\u0431\\u0441\\u0442\\u0432\\u0435\\u043d\\u043d\\u043e, \\u043a\\u0430\\u043a \\u0438 \\u0443 \\u043c\\u043d\\u043e\\u0433\\u0438\\u0445 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u043f\\u0440\\u0435\\u0434\\u0441\\u0442\\u0430\\u0432\\u0438\\u0442\\u0435\\u043b\\u0435\\u0439 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0445 \\u0438 \\u0434\\u0440\\u0443\\u0433\\u0438\\u0445 \\u0441\\u0435\\u043c\\u0435\\u0439\\u0441\\u0442\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0435\\u0441\\u0442\\u044c \\u043e\\u0434\\u043d\\u0430 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u043d\\u0435\\u0439\\u0448\\u0430\\u044f \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e\\u0441\\u0442\\u044c, \\u043a\\u043e\\u0442\\u043e\\u0440\\u0443\\u044e \\u043d\\u0443\\u0436\\u043d\\u043e \\u0437\\u043d\\u0430\\u0442\\u044c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0443: \\u0447\\u0435\\u043c \\u0436\\u0430\\u0440\\u0447\\u0435, \\u0442\\u0435\\u043c \\u043b\\u0443\\u0447\\u0448\\u0435 \\u0431\\u0443\\u0434\\u0435\\u0442 \\u043a\\u043b\\u0435\\u0432 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430. \\u0418 \\u043d\\u0430\\u043e\\u0431\\u043e\\u0440\\u043e\\u0442.\\r\\n\\u0412 \\u0436\\u0430\\u0440\\u0443, \\u0431\\u0435\\u043b\\u044b\\u0439 \\u0430\\u043c\\u0443\\u0440 \\u043e\\u0441\\u043e\\u0431\\u0435\\u043d\\u043d\\u043e \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u043a\\u043e\\u0440\\u043c\\u0438\\u0442\\u0441\\u044f, \\u0430\\u043a\\u0442\\u0438\\u0432\\u043d\\u043e \\u0432\\u044b\\u0434\\u0430\\u0432\\u0430\\u044f \\u0441\\u0432\\u043e\\u0435 \\u043f\\u0440\\u0438\\u0441\\u0443\\u0442\\u0441\\u0442\\u0432\\u0438\\u0435: \\u043d\\u0430 \\u043f\\u043e\\u0432\\u0435\\u0440\\u0445\\u043d\\u043e\\u0441\\u0442\\u0438 \\u0432\\u043e\\u0434\\u044b \\u0434\\u0430\\u0436\\u0435 \\u043d\\u0435\\u043e\\u043f\\u044b\\u0442\\u043d\\u044b\\u0439 \\u0440\\u044b\\u0431\\u0430\\u043a \\u043c\\u043e\\u0436\\u0435\\u0442 \\u0443\\u0432\\u0438\\u0434\\u0435\\u0442\\u044c \\u043c\\u043e\\u0449\\u043d\\u044b\\u0435 \\u0432\\u0441\\u043f\\u043b\\u0435\\u0441\\u043a\\u0438 \\u0438 \\u0440\\u0430\\u0441\\u0445\\u043e\\u0434\\u044f\\u0449\\u0438\\u0435\\u0441\\u044f \\u0432 \\u0441\\u0442\\u043e\\u0440\\u043e\\u043d\\u044b \\u043a\\u0440\\u0443\\u0433\\u0438, \\u0430 \\u0435\\u0441\\u043b\\u0438 \\u043f\\u043e\\u0432\\u0435\\u0437\\u0435\\u0442 (\\u043d\\u0430\\u043f\\u0440\\u0438\\u043c\\u0435\\u0440, \\u0435\\u0441\\u043b\\u0438 \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u0442\\u044c \\u0441 \\u0431\\u043e\\u043b\\u0435\\u0435 \\u0432\\u044b\\u0441\\u043e\\u043a\\u043e\\u0433\\u043e \\u0443\\u0447\\u0430\\u0441\\u0442\\u043a\\u0430), \\u0442\\u043e \\u043c\\u043e\\u0436\\u043d\\u043e \\u0437\\u0430\\u043c\\u0435\\u0442\\u0438\\u0442\\u044c \\u0438 \\u0441\\u0430\\u043c\\u0443 \\u0440\\u044b\\u0431\\u0443.\\r\\n\\u041d\\u043e, \\u043d\\u0430\\u0439\\u0442\\u0438 \\u0430\\u043c\\u0443\\u0440\\u0430 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u043f\\u043e\\u043b\\u043e\\u0432\\u0438\\u043d\\u0430 \\u0434\\u0435\\u043b\\u0430, \\u0434\\u0430\\u0436\\u0435 \\u0441\\u043a\\u0430\\u0436\\u0435\\u043c \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u2014 \\u044d\\u0442\\u043e \\u0435\\u0449\\u0451 \\u0441\\u043e\\u0432\\u0435\\u0440\\u0448\\u0435\\u043d\\u043d\\u043e \\u043d\\u0435 \\u0437\\u043d\\u0430\\u0447\\u0438\\u0442, \\u0447\\u0442\\u043e \\u0443\\u043b\\u043e\\u0432 \\u0431\\u0443\\u0434\\u0435\\u0442, \\u0430 \\u0440\\u044b\\u0431\\u0430\\u043b\\u043a\\u0430 \\u0443\\u0434\\u0430\\u0441\\u0442\\u0441\\u044f.\",\"baits\":\"\\u041f\\u043e\\u043d\\u044f\\u0442\\u043d\\u043e, \\u0447\\u0442\\u043e \\u0432 \\u043a\\u0430\\u0447\\u0435\\u0441\\u0442\\u0432\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438 \\u0438\\u0441\\u043f\\u043e\\u043b\\u044c\\u0437\\u0443\\u044e\\u0442\\u0441\\u044f \\u043b\\u0438\\u0441\\u0442\\u044c\\u044f \\u0438 \\u0441\\u0442\\u0435\\u0431\\u043b\\u0438 \\u043a\\u0430\\u043c\\u044b\\u0448\\u0430, \\u0441\\u0442\\u0435\\u0431\\u0435\\u043b\\u044c\\u043a\\u0438 \\u0438 \\u0437\\u0435\\u0440\\u043d\\u0430 \\u043a\\u0443\\u043a\\u0443\\u0440\\u0443\\u0437\\u044b, \\u0440\\u0430\\u0437\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0440\\u043e\\u0441\\u043b\\u0438 (\\u0436\\u0435\\u043b\\u0430\\u0442\\u0435\\u043b\\u044c\\u043d\\u043e \\u0438\\u0437 \\u044d\\u0442\\u043e\\u0433\\u043e \\u0436\\u0435 \\u0432\\u043e\\u0434\\u043e\\u0435\\u043c\\u0430).\\r\\n\\u0418\\u043d\\u043e\\u0433\\u0434\\u0430 \\u0441\\u0440\\u0430\\u0431\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0442 \\u0438 \\u043a\\u0430\\u0440\\u043f\\u043e\\u0432\\u044b\\u0435 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0438, \\u0432 \\u043e\\u0431\\u0449\\u0435\\u043c \\u2014 \\u0441 \\u043d\\u0430\\u0441\\u0430\\u0434\\u043a\\u0430\\u043c\\u0438 \\u043d\\u0430 \\u0431\\u0435\\u043b\\u043e\\u0433\\u043e \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043d\\u0443\\u0436\\u043d\\u043e \\u044d\\u043a\\u0441\\u043f\\u0435\\u0440\\u0438\\u043c\\u0435\\u043d\\u0442\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c. \\u0418 \\u043d\\u0430\\u0447\\u0438\\u043d\\u0430\\u044e\\u0449\\u0438\\u043c \\u0440\\u044b\\u0431\\u0430\\u043a\\u0430\\u043c \\u043c\\u043e\\u0436\\u043d\\u043e \\u0434\\u0430\\u0442\\u044c \\u043f\\u0440\\u043e\\u0441\\u0442\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442.\\r\\n\\u0422\\u0435\\u043e\\u0440\\u0438\\u044f \\u2014 \\u044d\\u0442\\u043e, \\u043a\\u043e\\u043d\\u0435\\u0447\\u043d\\u043e \\u0445\\u043e\\u0440\\u043e\\u0448\\u043e, \\u043d\\u043e \\u0441\\u0430\\u043c\\u044b\\u0439 \\u043b\\u0443\\u0447\\u0448\\u0438\\u0439 \\u0438 \\u043f\\u0440\\u043e\\u0432\\u0435\\u0440\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434: \\u0432\\u0441\\u0435 \\u0443\\u0442\\u043e\\u0447\\u043d\\u0438\\u0442\\u044c \\u0438 \\u0440\\u0430\\u0437\\u0443\\u0437\\u043d\\u0430\\u0442\\u044c \\u0443 \\u043c\\u0435\\u0441\\u0442\\u043d\\u044b\\u0445 \\u0440\\u044b\\u0431\\u0430\\u043a\\u043e\\u0432.\\r\\n\\u0422\\u0430\\u043a, \\u0430\\u043c\\u0443\\u0440\\u0430 \\u043b\\u043e\\u0432\\u044f\\u0442 \\u043d\\u0430 \\u043f\\u043e\\u043f\\u043b\\u0430\\u0432\\u043e\\u0447\\u043d\\u0443\\u044e \\u0441\\u043d\\u0430\\u0441\\u0442\\u044c (\\u0448\\u0442\\u0435\\u043a\\u0435\\u0440, \\u043c\\u0430\\u0442\\u0447), \\u043d\\u0430 \\u0444\\u0438\\u0434\\u0435\\u0440, \\u043d\\u0430\\u0445\\u043b\\u044b\\u0441\\u0442\\u043e\\u043c.\\r\\n\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0439 \\u043c\\u0435\\u0442\\u043e\\u0434 \\u0431\\u043e\\u043b\\u044c\\u0448\\u0435 \\u044f\\u0432\\u043b\\u044f\\u0435\\u0442\\u0441\\u044f \\u043d\\u0435\\u043a\\u043e\\u0442\\u043e\\u0440\\u043e\\u0439 \\u044d\\u043a\\u0437\\u043e\\u0442\\u0438\\u043a\\u043e\\u0439, \\u043d\\u043e \\u043e\\u0447\\u0435\\u043d\\u044c \\u044d\\u0444\\u0444\\u0435\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0438 \\u0437\\u0430\\u0445\\u0432\\u0430\\u0442\\u044b\\u0432\\u0430\\u044e\\u0449\\u0438\\u0439.\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:26:33', '2022-01-20 14:26:33'),
(1359, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:26:33', '2022-01-20 14:26:33'),
(1360, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:28:50', '2022-01-20 14:28:50'),
(1361, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:28:55', '2022-01-20 14:28:55'),
(1362, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:28:55', '2022-01-20 14:28:55'),
(1363, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:28:56', '2022-01-20 14:28:56'),
(1364, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:28:58', '2022-01-20 14:28:58'),
(1365, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:29:24', '2022-01-20 14:29:24'),
(1366, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:29:25', '2022-01-20 14:29:25'),
(1367, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:29:27', '2022-01-20 14:29:27'),
(1368, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"Morone chrysops2\",\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:29:47', '2022-01-20 14:29:47'),
(1369, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:29:48', '2022-01-20 14:29:48'),
(1370, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 14:29:58', '2022-01-20 14:29:58'),
(1371, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:29:59', '2022-01-20 14:29:59'),
(1372, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:32:12', '2022-01-20 14:32:12'),
(1373, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:32:19', '2022-01-20 14:32:19'),
(1374, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:32:22', '2022-01-20 14:32:22'),
(1375, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:32:30', '2022-01-20 14:32:30'),
(1376, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:32:46', '2022-01-20 14:32:46'),
(1377, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:32:47', '2022-01-20 14:32:47'),
(1378, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:32:49', '2022-01-20 14:32:49'),
(1379, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:41:38', '2022-01-20 14:41:38'),
(1380, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:41:40', '2022-01-20 14:41:40'),
(1381, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;17\",\"temp_weight\":\"0.5\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:42:29', '2022-01-20 14:42:29'),
(1382, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:42:29', '2022-01-20 14:42:29'),
(1383, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:43:06', '2022-01-20 14:43:06'),
(1384, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.5\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:43:29', '2022-01-20 14:43:29'),
(1385, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 14:43:30', '2022-01-20 14:43:30'),
(1386, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:44:03', '2022-01-20 14:44:03'),
(1387, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 14:44:08', '2022-01-20 14:44:08'),
(1388, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:44:09', '2022-01-20 14:44:09'),
(1389, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:46:28', '2022-01-20 14:46:28'),
(1390, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"1\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:46:39', '2022-01-20 14:46:39'),
(1391, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:46:40', '2022-01-20 14:46:40'),
(1392, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 14:48:34', '2022-01-20 14:48:34'),
(1393, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:48:34', '2022-01-20 14:48:34'),
(1394, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:48:40', '2022-01-20 14:48:40'),
(1395, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"1\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:48:47', '2022-01-20 14:48:47'),
(1396, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:48:47', '2022-01-20 14:48:47'),
(1397, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 14:52:36', '2022-01-20 14:52:36'),
(1398, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:52:36', '2022-01-20 14:52:36'),
(1399, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 14:52:38', '2022-01-20 14:52:38'),
(1400, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"1\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 14:52:45', '2022-01-20 14:52:45'),
(1401, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 14:52:45', '2022-01-20 14:52:45'),
(1402, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:08:42', '2022-01-20 15:08:42'),
(1403, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:08:42', '2022-01-20 15:08:42'),
(1404, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:08:45', '2022-01-20 15:08:45'),
(1405, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"1\",\"daytime\":[null],\"daytime_weight\":\"0\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:08:53', '2022-01-20 15:08:53'),
(1406, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:08:54', '2022-01-20 15:08:54'),
(1407, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:10:49', '2022-01-20 15:10:49'),
(1408, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:10:49', '2022-01-20 15:10:49'),
(1409, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:10:51', '2022-01-20 15:10:51'),
(1410, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0434\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"1\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:11:08', '2022-01-20 15:11:08'),
(1411, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:11:08', '2022-01-20 15:11:08'),
(1412, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:11:16', '2022-01-20 15:11:16'),
(1413, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:11:20', '2022-01-20 15:11:20'),
(1414, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:11:20', '2022-01-20 15:11:20'),
(1415, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:12:06', '2022-01-20 15:12:06'),
(1416, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"1\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg2\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:12:13', '2022-01-20 15:12:13'),
(1417, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:14:09', '2022-01-20 15:14:09'),
(1418, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:14:11', '2022-01-20 15:14:11'),
(1419, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:14:19', '2022-01-20 15:14:19'),
(1420, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0434\\u0435\\u043d\\u044c\",null],\"daytime_weight\":\"1\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:16:39', '2022-01-20 15:16:39'),
(1421, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:18:02', '2022-01-20 15:18:02'),
(1422, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:18:05', '2022-01-20 15:18:05'),
(1423, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0434\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"1\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg2\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:18:25', '2022-01-20 15:18:25'),
(1424, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:18:26', '2022-01-20 15:18:26'),
(1425, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:20:01', '2022-01-20 15:20:01'),
(1426, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg2\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:20:05', '2022-01-20 15:20:05'),
(1427, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:20:06', '2022-01-20 15:20:06'),
(1428, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:20:09', '2022-01-20 15:20:09'),
(1429, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0434\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"1\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:20:30', '2022-01-20 15:20:30'),
(1430, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:20:30', '2022-01-20 15:20:30'),
(1431, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:20:43', '2022-01-20 15:20:43'),
(1432, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:20:44', '2022-01-20 15:20:44'),
(1433, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:20:47', '2022-01-20 15:20:47'),
(1434, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:20:48', '2022-01-20 15:20:48'),
(1435, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:21:00', '2022-01-20 15:21:00');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1436, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"1\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:21:09', '2022-01-20 15:21:09'),
(1437, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:21:10', '2022-01-20 15:21:10'),
(1438, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:21:48', '2022-01-20 15:21:48'),
(1439, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:21:50', '2022-01-20 15:21:50'),
(1440, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[null],\"daytime_weight\":\"1\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg2\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:21:58', '2022-01-20 15:21:58'),
(1441, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:21:59', '2022-01-20 15:21:59'),
(1442, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:22:12', '2022-01-20 15:22:12'),
(1443, 1, 'admin/fishes/fggdfg,fggdfg2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 15:22:17', '2022-01-20 15:22:17'),
(1444, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:22:18', '2022-01-20 15:22:18'),
(1445, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:22:20', '2022-01-20 15:22:20'),
(1446, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:22:55', '2022-01-20 15:22:55'),
(1447, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:22:58', '2022-01-20 15:22:58'),
(1448, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:23:00', '2022-01-20 15:23:00'),
(1449, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0434\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"1\",\"yeartime\":[null],\"yeartime_weight\":\"0\",\"weather\":[null],\"weather_weight\":\"0\",\"moon\":[null],\"moon_weight\":\"0\",\"wind\":\"0;10\",\"wind_weight\":\"0\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0\",\"clouds\":\"0;100\",\"clouds_weight\":\"0\",\"humidity\":\"0;100\",\"humidity_weight\":\"0\",\"uvi\":\"0;10\",\"uvi_weight\":\"0\"},\"fish_name\":\"fggdfg2\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:23:11', '2022-01-20 15:23:11'),
(1450, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:23:12', '2022-01-20 15:23:12'),
(1451, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg2\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:32:20', '2022-01-20 15:32:20'),
(1452, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:32:20', '2022-01-20 15:32:20'),
(1453, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:32:23', '2022-01-20 15:32:23'),
(1454, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"1\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0434\\u0435\\u043d\\u044c\",\"\\u043d\\u043e\\u0447\\u044c\",null],\"daytime_weight\":\"1\",\"yeartime\":[\"\\u043e\\u0441\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0441\\u043d\\u0430\",\"\\u0437\\u0438\\u043c\\u0430\",null],\"yeartime_weight\":\"1\",\"weather\":[\"\\u043e\\u0431\\u043b\\u0430\\u0447\\u043d\\u043e\",\"\\u0433\\u0440\\u043e\\u0437\\u0430\",\"\\u0441\\u043d\\u0435\\u0433\",\"\\u0442\\u0443\\u043c\\u0430\\u043d\",null],\"weather_weight\":\"1\",\"moon\":[\"\\u043d\\u043e\\u0432\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",\"\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",null],\"moon_weight\":\"1\",\"wind\":\"6;11\",\"wind_weight\":\"1\",\"pressure\":\"750;1000\",\"pressure_weight\":\"1\",\"clouds\":\"0;100\",\"clouds_weight\":\"1\",\"humidity\":\"0;100\",\"humidity_weight\":\"1\",\"uvi\":\"0;10\",\"uvi_weight\":\"1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:33:10', '2022-01-20 15:33:10'),
(1455, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:33:11', '2022-01-20 15:33:11'),
(1456, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:33:58', '2022-01-20 15:33:58'),
(1457, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:33:58', '2022-01-20 15:33:58'),
(1458, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:35:43', '2022-01-20 15:35:43'),
(1459, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":\"gdfg\",\"genus\":\"gdfgdfg\",\"lifestyle\":\"dfgdfg\",\"food_type\":\"fdgdfgdf\",\"area\":\"dfgdfgdfg\",\"appereance\":\"dfgdfgfdgfg\",\"habitat\":\"dfg\",\"food_features\":\"fgdg\",\"reproduction\":\"dfgdfg\",\"catches\":\"dfgdf\",\"baits\":\"dfgdfg\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:36:52', '2022-01-20 15:36:52'),
(1460, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:36:53', '2022-01-20 15:36:53'),
(1461, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":\"gdfg\",\"genus\":\"gdfgdfg\",\"lifestyle\":\"dfgdfg\",\"food_type\":\"fdgdfgdf\",\"area\":\"dfgdfgdfg\",\"appereance\":\"dfgdfgfdgfg\",\"habitat\":\"dfg\",\"food_features\":\"fgdg\",\"reproduction\":\"dfgdfg\",\"catches\":\"dfgdf\",\"baits\":\"dfgdfg\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 15:37:55', '2022-01-20 15:37:55'),
(1462, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:37:55', '2022-01-20 15:37:55'),
(1463, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"0.63\",\"yeartime\":[\"\\u043b\\u0435\\u0442\\u043e\",null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[\"\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":\"gdfg\",\"genus\":\"gdfgdfg\",\"lifestyle\":\"dfgdfg\",\"food_type\":\"fdgdfgdf\",\"area\":\"dfgdfgdfg\",\"appereance\":\"dfgdfgfdgfg\",\"habitat\":\"dfg\",\"food_features\":\"fgdg\",\"reproduction\":\"dfgdfg\",\"catches\":\"dfgdf\",\"baits\":\"dfgdfg\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 15:38:51', '2022-01-20 15:38:51'),
(1464, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:38:52', '2022-01-20 15:38:52'),
(1465, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"0.63\",\"yeartime\":[\"\\u043b\\u0435\\u0442\\u043e\",null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[\"\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":\"gdfg\",\"genus\":\"gdfgdfg\",\"lifestyle\":\"dfgdfg\",\"food_type\":\"fdgdfgdf\",\"area\":\"dfgdfgdfg\",\"appereance\":\"dfgdfgfdgfg\",\"habitat\":\"dfg\",\"food_features\":\"fgdg\",\"reproduction\":\"dfgdfg\",\"catches\":\"dfgdf\",\"baits\":\"dfgdfg\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 15:40:31', '2022-01-20 15:40:31'),
(1466, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:40:31', '2022-01-20 15:40:31'),
(1467, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"0.63\",\"yeartime\":[\"\\u043b\\u0435\\u0442\\u043e\",null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[\"\\u043f\\u043e\\u043b\\u043d\\u043e\\u043b\\u0443\\u043d\\u0438\\u0435\",null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":\"jkjkljklkl\",\"other_names\":\"klkl;\",\"family\":\"gdfg\",\"genus\":\"gdfgdfg\",\"lifestyle\":\"dfgdfg\",\"food_type\":\"fdgdfgdf\",\"area\":\"dfgdfgdfg\",\"appereance\":\"dfgdfgfdgfg\",\"habitat\":\"dfg\",\"food_features\":\"fgdg\",\"reproduction\":\"dfgdfg\",\"catches\":\"dfgdf\",\"baits\":\"dfgdfg\"},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 15:42:21', '2022-01-20 15:42:21'),
(1468, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:42:21', '2022-01-20 15:42:21'),
(1469, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:42:35', '2022-01-20 15:42:35'),
(1470, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:42:36', '2022-01-20 15:42:36'),
(1471, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[\"\\u0443\\u0442\\u0440\\u043e\",\"\\u0434\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:42:55', '2022-01-20 15:42:55'),
(1472, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:42:56', '2022-01-20 15:42:56'),
(1473, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:44:38', '2022-01-20 15:44:38'),
(1474, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:44:39', '2022-01-20 15:44:39'),
(1475, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:44:41', '2022-01-20 15:44:41'),
(1476, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[\"\\u0434\\u0435\\u043d\\u044c\",\"\\u0432\\u0435\\u0447\\u0435\\u0440\",null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:44:59', '2022-01-20 15:44:59'),
(1477, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:44:59', '2022-01-20 15:44:59'),
(1478, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:45:14', '2022-01-20 15:45:14'),
(1479, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:45:15', '2022-01-20 15:45:15'),
(1480, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:45:55', '2022-01-20 15:45:55'),
(1481, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:46:09', '2022-01-20 15:46:09'),
(1482, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:46:09', '2022-01-20 15:46:09'),
(1483, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\"}', '2022-01-20 15:47:22', '2022-01-20 15:47:22'),
(1484, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:47:22', '2022-01-20 15:47:22'),
(1485, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:47:27', '2022-01-20 15:47:27'),
(1486, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:47:29', '2022-01-20 15:47:29'),
(1487, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:47:33', '2022-01-20 15:47:33'),
(1488, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:47:34', '2022-01-20 15:47:34'),
(1489, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:49:17', '2022-01-20 15:49:17'),
(1490, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:49:26', '2022-01-20 15:49:26'),
(1491, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:49:26', '2022-01-20 15:49:26'),
(1492, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:52:58', '2022-01-20 15:52:58'),
(1493, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:53:02', '2022-01-20 15:53:02'),
(1494, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:53:03', '2022-01-20 15:53:03'),
(1495, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:53:06', '2022-01-20 15:53:06'),
(1496, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:53:14', '2022-01-20 15:53:14'),
(1497, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:53:15', '2022-01-20 15:53:15'),
(1498, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:57:15', '2022-01-20 15:57:15'),
(1499, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:57:20', '2022-01-20 15:57:20'),
(1500, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:57:20', '2022-01-20 15:57:20'),
(1501, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:57:22', '2022-01-20 15:57:22'),
(1502, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:57:32', '2022-01-20 15:57:32'),
(1503, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '[]', '2022-01-20 15:57:33', '2022-01-20 15:57:33'),
(1504, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:58:45', '2022-01-20 15:58:45'),
(1505, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:58:48', '2022-01-20 15:58:48'),
(1506, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:58:48', '2022-01-20 15:58:48'),
(1507, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:58:51', '2022-01-20 15:58:51'),
(1508, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:58:58', '2022-01-20 15:58:58'),
(1509, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:58:59', '2022-01-20 15:58:59'),
(1510, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 15:59:14', '2022-01-20 15:59:14'),
(1511, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:59:15', '2022-01-20 15:59:15'),
(1512, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 15:59:33', '2022-01-20 15:59:33'),
(1513, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 15:59:42', '2022-01-20 15:59:42'),
(1514, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:59:43', '2022-01-20 15:59:43'),
(1515, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 15:59:57', '2022-01-20 15:59:57'),
(1516, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 16:00:46', '2022-01-20 16:00:46'),
(1517, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:00:46', '2022-01-20 16:00:46'),
(1518, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:01:18', '2022-01-20 16:01:18'),
(1519, 1, 'admin/fishes', 'POST', '127.0.0.1', '{\"factors\":{\"temp\":\"0;20\",\"temp_weight\":\"0.93\",\"daytime\":[null],\"daytime_weight\":\"0.63\",\"yeartime\":[null],\"yeartime_weight\":\"0.51\",\"weather\":[null],\"weather_weight\":\"0.56\",\"moon\":[null],\"moon_weight\":\"0.35\",\"wind\":\"0;10\",\"wind_weight\":\"0.3\",\"pressure\":\"750;1000\",\"pressure_weight\":\"0.21\",\"clouds\":\"0;100\",\"clouds_weight\":\"0.08\",\"humidity\":\"0;100\",\"humidity_weight\":\"0.1\",\"uvi\":\"0;10\",\"uvi_weight\":\"0.1\"},\"fish_name\":\"fggdfg\",\"type\":\"\\u041c\\u043e\\u0440\\u0441\\u043a\\u0438\\u0435\",\"isRed\":\"off\",\"info\":{\"latin\":null,\"other_names\":null,\"family\":null,\"genus\":null,\"lifestyle\":null,\"food_type\":null,\"area\":null,\"appereance\":null,\"habitat\":null,\"food_features\":null,\"reproduction\":null,\"catches\":null,\"baits\":null},\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_previous_\":\"http:\\/\\/afish\\/admin\\/fishes\"}', '2022-01-20 16:03:58', '2022-01-20 16:03:58'),
(1520, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 16:03:59', '2022-01-20 16:03:59'),
(1521, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"fggdfg\",\"_model\":\"App_Models_Fish\",\"_token\":\"4xV30SS0ARrz0MKg67baIqTSxkKWjsOzvUTLpXqI\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-01-20 16:04:21', '2022-01-20 16:04:21'),
(1522, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:04:21', '2022-01-20 16:04:21'),
(1523, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 16:04:42', '2022-01-20 16:04:42'),
(1524, 1, 'admin/fishes', 'GET', '127.0.0.1', '[]', '2022-01-20 16:04:47', '2022-01-20 16:04:47'),
(1525, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:03', '2022-01-20 16:05:03'),
(1526, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:05', '2022-01-20 16:05:05'),
(1527, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:06', '2022-01-20 16:05:06'),
(1528, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:08', '2022-01-20 16:05:08'),
(1529, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:10', '2022-01-20 16:05:10'),
(1530, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:11', '2022-01-20 16:05:11'),
(1531, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:12', '2022-01-20 16:05:12'),
(1532, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:12', '2022-01-20 16:05:12'),
(1533, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:13', '2022-01-20 16:05:13'),
(1534, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:14', '2022-01-20 16:05:14'),
(1535, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:14', '2022-01-20 16:05:14'),
(1536, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:23', '2022-01-20 16:05:23'),
(1537, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:28', '2022-01-20 16:05:28'),
(1538, 1, 'admin/fishes/%D0%90%D0%BC%D1%83%D1%80', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:33', '2022-01-20 16:05:33'),
(1539, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:37', '2022-01-20 16:05:37'),
(1540, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-20 16:05:39', '2022-01-20 16:05:39'),
(1541, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-01-21 11:05:17', '2022-01-21 11:05:17'),
(1542, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:05:21', '2022-01-21 11:05:21'),
(1543, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:05:23', '2022-01-21 11:05:23'),
(1544, 1, 'admin/locations/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:05:28', '2022-01-21 11:05:28'),
(1545, 1, 'admin/locations/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:06:11', '2022-01-21 11:06:11'),
(1546, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:06:16', '2022-01-21 11:06:16'),
(1547, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:06:25', '2022-01-21 11:06:25'),
(1548, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:06:30', '2022-01-21 11:06:30'),
(1549, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:06:31', '2022-01-21 11:06:31'),
(1550, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:06:37', '2022-01-21 11:06:37'),
(1551, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:06:53', '2022-01-21 11:06:53'),
(1552, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:07:21', '2022-01-21 11:07:21'),
(1553, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:07:26', '2022-01-21 11:07:26'),
(1554, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:07:26', '2022-01-21 11:07:26'),
(1555, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:07:28', '2022-01-21 11:07:28'),
(1556, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:07:35', '2022-01-21 11:07:35'),
(1557, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-01-21 11:07:36', '2022-01-21 11:07:36'),
(1558, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-02-06 09:56:16', '2022-02-06 09:56:16'),
(1559, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:56:19', '2022-02-06 09:56:19'),
(1560, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:56:21', '2022-02-06 09:56:21'),
(1561, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:56:23', '2022-02-06 09:56:23'),
(1562, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:56:26', '2022-02-06 09:56:26'),
(1563, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:56:48', '2022-02-06 09:56:48'),
(1564, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:56:51', '2022-02-06 09:56:51'),
(1565, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:56:53', '2022-02-06 09:56:53'),
(1566, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:56:55', '2022-02-06 09:56:55'),
(1567, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-06 09:57:02', '2022-02-06 09:57:02'),
(1568, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-02-22 14:27:42', '2022-02-22 14:27:42'),
(1569, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:30:11', '2022-02-22 14:30:11'),
(1570, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:30:15', '2022-02-22 14:30:15'),
(1571, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:32:55', '2022-02-22 14:32:55'),
(1572, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:32:56', '2022-02-22 14:32:56'),
(1573, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:32:58', '2022-02-22 14:32:58'),
(1574, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:33:00', '2022-02-22 14:33:00'),
(1575, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:33:11', '2022-02-22 14:33:11'),
(1576, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:33:25', '2022-02-22 14:33:25'),
(1577, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:02', '2022-02-22 14:34:02'),
(1578, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:03', '2022-02-22 14:34:03'),
(1579, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:05', '2022-02-22 14:34:05'),
(1580, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:06', '2022-02-22 14:34:06'),
(1581, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:07', '2022-02-22 14:34:07'),
(1582, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:07', '2022-02-22 14:34:07'),
(1583, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:08', '2022-02-22 14:34:08'),
(1584, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:08', '2022-02-22 14:34:08'),
(1585, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:17', '2022-02-22 14:34:17'),
(1586, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:18', '2022-02-22 14:34:18'),
(1587, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:19', '2022-02-22 14:34:19'),
(1588, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:20', '2022-02-22 14:34:20'),
(1589, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:21', '2022-02-22 14:34:21'),
(1590, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:51', '2022-02-22 14:34:51'),
(1591, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:34:56', '2022-02-22 14:34:56'),
(1592, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:35:09', '2022-02-22 14:35:09'),
(1593, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:35:14', '2022-02-22 14:35:14'),
(1594, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2022-02-22 14:35:45', '2022-02-22 14:35:45'),
(1595, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:42:56', '2022-02-22 14:42:56'),
(1596, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:43:44', '2022-02-22 14:43:44'),
(1597, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:44:16', '2022-02-22 14:44:16'),
(1598, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:45:27', '2022-02-22 14:45:27'),
(1599, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:45:29', '2022-02-22 14:45:29'),
(1600, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:45:30', '2022-02-22 14:45:30'),
(1601, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2022-02-22 14:46:27', '2022-02-22 14:46:27'),
(1602, 1, 'admin/users/2', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:47:31', '2022-02-22 14:47:31'),
(1603, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:47:34', '2022-02-22 14:47:34'),
(1604, 1, 'admin/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:47:38', '2022-02-22 14:47:38'),
(1605, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:47:42', '2022-02-22 14:47:42'),
(1606, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:49:59', '2022-02-22 14:49:59'),
(1607, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:50:14', '2022-02-22 14:50:14'),
(1608, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:51:46', '2022-02-22 14:51:46'),
(1609, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:52:01', '2022-02-22 14:52:01'),
(1610, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:52:27', '2022-02-22 14:52:27'),
(1611, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:52:33', '2022-02-22 14:52:33'),
(1612, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:52:33', '2022-02-22 14:52:33'),
(1613, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:52:53', '2022-02-22 14:52:53'),
(1614, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:02', '2022-02-22 14:53:02'),
(1615, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:32', '2022-02-22 14:53:32'),
(1616, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:38', '2022-02-22 14:53:38'),
(1617, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:42', '2022-02-22 14:53:42'),
(1618, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:50', '2022-02-22 14:53:50'),
(1619, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:52', '2022-02-22 14:53:52'),
(1620, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:54', '2022-02-22 14:53:54'),
(1621, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:57', '2022-02-22 14:53:57'),
(1622, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:53:58', '2022-02-22 14:53:58'),
(1623, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:54:40', '2022-02-22 14:54:40'),
(1624, 1, 'admin/fishes/doloribus/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:56:03', '2022-02-22 14:56:03'),
(1625, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:56:07', '2022-02-22 14:56:07'),
(1626, 1, 'admin/fishes/%D0%91%D0%B5%D0%BB%D1%83%D0%B3%D0%B0/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:56:11', '2022-02-22 14:56:11'),
(1627, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:56:57', '2022-02-22 14:56:57'),
(1628, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:57:00', '2022-02-22 14:57:00'),
(1629, 1, 'admin/subjects', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:57:01', '2022-02-22 14:57:01'),
(1630, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:57:09', '2022-02-22 14:57:09'),
(1631, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:57:20', '2022-02-22 14:57:20'),
(1632, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:57:49', '2022-02-22 14:57:49'),
(1633, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:57:54', '2022-02-22 14:57:54'),
(1634, 1, 'admin/locations/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:57:57', '2022-02-22 14:57:57'),
(1635, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:57:58', '2022-02-22 14:57:58'),
(1636, 1, 'admin/water_types', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:58:17', '2022-02-22 14:58:17'),
(1637, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:58:18', '2022-02-22 14:58:18'),
(1638, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:58:27', '2022-02-22 14:58:27'),
(1639, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-22 14:58:33', '2022-02-22 14:58:33'),
(1640, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-02-23 06:12:29', '2022-02-23 06:12:29'),
(1641, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:12:34', '2022-02-23 06:12:34'),
(1642, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:12:35', '2022-02-23 06:12:35'),
(1643, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:12:36', '2022-02-23 06:12:36'),
(1644, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:17:33', '2022-02-23 06:17:33'),
(1645, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:20:41', '2022-02-23 06:20:41'),
(1646, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:20:46', '2022-02-23 06:20:46'),
(1647, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:20:48', '2022-02-23 06:20:48'),
(1648, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:31:09', '2022-02-23 06:31:09'),
(1649, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:31:15', '2022-02-23 06:31:15'),
(1650, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:41:45', '2022-02-23 06:41:45'),
(1651, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 06:41:46', '2022-02-23 06:41:46'),
(1652, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:05:35', '2022-02-23 07:05:35'),
(1653, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:05:36', '2022-02-23 07:05:36'),
(1654, 1, 'admin/fishes/doloribus/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:05:41', '2022-02-23 07:05:41'),
(1655, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:05:58', '2022-02-23 07:05:58'),
(1656, 1, 'admin/fishes/doloribus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:06:35', '2022-02-23 07:06:35'),
(1657, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:06:42', '2022-02-23 07:06:42'),
(1658, 1, 'admin/fishes/doloribus', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:06:44', '2022-02-23 07:06:44'),
(1659, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:06:52', '2022-02-23 07:06:52'),
(1660, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:06:56', '2022-02-23 07:06:56'),
(1661, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:07:17', '2022-02-23 07:07:17'),
(1662, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:08:11', '2022-02-23 07:08:11'),
(1663, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:08:59', '2022-02-23 07:08:59'),
(1664, 1, 'admin/locations/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:10:03', '2022-02-23 07:10:03'),
(1665, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:10:08', '2022-02-23 07:10:08'),
(1666, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:10:46', '2022-02-23 07:10:46'),
(1667, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:12:45', '2022-02-23 07:12:45'),
(1668, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:13:17', '2022-02-23 07:13:17'),
(1669, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:52:18', '2022-02-23 07:52:18');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1670, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:53:29', '2022-02-23 07:53:29'),
(1671, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:54:01', '2022-02-23 07:54:01'),
(1672, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:54:03', '2022-02-23 07:54:03'),
(1673, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:57:51', '2022-02-23 07:57:51'),
(1674, 1, 'admin/locations/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 07:58:02', '2022-02-23 07:58:02'),
(1675, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:00:37', '2022-02-23 08:00:37'),
(1676, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:02:15', '2022-02-23 08:02:15'),
(1677, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:02:16', '2022-02-23 08:02:16'),
(1678, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:02:17', '2022-02-23 08:02:17'),
(1679, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:02:20', '2022-02-23 08:02:20'),
(1680, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/fishes\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:08', '2022-02-23 08:03:08'),
(1681, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:13', '2022-02-23 08:03:13'),
(1682, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:19', '2022-02-23 08:03:19'),
(1683, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:19', '2022-02-23 08:03:19'),
(1684, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/no_img\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:39', '2022-02-23 08:03:39'),
(1685, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:41', '2022-02-23 08:03:41'),
(1686, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:42', '2022-02-23 08:03:42'),
(1687, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:44', '2022-02-23 08:03:44'),
(1688, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:56', '2022-02-23 08:03:56'),
(1689, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:03:57', '2022-02-23 08:03:57'),
(1690, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/locations\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:05:24', '2022-02-23 08:05:24'),
(1691, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"locations\\/5\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:05:26', '2022-02-23 08:05:26'),
(1692, 1, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"locations\\/5\\/5.jpg\"}', '2022-02-23 08:05:27', '2022-02-23 08:05:27'),
(1693, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"locations\\/5\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:07:58', '2022-02-23 08:07:58'),
(1694, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"locations\\/5\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:08:03', '2022-02-23 08:08:03'),
(1695, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"locations\\/5\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:09:17', '2022-02-23 08:09:17'),
(1696, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"locations\\/5\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:09:17', '2022-02-23 08:09:17'),
(1697, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:10:02', '2022-02-23 08:10:02'),
(1698, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:11:17', '2022-02-23 08:11:17'),
(1699, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:11:59', '2022-02-23 08:11:59'),
(1700, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:12:29', '2022-02-23 08:12:29'),
(1701, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 08:13:19', '2022-02-23 08:13:19'),
(1702, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-02-23 14:47:36', '2022-02-23 14:47:36'),
(1703, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 14:47:43', '2022-02-23 14:47:43'),
(1704, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 14:47:44', '2022-02-23 14:47:44'),
(1705, 1, 'admin/fishes/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 14:47:47', '2022-02-23 14:47:47'),
(1706, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 14:49:24', '2022-02-23 14:49:24'),
(1707, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 14:49:44', '2022-02-23 14:49:44'),
(1708, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 14:49:46', '2022-02-23 14:49:46'),
(1709, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 14:49:49', '2022-02-23 14:49:49'),
(1710, 1, 'admin/locations', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-23 14:49:50', '2022-02-23 14:49:50'),
(1711, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-02-25 14:00:24', '2022-02-25 14:00:24'),
(1712, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:00:32', '2022-02-25 14:00:32'),
(1713, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:00:34', '2022-02-25 14:00:34'),
(1714, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:01:52', '2022-02-25 14:01:52'),
(1715, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:01:59', '2022-02-25 14:01:59'),
(1716, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:02:00', '2022-02-25 14:02:00'),
(1717, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:02:02', '2022-02-25 14:02:02'),
(1718, 1, 'admin/fishes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:02:03', '2022-02-25 14:02:03'),
(1719, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:02:39', '2022-02-25 14:02:39'),
(1720, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:03:49', '2022-02-25 14:03:49'),
(1721, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:05:12', '2022-02-25 14:05:12'),
(1722, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:05:30', '2022-02-25 14:05:30'),
(1723, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:05:33', '2022-02-25 14:05:33'),
(1724, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:05:35', '2022-02-25 14:05:35'),
(1725, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:06:26', '2022-02-25 14:06:26'),
(1726, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-02-25 14:06:43', '2022-02-25 14:06:43'),
(1727, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-02-25 14:12:29', '2022-02-25 14:12:29');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Media manager', 'ext.media-manager', '', '/media*', '2022-01-18 05:18:10', '2022-01-18 05:18:10'),
(7, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2022-01-19 10:34:59', '2022-01-19 10:34:59');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-01-18 05:04:24', '2022-01-18 05:04:24');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$yvn8BAQHbqwuMHQQo4iUb.my61elNQ8hgjikdc28HmCVh7oSI2kKC', 'Модератор', NULL, 'MC7OEzSmKPGLWo09sjDZunHHGUISPQsbBvkwTVoyuQvmDMKtJN1ZnQb1QCg6', '2022-01-18 05:04:24', '2022-01-18 05:04:24');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `bites`
--

CREATE TABLE `bites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `catch_num` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `bites`
--

INSERT INTO `bites` (`id`, `name`, `img`, `type`, `description`, `user_id`, `catch_num`) VALUES
(1, 'Воблер №1', 'users/2/bites/1.jpg', 'Воблеры', 'Очень дорогая наживка', 2, 0),
(2, 'Воблер №2', 'users/2/bites/2.jpg', 'Воблеры', 'Хранится в чердаке на даче', 2, 0),
(3, 'Блесна №1', 'users/2/bites/3.jpg', 'Блесны', 'Цвет: красно-синий', 2, 0),
(4, 'Поролонка №1', 'users/2/bites/4.jpg', 'Поролоновые', 'Легко рвется', 2, 0),
(5, 'Мягкая №1', 'users/2/bites/5.jpg', 'Мягкие', 'Отличное качество', 2, 1),
(6, 'Опарыш', 'users/2/bites/6.jpg', 'Животные', 'Вкусный', 2, 0),
(7, 'Растение №1', 'users/2/bites/7.jpg', 'Растительные', 'Красивое', 2, 0),
(44, 'dolores', 'users/2/bites/3.jpg', 'Животные', 'Explicabo.', 4, 0),
(45, 'quas', 'users/2/bites/4.jpg', 'Воблеры', 'Quis.', 6, 0),
(46, 'commodi', 'users/2/bites/5.jpg', 'Мягкие', 'Vel nihil.', 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `fish`
--

CREATE TABLE `fish` (
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `isRed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fish`
--

INSERT INTO `fish` (`img`, `name`, `type`, `isRed`, `created_at`, `updated_at`) VALUES
('fishes/Чехонь/fish12.jpg', 'doloribus', 'Морские', 0, '2022-01-22 11:28:32', '2022-01-22 11:28:32'),
('fishes/Лосось/fish3.jpg', 'quaerat', 'Речные', 0, '2022-01-22 11:28:32', '2022-01-22 11:28:32'),
('fishes/Усач/fish11.jpg', 'saepe', 'Проходные', 0, '2022-01-22 12:02:20', '2022-01-22 12:02:20'),
('fishes/Амур/fish8.jpg', 'Амур', 'Морские', 1, NULL, '2022-01-19 08:45:09'),
('fishes/Белуга/fish1.jpg', 'Белуга', 'Морские', 0, NULL, '2022-01-19 08:45:09'),
('fishes/Берш/fish5.jpg', 'Берш', 'Частиковые', 0, NULL, '2022-01-19 08:45:09'),
('fishes/Вобла/fish6.jpg', 'Вобла', 'Морские', 0, NULL, '2022-01-19 08:45:09'),
('fishes/Горбуша/fish7.jpg', 'Горбуша', 'Пресноводные', 0, NULL, '2022-01-19 08:45:09'),
('fishes/Лосось/fish3.jpg', 'Лосось', 'Проходные', 0, NULL, '2022-01-19 08:45:09'),
('fishes/Окунь/fish2.jpg', 'Окунь', 'Пресноводные', 0, NULL, '2022-01-19 08:45:10'),
('fishes/Осетр/fish8.jpg', 'Осетр', 'Проходные', 0, NULL, '2022-01-19 08:45:10'),
('fishes/Плотва/fish9.jpg', 'Плотва', 'Речные', 0, NULL, '2022-01-19 08:45:10'),
('fishes/Таймень/fish10.jpg', 'Таймень', 'Речные', 0, NULL, '2022-01-19 08:45:10'),
('fishes/Усач/fish11.jpg', 'Усач', 'Морские', 0, NULL, '2022-01-19 08:45:10'),
('fishes/Чехонь/fish12.jpg', 'Чехонь', 'Пресноводные', 1, NULL, '2022-01-19 08:45:10'),
('fishes/Щука/fish4.jpg', 'Щука', 'Речные', 0, NULL, '2022-01-19 08:45:10');

-- --------------------------------------------------------

--
-- Структура таблицы `fish_catches`
--

CREATE TABLE `fish_catches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL,
  `weight` float DEFAULT NULL,
  `bait_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mark_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fish` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fish_catches`
--

INSERT INTO `fish_catches` (`id`, `name`, `img`, `date`, `weight`, `bait_id`, `mark_id`, `fish`, `user_id`, `location_id`) VALUES
(1, 'Улов №1', 'users/2/journal/1.jpg', '2021-12-01 17:18:40', 5.8, 1, 1, 'Белуга', 2, 1),
(2, 'Улов №2', 'users/2/journal/2.jpg', '2021-12-02 17:18:40', 6.9, 1, 1, 'Белуга', 2, 1),
(3, 'Улов №3', 'users/2/journal/3.jpg', '2021-12-03 17:20:40', 8.2, 6, 2, 'Таймень', 2, 2),
(4, 'Улов №4', 'users/2/journal/4.jpg', '2021-12-10 17:20:40', 9, 2, 2, 'Вобла', 2, 2),
(5, 'Улов №5', 'users/2/journal/5.jpg', '2021-12-19 17:22:27', 9.53, 7, 3, 'Вобла', 2, 3),
(6, 'Улов №6', 'users/2/journal/6.jpg', '2021-12-20 17:22:27', 8.4, 5, 3, 'Белуга', 2, 3),
(7, 'Улов №7', 'users/2/journal/7.jpg', '2021-12-17 17:23:58', 12.5, 2, 4, 'Окунь', 2, 4),
(8, 'Улов №8', 'users/2/journal/8.jpg', '2021-12-06 17:23:58', 10, 1, 4, 'Щука', 2, 4),
(9, 'Улов №946', 'users/2/journal/2.jpg', '2022-01-06 14:09:37', 13.24, 3, 4, 'Амур', 2, 1),
(10, 'Улов №5566', 'users/2/journal/1.jpg', '2022-01-09 20:58:30', 15.71, 1, 4, 'Лосось', 2, 1),
(11, 'Улов №4659', 'users/2/journal/3.jpg', '2022-01-07 14:31:52', 12.68, 5, 3, 'Горбуша', 2, 7),
(12, 'Улов №4144', 'users/2/journal/2.jpg', '2022-01-10 17:22:23', 2.95, 7, 3, 'Таймень', 2, 1),
(13, 'Улов №7812', 'users/2/journal/1.jpg', '2022-01-03 01:39:57', 10.56, 6, 3, 'Чехонь', 2, 4),
(14, 'Улов №3318', 'users/2/journal/3.jpg', '2022-01-03 23:48:25', 2.9, 1, 3, 'Таймень', 2, 3),
(15, 'Улов №9627', 'users/2/journal/7.jpg', '2022-01-06 21:04:13', 4.93, 1, 1, 'Белуга', 2, 2),
(16, 'Улов №8715', 'users/2/journal/8.jpg', '2022-01-11 02:13:13', 11.65, 1, 1, 'Лосось', 2, 2),
(17, 'Улов №7688', 'users/2/journal/8.jpg', '2022-01-07 23:08:00', 16.11, 1, 3, 'Белуга', 2, 3),
(18, 'Улов №4712', 'users/2/journal/5.jpg', '2022-01-07 01:06:43', 17.3, 4, 2, 'Чехонь', 2, 2),
(20, 'Улов №5529', 'users/2/journal/1.jpg', '2022-01-05 10:49:19', 11.94, 3, 4, 'Плотва', 2, 4),
(21, 'Улов №3422', 'users/2/journal/6.jpg', '2022-01-08 10:30:16', 1.53, 6, 4, 'Окунь', 2, 4),
(22, 'Улов №7302', 'users/2/journal/7.jpg', '2022-01-03 21:10:19', 2.39, 6, 1, 'Вобла', 2, 5),
(23, 'Улов №6847', 'users/2/journal/4.jpg', '2022-01-01 13:00:49', 2.33, 4, 4, 'Усач', 2, 5),
(24, 'Улов №5073', 'users/2/journal/1.jpg', '2021-12-29 07:56:45', 11.39, 3, 2, 'Вобла', 2, 7),
(25, 'Улов №3026', 'users/2/journal/5.jpg', '2021-12-21 22:58:59', 6.31, 7, 2, 'Окунь', 2, 6),
(26, 'Улов №9881', 'users/2/journal/4.jpg', '2022-01-08 00:38:20', 3.07, 1, 4, 'Окунь', 2, 6),
(27, 'Улов №5760', 'users/2/journal/1.jpg', '2021-12-26 16:43:21', 14.05, 7, 3, 'Плотва', 2, 4),
(28, 'Улов №2927', 'users/2/journal/4.jpg', '2022-01-05 05:25:15', 6.24, 4, 2, 'Берш', 2, 7),
(29, 'Улов №1650', 'users/2/journal/3.jpg', '2022-01-03 08:02:06', 7.46, 7, 4, 'Горбуша', 2, 2),
(31, 'улов6', 'users/2/catches/1VqUERunKOIh4dC6z6c2xC7r7kXgRHvbgRPzdJYK.jpg', '2022-01-24 00:00:00', 6, 6, 2, 'Таймень', 2, 1),
(35, 'hghdfgdfg', NULL, '2022-01-07 00:00:00', 10, 5, 1, 'Горбуша', 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `fish_factors`
--

CREATE TABLE `fish_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fish_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opt_values` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) NOT NULL,
  `units` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ' '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fish_factors`
--

INSERT INTO `fish_factors` (`id`, `fish_name`, `name`, `opt_values`, `type`, `weight`, `units`) VALUES
(14, 'Белуга', 'Температура', '-10,20.22', 'Численный', 0.93, '°C'),
(15, 'Белуга', 'Время суток', 'вечер,утро', 'Строковый', 0.63, ''),
(16, 'Белуга', 'Время года', 'зима', 'Строковый', 0.51, ''),
(17, 'Белуга', 'Осадки', 'дождь,ясно,снег,туман,облачно', 'Строковый', 0.56, ''),
(18, 'Белуга', 'Фаза луны', 'растущая луна,убываюшая луна,полнолуние', 'Строковый', 0.35, ''),
(19, 'Белуга', 'Сила ветра', '4.92,7.07', 'Численный', 0.39, 'м/c'),
(20, 'Белуга', 'Давление', '848,854', 'Численный', 0.21, 'мм.рт.ст.'),
(21, 'Белуга', 'Облачность', '57,100', 'Численный', 0.08, '%'),
(22, 'Белуга', 'Влажность', '57,86', 'Численный', 0.10, '%'),
(23, 'Белуга', 'УФ индекс', '0,8', 'Численный', 0.10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `fish_imgs`
--

CREATE TABLE `fish_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fish_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fish_imgs`
--

INSERT INTO `fish_imgs` (`id`, `fish_name`, `img`) VALUES
(1, 'Белуга', 'fishes/Белуга/1.jpg'),
(2, 'Белуга', 'fishes/Белуга/2.jpg'),
(3, 'Белуга', 'fishes/Белуга/3.jpg'),
(4, 'Белуга', 'fishes/Белуга/4.jpg'),
(24, 'quaerat', 'fishes/Белуга/4.jpg'),
(25, 'quaerat', 'fishes/Белуга/4.jpg'),
(26, 'doloribus', 'fishes/Белуга/4.jpg'),
(27, 'doloribus', 'fishes/Белуга/4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `fish_infos`
--

CREATE TABLE `fish_infos` (
  `fish_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_names` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lifestyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appereance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `habitat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `food_features` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reproduction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catches` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baits` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fish_infos`
--

INSERT INTO `fish_infos` (`fish_name`, `latin`, `other_names`, `family`, `genus`, `type`, `lifestyle`, `food_type`, `area`, `appereance`, `habitat`, `food_features`, `reproduction`, `catches`, `baits`) VALUES
('doloribus', 'accusantium', 'minus laudantium', 'et', 'velit et', 'autem', 'et', 'aut', 'autem enim asperiores esse tempora et voluptatibus est voluptatibus', 'Et dolorum reprehenderit minima quam rerum voluptatem illo. Voluptatem sequi facere et sed enim. Amet iure dolore molestias distinctio. Autem inventore molestiae doloremque autem dolorum. Doloribus provident voluptatem perspiciatis id pariatur voluptas. Id voluptate saepe et placeat. Sapiente consectetur harum quaerat aliquam. Distinctio ea assumenda recusandae minus. Aut sunt dolor corporis qui molestiae earum eligendi. Nesciunt exercitationem cupiditate sed eos.', 'Et fuga laborum possimus suscipit. Necessitatibus ab tempore blanditiis qui. Harum nobis distinctio unde maxime odit nulla eligendi. Beatae distinctio rerum magnam iste alias. Libero et est ipsum rerum quod deserunt. Distinctio quia in quia quibusdam recusandae ea laboriosam nostrum. Quaerat esse corporis enim. Omnis aut autem vitae error qui voluptas voluptatum. Consequatur omnis beatae error quisquam.', 'Cum optio voluptate harum quos consequuntur sed inventore earum. Illum placeat quod maxime dolorem quae. Blanditiis rem cum inventore sint. Velit eaque sed eligendi. Similique aut ea tempore sunt. Rerum ut impedit rerum ut. Minima velit porro ad aspernatur. Asperiores possimus consequatur sequi officiis vel et. Mollitia suscipit suscipit et sit incidunt ratione ut.', 'Voluptatibus perspiciatis accusamus veniam et ad aut nam. Quidem laborum non dolores commodi. Et porro fugit eos est. Ex rerum quo quam mollitia. Adipisci reiciendis nihil quibusdam et quas. Fugit quisquam tempore consequatur distinctio. Ea similique molestiae totam qui ex temporibus. Soluta commodi accusantium minima. Corrupti nemo eaque eveniet aliquam eius officia. Eum quisquam qui alias dolore. Expedita ipsam molestiae qui explicabo a.', 'Iusto quae nulla porro minus. Voluptate et rerum ex. Quia repellat est cum voluptate consequuntur dolor aut. Aut error aliquam ducimus voluptas est iure commodi eius. Esse eveniet omnis sint voluptates ipsum voluptate exercitationem fugit. Labore expedita error veniam praesentium tempore. Et et nemo sed est eos velit inventore expedita. Et corrupti iste omnis. Labore aperiam aut consectetur optio aliquid ad.', 'Porro hic et perferendis at qui quis vel et. Enim exercitationem ut voluptatem fuga voluptatibus doloribus. Necessitatibus est qui quaerat quis. Odit laborum omnis pariatur eligendi. Assumenda accusantium nam optio nulla eum. Fuga aut commodi eius. Similique maxime velit rerum atque. Nemo beatae alias illo aut et. Est quasi modi tempora voluptas. Quasi necessitatibus eligendi qui perspiciatis omnis pariatur. Nulla voluptas pariatur aut sint molestiae. Consequatur amet vel magnam officia quam.'),
('quaerat', 'ex', 'numquam voluptates', 'non', 'culpa enim', 'illum', 'aut', 'vel', 'consectetur voluptas hic pariatur ipsa voluptatem exercitationem laboriosam', 'Earum laudantium molestiae repellat sunt. Nam ea dolores harum earum cumque est nostrum nihil. Accusamus recusandae alias a eaque recusandae molestiae. Et quia magnam veniam accusantium cumque. Dolor exercitationem rerum officiis deserunt at vel. Sit similique dignissimos provident ea iste temporibus illo eligendi. Dolor veniam aspernatur velit error.', 'Molestiae laudantium in amet. Vitae quas beatae explicabo id doloremque ea dolores. Qui quam deserunt est ex. Aperiam hic beatae dignissimos omnis id qui rem. Magnam sint sit debitis aliquid rerum eum. Qui dolor laboriosam corrupti nisi. Temporibus velit quidem repellat et. Ut qui autem natus mollitia. Perspiciatis recusandae ut iure. Molestiae molestias error doloribus molestiae expedita. Corporis magni consequatur molestiae. Quasi voluptas dolor doloribus dolores distinctio minus.', 'Quae eaque harum sint. Provident culpa et minus sit optio tenetur. Ea magni quae eveniet a quibusdam incidunt. Dicta minus doloribus natus minus eaque. Ut qui iusto sit facilis rerum. Id expedita mollitia ut doloribus neque rerum eligendi eum. Numquam culpa quia facere ea quia delectus. Blanditiis autem ea nihil soluta nemo rerum. Ut in laborum facere explicabo eius.', 'Qui aut dignissimos facere error quasi provident. Tenetur sunt illum dolores magni iusto dicta quis. Sapiente dolorem illo et qui amet in fugiat impedit. Quia porro nisi qui doloremque officiis exercitationem aut. Alias placeat fuga dolorum sed id laborum nihil. Deserunt consectetur esse nihil ex libero iusto dolor. Qui vel illum aut consequatur. Et ea perferendis est optio est nesciunt. Beatae hic aliquid amet. Temporibus ducimus rerum sapiente non.', 'Quidem enim qui quaerat delectus sed ab sit iure. Vitae aspernatur deleniti qui voluptate quam maiores dolore. Neque eveniet ea et. Consectetur rerum debitis beatae maiores. Laborum rerum nisi sequi non facilis odio dolorem ab. Non cupiditate qui temporibus perspiciatis adipisci voluptatem impedit.', 'Totam est vel hic. Dolore tempora officiis veniam quaerat autem. Praesentium illo vitae error molestiae similique et. Ut voluptatum ipsa et qui debitis autem doloribus. Eveniet consectetur et esse facere hic quidem. Sit corrupti minima qui vero eum quis. Delectus recusandae dolore voluptas. Saepe dolorem qui ipsum dolorem quidem eum. Aut accusantium praesentium earum maxime. Ducimus unde quidem odit aspernatur aut.'),
('Белуга', 'Morone chrysops', 'White bass (англ.)', 'Карповые', 'Амуры белые', 'Пресноводные', 'пелагический', 'мирный', 'бассейн Черного моря, бассейн Тихого океана, бассейн Каспийского моря, бассейн Аральского моря', 'Тело массивное, толстое (huso в переводе с латинского — свинья).\r\nБелуга — одна из крупнейших проходных рыб. В прошлом достигала длины более 5 м и массы более 1000 кг. Продолжительность жизни таких крупных экземпляров, видимо, превышала 100 лет.\r\nМаксимальный зарегистрированный возраст в 46 лет отмечен в 1977 г и 44 года в 1983 г. В 1970 г. в промысловых уловах на Волге средняя длина самок белуги составляла 267 см и масса 142 кг, самцов соответственно 221 см и 81 кг. Общий цвет тела пепельно-серый, брюхо серовато- белое, нос желтоватый.\r\nКроме величины, белуга легко отличается от всех других осетровых рыб своим толстым цилиндрическим туловищем и коротким заостренным носом, который несколько просвечивает, так как не покрыт костяными щитиками.\r\nРыло короткое, тупое. Рот у нее огромный, полулунной формы, большой, но, в отличие от калуги, не переходящий на бока головы, занимает всю ширину головы и окружен толстой губой; усики отличаются своей шириной и хватают до рта. Кроме того, костяные щитки на голове и жучки, особенно боковые и брюшные, представляются относительно мало развитыми: спинных бывает большей частью 12-13, боковых 40-45 и брюшных 10-12.', 'Обитает обыкновенная султанка у морских берегов, обыкновенно на небольших глубинах - 15-30 метров, хотя попадается и на глубине в 100-300 метров. Султанки держатся стайками у дна и никогда не поднимаются в толщу воды.\r\nПредпочитают мягкий илистый или песчаный грунт, но встречаются и на ракушечнике и каменистом дне.', 'Отыскивать пищу султанкам помогают их длинные усики: рыбка медленно перемещается у самого дна и тщательно \"ощупывает\" его поверхность усиками в поисках мелких донных животных. Питается донными беспозвоночными.', 'Половой зрелости достигают на втором-третьем году жизни. Нерест - с мая по август на глубинах от 10 до 55 метров близ илистого или песчаного дна. Каждая самка выметывает по несколько порций икры, общая плодовитость за сезон составляет от 3,6 до 88 тысяч икринок.\r\nВыметанная и оплодотворенная икра поднимается в верхние слои воды и через 3,5-2,5 дня, в зависимости от температуры, из нее выходят личинки. \r\n            Питается молодь мелкими животными организмами толщи воды и маскируется от хищников серебристой, синевато-зеленой окраской. Примерно через 1,5-2 месяца после вылупления мальки подходят к берегам и, достигнув длины 4-6 сантиметров, опускаются на дно и приобретают типичные для взрослых рыб облик и окраску.\r\nВзрослые барабульки подходят к берегам весной и держатся здесь до зимы, иногда они попадаются и в устьях рек. На зиму рыбы откочевывают на большие глубины. Продолжительность жизни - 10-12 лет, в первое лето своей жизни могут достигать длины от 4 до 12 см, в зависимости от сроков нереста.', 'Что касается ловли белого амура, то процесс рыбалки начинается в весны (как только вода прогреется выше 10 градусов) и продолжается до середины осени. В этот широкий промежуток времени, бывают периоды более активного клева этой рыбы, и спады, собственно, как и у многих других представителей карповых и других семейств.\r\nТак, есть одна интереснейшая особенность, которую нужно знать рыбаку: чем жарче, тем лучше будет клев белого амура. И наоборот.\r\nВ жару, белый амур особенно активно кормится, активно выдавая свое присутствие: на поверхности воды даже неопытный рыбак может увидеть мощные всплески и расходящиеся в стороны круги, а если повезет (например, если смотреть с более высокого участка), то можно заметить и саму рыбу.\r\nНо, найти амура — это ещё половина дела, даже скажем больше — это ещё совершенно не значит, что улов будет, а рыбалка удастся.', 'Понятно, что в качестве насадки используются листья и стебли камыша, стебельки и зерна кукурузы, различные водоросли (желательно из этого же водоема).\r\nИногда срабатывают и карповые насадки, в общем — с насадками на белого амура нужно экспериментировать. И начинающим рыбакам можно дать простой совет.\r\nТеория — это, конечно хорошо, но самый лучший и проверенный метод: все уточнить и разузнать у местных рыбаков.\r\nТак, амура ловят на поплавочную снасть (штекер, матч), на фидер, нахлыстом.\r\nПоследний метод больше является некоторой экзотикой, но очень эффектный и захватывающий.');

-- --------------------------------------------------------

--
-- Структура таблицы `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL,
  `square` float UNSIGNED DEFAULT NULL,
  `depth` float UNSIGNED DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `isRed` tinyint(1) NOT NULL DEFAULT 0,
  `coorX` float NOT NULL,
  `coorY` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `locations`
--

INSERT INTO `locations` (`id`, `name`, `img`, `type`, `description`, `square`, `depth`, `subject`, `isRed`, `coorX`, `coorY`, `created_at`, `updated_at`) VALUES
(1, 'река Волга', 'locations/1/1.jpg', 'Река', 'Волгогра́дское водохрани́лище образовано плотиной Волжской ГЭС им. 22-го съезда КПСС на Волге, на территории Волгоградской и Саратовской областей России. Заполнение водохранилища происходило в течение 1958—1961 годов.\r\n            Площадь — 3117 км², объём — 31,5 км³, длина — 540 км, наибольшая ширина — 17 км, средняя глубина — 10,1 м. Максимальная глубина 41 м[2]. По своей площади Волгоградское водохранилище уступает только Куйбышевскому и Рыбинскому.\r\n            Осуществляет сезонное регулирование стока (колебания уровня до 3 м). Используется в целях энергетики, водного транспорта, ирригации и водоснабжения. Рыболовство (лещ, судак, сазан). На берегах Волгоградского водохранилища расположены города Саратов, Энгельс, Камышин, Дубовка, Вольск, Маркс.\r\n            Волгоградское водохранилище — очень важный рекреационный ресурс, место туризма и отдыха. В плотине Волжской ГЭС эксплуатируется один из крупнейших в России рыбоподъёмников. Основные порты: Саратов, Камышин, Николаевск, Быково, Приморск, Дубовка.\r\n            В 1980-х годах было развернуто строительство канала Волго-Дон 2, который бы напрямую соединял Волгоградское водохранилище с рекой Дон. (В отличие от существующего Волго-Донского канала, который начинается к югу от Волгограда, ниже по течению от Волжской ГЭС.) Проект был законсервирован в 1990 году.', 3530, 10, 'Волгоградская обл.', 0, 48.878, 44.6995, NULL, '2022-01-20 08:59:38'),
(2, 'озеро Булухта', 'locations/2/2.jpg', 'Озеро', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 2500, 10, 'Волгоградская обл.', 0, 49.3246, 46.068, NULL, NULL),
(3, 'озеро Ильмень', 'locations/3/3.jpg', 'Озеро', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 1500, 5, 'Волгоградская обл.', 1, 49.8479, 42.527, NULL, NULL),
(4, 'пруд Большой Лиман', 'locations/4/4.jpg', 'Пруд', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 1500, 20, 'Волгоградская обл.', 0, 48.7994, 45.0069, NULL, NULL),
(5, 'река Ахтуба', 'locations/5/5.jpg', 'Река', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 800, 5, 'Волгоградская обл.', 0, 48.6458, 45.4656, NULL, NULL),
(6, 'ерик Шпиринский', 'locations/6/6.jpg', 'Ерик', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?', 100, 2, 'Волгоградская обл.', 0, 48.5506, 45.4791, NULL, NULL),
(7, 'Волгоградское водохранилище', 'locations/7/7.jpg', 'Водохранилище', '            Волгогра́дское водохрани́лище образовано плотиной Волжской ГЭС им. 22-го съезда КПСС на Волге, на территории Волгоградской и Саратовской областей России. Заполнение водохранилища происходило в течение 1958—1961 годов.\r\n            Площадь — 3117 км², объём — 31,5 км³, длина — 540 км, наибольшая ширина — 17 км, средняя глубина — 10,1 м. Максимальная глубина 41 м[2]. По своей площади Волгоградское водохранилище уступает только Куйбышевскому и Рыбинскому.\r\n            Осуществляет сезонное регулирование стока (колебания уровня до 3 м). Используется в целях энергетики, водного транспорта, ирригации и водоснабжения. Рыболовство (лещ, судак, сазан). На берегах Волгоградского водохранилища расположены города Саратов, Энгельс, Камышин, Дубовка, Вольск, Маркс.\r\n            Волгоградское водохранилище — очень важный рекреационный ресурс, место туризма и отдыха. В плотине Волжской ГЭС эксплуатируется один из крупнейших в России рыбоподъёмников. Основные порты: Саратов, Камышин, Николаевск, Быково, Приморск, Дубовка.\r\n            В 1980-х годах было развернуто строительство канала Волго-Дон 2, который бы напрямую соединял Волгоградское водохранилище с рекой Дон. (В отличие от существующего Волго-Донского канала, который начинается к югу от Волгограда, ниже по течению от Волжской ГЭС.) Проект был законсервирован в 1990 году.', 50, 3, 'Волгоградская обл.', 0, 50.2646, 46.2918, NULL, NULL),
(16, 'sint', 'locations/4/4.jpg', 'Река', 'Temporibus et quia itaque magni corrupti reiciendis corrupti. Doloremque et sequi voluptatibus amet nostrum. Dolor qui ut rerum quo quam. Aperiam a quia esse enim. Aut laudantium placeat occaecati tempore excepturi. Est fugit ea exercitationem quis commodi assumenda consequatur dicta. Aspernatur consequuntur accusantium sunt nostrum et magnam ut inventore. Ad voluptatem voluptatem et deserunt. Quis repellat ea accusamus beatae ex consequuntur tempora. Nisi qui nulla maiores neque impedit quas occaecati. Consequatur libero nobis aut harum. Sunt qui temporibus et cum voluptas.', 2582, 29, 'Калининградская обл.', 0, 48.0589, 47.9533, '2022-01-22 12:06:40', '2022-01-22 12:06:40');

-- --------------------------------------------------------

--
-- Структура таблицы `locations_fishes`
--

CREATE TABLE `locations_fishes` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `fish_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `locations_fishes`
--

INSERT INTO `locations_fishes` (`location_id`, `fish_name`) VALUES
(1, 'Белуга'),
(1, 'Берш'),
(1, 'Вобла'),
(1, 'Горбуша'),
(16, 'doloribus'),
(16, 'saepe'),
(16, 'Осетр'),
(16, 'Чехонь');

-- --------------------------------------------------------

--
-- Структура таблицы `location_imgs`
--

CREATE TABLE `location_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `location_imgs`
--

INSERT INTO `location_imgs` (`id`, `img`, `location_id`) VALUES
(3, 'locations/1/1.jpg', 1),
(4, 'locations/1/2.jpg', 1),
(5, 'locations/1/3.jpg', 1),
(11, 'locations/1/1.jpg', 16),
(12, 'locations/1/3.jpg', 16),
(13, 'locations/1/3.jpg', 16);

-- --------------------------------------------------------

--
-- Структура таблицы `marks`
--

CREATE TABLE `marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coorX` float NOT NULL,
  `coorY` float NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `marks`
--

INSERT INTO `marks` (`id`, `name`, `description`, `coorX`, `coorY`, `user_id`, `location_id`) VALUES
(1, 'Отметка №1', 'Описание', 48.783, 44.654, 2, 1),
(2, 'Отметка №2', 'Описание3', 48.8, 44.98, 2, 1),
(3, 'Отметка №3', 'Описание78', 48.85, 44.71, 2, 2),
(4, 'Отметка №4', 'Описание', 48.76, 44.78, 2, 2),
(25, 'facere', 'pariatur libero qui ut quo minima ipsum voluptates fuga eum debitis sed dolor repellat quo facilis eveniet magni laudantium', 41.0148, 43.9577, 2, 4),
(26, 'omnis', 'sapiente totam optio nostrum ut ut enim explicabo consequatur expedita eaque voluptatem', 45.8901, 41.6158, 6, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_19_161432_create_fish_table', 2),
(6, '2021_11_19_161632_create_fish_infos_table', 2),
(7, '2021_11_19_162357_create_fish_catches_table', 2),
(8, '2021_11_19_163119_create_bites_table', 2),
(9, '2021_11_19_163511_create_locations_table', 2),
(10, '2021_11_19_163657_create_location_infos_table', 2),
(11, '2021_11_19_164051_create_marks_table', 2),
(12, '2021_11_19_165054_create_mark_groups_table', 2),
(13, '2021_11_19_165707_create_location_imgs_table', 2),
(14, '2021_11_19_165752_create_fish_imgs_table', 2),
(15, '2022_01_12_160649_create_fish_factors_table', 3),
(16, '2016_01_04_173148_create_admin_tables', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ant.eon@mail.ru', '$2y$10$z/Q2lprHqCg227X/oXsXgeqBF7w2ceSnZYHg9Wl.XHnaaAo3Ohvtu', '2022-01-14 15:51:46'),
('ant2.eon@mail.ru', '$2y$10$9/H1h02lBKsXNDdnjRkrPOfmRXQFwv5CxlS6xAONZaNnqBu4uAPCC', '2022-01-14 15:52:41');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `subjects`
--

CREATE TABLE `subjects` (
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`name`) VALUES
('Волгоградская обл.'),
('Калининградская обл.'),
('Калужская обл.'),
('Кировская обл.'),
('Липецкая обл.'),
('Новгородская обл.'),
('Омская обл.'),
('Оренбургская обл.'),
('Орловская обл.'),
('Псковская обл.'),
('Ростовская обл.'),
('Самарская обл.'),
('Смоленская обл.'),
('Ульяновская обл.'),
('Читинская обл.');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `subject`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'qwerty', 'ant2.eon@mail.ru', 'Волгоградская обл.', NULL, '$2y$10$fE1Lm3Ixq/EngaYd4q/f8e.9CZE11HLZ8i7QIZpcgUHzFFUKWRguK', NULL, NULL, NULL),
(2, 'evgen', 'ant.eon@mail.ru', 'Волгоградская обл.', NULL, '$2y$10$fE1Lm3Ixq/EngaYd4q/f8e.9CZE11HLZ8i7QIZpcgUHzFFUKWRguK', 'l43zcPXFMlBisYfnZ1P72pkRtl8os4rwEpWUxKLNyBNjAVr3hVDSi4oaKReO', '2022-01-14 14:50:41', '2022-01-14 14:50:41'),
(3, 'union', 'fast@mail.ru', 'Волгоградская обл.', NULL, '$2y$10$LOsmK12ZoU.rOaIvjxupnuJHuZgdZ67a6FJ/iENYTpTX0oSgqONYW', NULL, '2022-01-14 15:38:43', '2022-01-14 15:38:43'),
(4, 'new_user', 'user@mail.ru', 'Новгородская обл.', NULL, '$2y$10$PkZpbOk3dSAx3A24EJm0m.5y9k1tORaED.lAMU2JI977ESUPe.sSi', NULL, '2022-01-21 11:37:13', '2022-01-21 11:37:13'),
(5, 'milan61', 'cvolkova@example.com', 'Читинская обл.', NULL, '|[e^:=', NULL, '2022-01-22 05:17:16', '2022-01-22 05:17:16'),
(6, 'sofiy95', 'jrybova@example.org', 'Оренбургская обл.', NULL, '\'B!mTo', NULL, '2022-01-22 05:17:16', '2022-01-22 05:17:16');

-- --------------------------------------------------------

--
-- Структура таблицы `water_types`
--

CREATE TABLE `water_types` (
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `water_types`
--

INSERT INTO `water_types` (`name`) VALUES
('Водохранилище'),
('Ерик'),
('Затон'),
('Море'),
('Озеро'),
('Пруд'),
('Река');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Индексы таблицы `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Индексы таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Индексы таблицы `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Индексы таблицы `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Индексы таблицы `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Индексы таблицы `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Индексы таблицы `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Индексы таблицы `bites`
--
ALTER TABLE `bites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bites_ibfk_1` (`user_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `fish`
--
ALTER TABLE `fish`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `fish_catches`
--
ALTER TABLE `fish_catches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fish_catches_ibfk_1` (`bait_id`),
  ADD KEY `fish_catches_ibfk_3` (`mark_id`),
  ADD KEY `fish_catches_ibfk_4` (`user_id`),
  ADD KEY `fish_catches_ibfk_6` (`fish`),
  ADD KEY `fish_catches_ibfk_7` (`location_id`);

--
-- Индексы таблицы `fish_factors`
--
ALTER TABLE `fish_factors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fish_factors_ibfk_1` (`fish_name`);

--
-- Индексы таблицы `fish_imgs`
--
ALTER TABLE `fish_imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fish_imgs_ibfk_1` (`fish_name`);

--
-- Индексы таблицы `fish_infos`
--
ALTER TABLE `fish_infos`
  ADD PRIMARY KEY (`fish_name`);

--
-- Индексы таблицы `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_ibfk_1` (`type`),
  ADD KEY `locations_ibfk_2` (`subject`);

--
-- Индексы таблицы `locations_fishes`
--
ALTER TABLE `locations_fishes`
  ADD PRIMARY KEY (`location_id`,`fish_name`),
  ADD KEY `locations_fishes_ibfk_2` (`fish_name`);

--
-- Индексы таблицы `location_imgs`
--
ALTER TABLE `location_imgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_imgs_ibfk_1` (`location_id`);

--
-- Индексы таблицы `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_ibfk_2` (`user_id`),
  ADD KEY `marks_ibfk_3` (`location_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `subject` (`subject`);

--
-- Индексы таблицы `water_types`
--
ALTER TABLE `water_types`
  ADD PRIMARY KEY (`name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1728;

--
-- AUTO_INCREMENT для таблицы `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `bites`
--
ALTER TABLE `bites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `fish_catches`
--
ALTER TABLE `fish_catches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `fish_factors`
--
ALTER TABLE `fish_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT для таблицы `fish_imgs`
--
ALTER TABLE `fish_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `location_imgs`
--
ALTER TABLE `location_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `marks`
--
ALTER TABLE `marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `bites`
--
ALTER TABLE `bites`
  ADD CONSTRAINT `bites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fish_catches`
--
ALTER TABLE `fish_catches`
  ADD CONSTRAINT `fish_catches_ibfk_1` FOREIGN KEY (`bait_id`) REFERENCES `bites` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fish_catches_ibfk_3` FOREIGN KEY (`mark_id`) REFERENCES `marks` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fish_catches_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fish_catches_ibfk_6` FOREIGN KEY (`fish`) REFERENCES `fish` (`name`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fish_catches_ibfk_7` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `fish_factors`
--
ALTER TABLE `fish_factors`
  ADD CONSTRAINT `fish_factors_ibfk_1` FOREIGN KEY (`fish_name`) REFERENCES `fish` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fish_imgs`
--
ALTER TABLE `fish_imgs`
  ADD CONSTRAINT `fish_imgs_ibfk_1` FOREIGN KEY (`fish_name`) REFERENCES `fish` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `fish_infos`
--
ALTER TABLE `fish_infos`
  ADD CONSTRAINT `fish_infos_ibfk_1` FOREIGN KEY (`fish_name`) REFERENCES `fish` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`type`) REFERENCES `water_types` (`name`) ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_ibfk_2` FOREIGN KEY (`subject`) REFERENCES `subjects` (`name`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `locations_fishes`
--
ALTER TABLE `locations_fishes`
  ADD CONSTRAINT `locations_fishes_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `locations_fishes_ibfk_2` FOREIGN KEY (`fish_name`) REFERENCES `fish` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `location_imgs`
--
ALTER TABLE `location_imgs`
  ADD CONSTRAINT `location_imgs_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `marks_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`subject`) REFERENCES `subjects` (`name`);
--
-- База данных: `institu`
--
CREATE DATABASE IF NOT EXISTS `institu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `institu`;
--
-- База данных: `institute`
--
CREATE DATABASE IF NOT EXISTS `institute` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `institute`;

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `length` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `tid`, `title`, `length`) VALUES
(1, 1, 'Основы программирования', 72),
(2, 2, 'Введение в SQL', 36),
(3, 3, 'Базы данных', 54),
(4, 4, 'Учебная практика', 64);

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `title_less` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`id`, `cid`, `title_less`, `date`, `start`, `end`) VALUES
(1, 1, 'Структура программы на языке PHP', '2015-03-01', '15:00:00', '16:30:00'),
(2, 1, 'Управляющие конструкции', '2015-03-02', '14:20:00', '16:40:00'),
(3, 2, 'Команда CREATE DATABASES', '2015-05-04', '10:40:00', '12:00:00'),
(4, 3, 'Этапы проектирования БД', '2018-09-04', '11:15:00', '11:55:00'),
(5, 3, 'Информационные модели БД', '2018-09-12', '16:20:00', '17:50:00'),
(6, 4, 'Цели и задачи учебной практики', '2016-07-04', '14:50:00', '16:20:00');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 NOT NULL,
  `code` int(11) NOT NULL,
  `zarplata` double NOT NULL,
  `premia` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `code`, `zarplata`, `premia`) VALUES
(1, 'Иванов', 1, 9685.75, 674.64),
(2, 'Петров', 1, 14067.34, 1045.46),
(3, 'Сидоров', 2, 13048.79, 449.03),
(4, 'Боброва', 3, 10948.05, 784.04);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tid` (`tid`);

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cid` (`cid`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- База данных: `institute2`
--
CREATE DATABASE IF NOT EXISTS `institute2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `institute2`;

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `title_less` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cid` int(11) NOT NULL,
  `date` date NOT NULL,
  `start` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- База данных: `store`
--
CREATE DATABASE IF NOT EXISTS `store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `store`;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `code`, `description`, `image`, `created_at`, `updated_at`, `name_en`, `description_en`) VALUES
(1, 'Книги для детей', 'children', 'В этом разделе вы найдёте книги для детей от 6 до 18 лет.', 'categories/Fz9ZIvMAZSeqTn7oZc1fytFW7BIW4vooFLKhL96M.jpg', '2021-11-06 16:23:19', '2021-11-07 06:14:25', 'gfgfgfg', 'description'),
(2, 'Классика', 'classics', 'В данной категории приведена классическая литература - отечественная и зарубежная', 'categories/ni9nGsgEzoDwywMpR1Q9AoPiYLDjbzapwk9gqVAw.jpg', '2021-11-06 16:23:23', '2021-11-07 06:17:15', 'gfgfgfg', 'description'),
(3, 'Научная литература', 'science', 'В данной категории приведена научная литература различных научных областей и сфер.', 'categories/kao5dfLAYPfbBVFulxz1THR0TyvUt3mRUmOVGO1i.jpg', '2021-11-06 16:23:24', '2021-11-07 06:18:13', 'gfgfgfg', 'description');

-- --------------------------------------------------------

--
-- Структура таблицы `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `only_once` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `expired_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_main` tinyint(4) NOT NULL DEFAULT 0,
  `rate` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `symbol`, `is_main`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'RUB', '₽', 1, 1, '2021-11-06 16:23:19', '2021-11-06 16:23:19'),
(2, 'USD', '$', 0, 0, '2021-11-06 16:23:19', '2021-11-06 16:23:19'),
(3, 'EUR', '€', 0, 0, '2021-11-06 16:23:19', '2021-11-06 16:23:19');

-- --------------------------------------------------------

--
-- Структура таблицы `merchants`
--

CREATE TABLE `merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_11_02_161404_create_products_table', 1),
(3, '2019_11_02_161758_create_categories_table', 1),
(4, '2019_11_06_095115_create_orders_table', 1),
(5, '2019_11_06_095303_create_order_product_table', 1),
(6, '2019_11_06_115820_update_order_product_table', 1),
(7, '2019_11_14_080828_alter_table_users', 1),
(8, '2019_11_14_081710_alter_table_orders', 1),
(9, '2019_11_28_192415_alter_table_products', 1),
(10, '2019_12_21_191204_alter_table_products_count', 1),
(11, '2020_02_07_160146_create_subscriptions_table', 1),
(12, '2020_02_16_182835_localization_products', 1),
(13, '2020_02_16_182908_localization_categories', 1),
(14, '2020_02_28_180947_create_currencies_table', 1),
(15, '2020_03_03_183358_alter_table_orders_add_currency_id_and_sum', 1),
(16, '2020_03_03_183424_alter_order_product_add_price', 1),
(17, '2020_03_28_092334_create_skus_table', 1),
(18, '2020_03_28_092351_create_properties_table', 1),
(19, '2020_03_28_092358_create_property_options_table', 1),
(20, '2020_03_28_092541_create_sku_property_option_table', 1),
(21, '2020_03_28_092617_create_property_product', 1),
(22, '2020_03_30_173754_alter_table_products_drop_columns_count_and_price', 1),
(23, '2020_04_08_174422_alter_subscription_table', 1),
(24, '2020_04_08_175205_order_sku', 1),
(25, '2020_04_08_181123_alter_skus_soft_deletes', 1),
(26, '2020_06_06_144232_alter_orders_table', 1),
(27, '2020_06_06_144254_create_coupons_table', 1),
(28, '2020_07_16_194704_create_merchants_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `sum` double NOT NULL,
  `coupon_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `status`, `name`, `phone`, `created_at`, `updated_at`, `user_id`, `currency_id`, `sum`, `coupon_id`) VALUES
(3, 1, 'Маруся', '79616989946', '2021-11-07 07:20:08', '2021-11-07 07:20:08', 1, 1, 2756, NULL),
(4, 1, 'Маркус', '7961689545', '2021-11-07 07:26:10', '2021-11-07 07:26:10', 1, 1, 2756, NULL),
(5, 1, 'Перкус', '79665623', '2021-11-07 07:38:16', '2021-11-07 07:38:16', 1, 1, 2067, NULL),
(6, 1, 'ffdff', '167567', '2021-11-07 11:59:56', '2021-11-07 11:59:56', 2, 1, 3992, NULL),
(7, 1, 'fgfgdg', '445566', '2021-11-07 12:00:35', '2021-11-07 12:00:35', 2, 1, 30800, NULL),
(8, 1, '43434', '4343434', '2021-11-07 12:02:26', '2021-11-07 12:02:26', 2, 1, 42136, NULL),
(9, 1, 'Дмитрий Архипов', '79616989943', '2021-12-28 06:59:09', '2021-12-28 06:59:09', 1, 1, 22800, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `order_sku`
--

CREATE TABLE `order_sku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `sku_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_sku`
--

INSERT INTO `order_sku` (`id`, `order_id`, `sku_id`, `count`, `price`, `created_at`, `updated_at`) VALUES
(5, 3, 41, 4, 689, '2021-11-07 07:20:08', '2021-11-07 07:20:08'),
(6, 4, 41, 4, 689, '2021-11-07 07:26:10', '2021-11-07 07:26:10'),
(7, 5, 41, 3, 689, '2021-11-07 07:38:16', '2021-11-07 07:38:16'),
(8, 6, 46, 4, 998, '2021-11-07 11:59:56', '2021-11-07 11:59:56'),
(9, 7, 49, 3, 3600, '2021-11-07 12:00:35', '2021-11-07 12:00:35'),
(10, 7, 48, 4, 5000, '2021-11-07 12:00:35', '2021-11-07 12:00:35'),
(11, 8, 50, 2, 4500, '2021-11-07 12:02:26', '2021-11-07 12:02:26'),
(12, 8, 51, 2, 568, '2021-11-07 12:02:26', '2021-11-07 12:02:26'),
(13, 8, 47, 5, 1500, '2021-11-07 12:02:26', '2021-11-07 12:02:26'),
(14, 8, 54, 2, 1400, '2021-11-07 12:02:26', '2021-11-07 12:02:26'),
(15, 8, 55, 3, 1900, '2021-11-07 12:02:26', '2021-11-07 12:02:26'),
(16, 8, 52, 2, 3200, '2021-11-07 12:02:26', '2021-11-07 12:02:26'),
(17, 8, 53, 2, 4800, '2021-11-07 12:02:26', '2021-11-07 12:02:26'),
(18, 9, 52, 2, 3200, '2021-12-28 06:59:09', '2021-12-28 06:59:09'),
(19, 9, 41, 2, 700, '2021-12-28 06:59:09', '2021-12-28 06:59:09'),
(20, 9, 48, 3, 5000, '2021-12-28 06:59:09', '2021-12-28 06:59:09');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genres` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(5) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `new` tinyint(4) NOT NULL DEFAULT 0,
  `hit` tinyint(4) NOT NULL DEFAULT 0,
  `recommend` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `author`, `genres`, `year`, `code`, `description`, `image`, `created_at`, `updated_at`, `new`, `hit`, `recommend`, `deleted_at`, `name_en`, `description_en`) VALUES
(16, 1, 'Проект Манхетенн', 'Валентайн В.Х.', 'Фантастика', 1987, 'manhtam', 'Апавпвапвапвапвапвапваваппапапап', 'products/uyXx7mcdlFPk4QmC4OUyYx2292js0u0FeHIxOUTl.jpg', '2021-11-07 06:40:25', '2021-11-07 06:40:25', 1, 1, 0, NULL, 'fractal', 'fractal'),
(17, 1, 'Алый ветер', 'Абрамова О.Ф.', 'Мистика', 1990, '678', 'првапвапвапвапвапвапвапвапва', 'products/FFeklqW0iSdlskZEWBnAAhQMgIhiOSavrGtxOpNp.jpg', '2021-11-07 07:51:25', '2021-11-07 07:51:25', 0, 1, 0, NULL, 'fractal', 'fractal'),
(18, 1, 'Лостурия', 'Рыбанов А.А.', 'Фантастика', 1989, '123', 'ппаппапвапвапвапвапвапвапва', 'products/MYQpYwBJyUjcxMQJt7gCh5T8vEG3BFasa764isVD.jpg', '2021-11-07 07:53:05', '2021-11-07 07:53:05', 1, 0, 1, NULL, 'fractal', 'fractal'),
(19, 1, 'Солнечный ветер', 'Свиридова О.В.', 'Драма', 2000, '2345', 'аываываываываываываыва', 'products/dB2mMytssJsSFlHjMICB0nfrE0qEvqFsgj8ecobp.jpg', '2021-11-07 07:53:56', '2021-11-07 07:53:56', 0, 0, 0, NULL, 'fractal', 'fractal'),
(20, 2, 'Сияние', 'Рыбанов А.А.', 'Ужасы', 1986, '65566', 'авыаываываываываываываываывва', 'products/dB2mMytssJsSFlHjMICB0nfrE0qEvqFsgj8ecobp.jpg', '2021-11-07 07:55:20', '2021-12-28 06:54:40', 0, 0, 0, NULL, 'fractal', 'fractal'),
(21, 2, 'Кукуруза', 'Востриков Е.И.', 'Мистика', 1982, '2344', 'аваываываывавыаываываываываываываыва', 'products/7SBUw1rdc1NpL4QmRx02eGappURsoBCDSIbALiDa.jpg', '2021-11-07 07:56:08', '2021-11-07 07:56:08', 1, 0, 0, NULL, 'fractal', 'fractal'),
(22, 2, 'Ярость Берсерка', 'Востриков Е.И.', 'Ужасы', 1988, '4345', 'паавпвапвапвапвапвавапапапапап', 'products/PqhWohLAdv6pOtzJod3Orxf1EE4OU8LsHuv6T4MD.jpg', '2021-11-07 08:07:35', '2021-11-07 08:07:35', 0, 0, 0, NULL, 'fractal', 'fractal'),
(23, 2, 'Синдзи Амито', 'Свиридова О.В.', 'Фантастика', 1997, '54543', '34434аваываываываываываываываываыва', 'products/T1MWXJ4lZKwA5Y4wikI9Sp3j4ZmkIx6ljzX1AzvB.jpg', '2021-11-07 08:08:34', '2021-11-07 08:08:34', 0, 0, 0, NULL, 'fractal', 'fractal'),
(24, 3, 'Учебник по биологии', 'Востриков Е.И.', 'Фантастика', 1990, '4485', 'папапапапвапвапвапвап', 'products/fkVHl2FTyRoHqfQLeIFNzvafxc6GA8iCW9MivSyJ.jpg', '2021-11-07 08:09:57', '2021-11-07 08:09:57', 1, 1, 1, NULL, 'fractal', 'fractal'),
(25, 3, 'Правоведение', 'Свиридова О.В.', 'Фэнтези', 1993, '1290', 'апвпвапвапвапвапвапвапва', 'products/aIRhIXDJhxQezVpXgr26Nc4o3rLh18p94e8a1eFW.jpg', '2021-11-07 08:10:31', '2021-11-07 08:10:31', 1, 0, 0, NULL, 'fractal', 'fractal'),
(26, 3, 'Код. Секреты информатики.', 'Абрамова О.Ф.', 'Ужасы', 1999, '8743', 'аппвапвапвапвапвапвапва', 'products/9MF4qgk7bTQJLKydktF6gtdQ0vvNSAY2NtEMe9Sl.jpg', '2021-11-07 08:11:16', '2021-11-07 08:11:16', 0, 0, 1, NULL, 'fractal', 'fractal'),
(27, 3, 'Справочник по видам рыб', 'Васильев О.Н.', 'Драма', 1986, '5542', 'ваыаываываываываываываываыва', 'products/yrJuKKkWNNdjQhrfmt199GVoHPf4pEXO5DS1uyUx.jpg', '2021-11-07 08:12:17', '2021-11-07 08:12:17', 0, 0, 0, NULL, 'fractal', 'fractal'),
(29, 2, 'Белый Песок', 'Куценко М.И.', 'Фантастика', 1985, '9532', 'павпвапвапвапвапвап', 'products/Z3RxeUh4GDsgREmeHIK41lNVddW3jcMeTc6N6m6j.jpg', '2021-11-11 05:48:34', '2021-11-11 05:48:34', 1, 1, 0, NULL, 'fractal', 'fractal');

-- --------------------------------------------------------

--
-- Структура таблицы `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `properties`
--

INSERT INTO `properties` (`id`, `name`, `name_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Цвет', 'Color', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(2, 'Внутренняя память', 'Memory', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `property_options`
--

CREATE TABLE `property_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `property_options`
--

INSERT INTO `property_options` (`id`, `property_id`, `name`, `name_en`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Белый', 'White', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(2, 1, 'Черный', 'Black', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(3, 1, 'Серебристый', 'Silver', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(4, 1, 'Золотой', 'Gold', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(5, 1, 'Красный', 'Red', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(6, 1, 'Синий', 'Blue', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(7, 2, '32гб', '32gb', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(8, 2, '64гб', '64gb', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL),
(9, 2, '128гб', '128gb', '2021-11-06 16:23:19', '2021-11-06 16:23:19', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `property_product`
--

CREATE TABLE `property_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `property_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `property_product`
--

INSERT INTO `property_product` (`id`, `product_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-11-06 16:23:19', '2021-11-06 16:23:19'),
(2, 1, 2, '2021-11-06 16:23:19', '2021-11-06 16:23:19'),
(3, 2, 1, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(4, 2, 2, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(5, 3, 1, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(6, 3, 2, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(7, 4, 1, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(8, 4, 2, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(9, 5, 1, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(10, 5, 2, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(11, 6, 1, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(12, 9, 1, '2021-11-06 16:23:24', '2021-11-06 16:23:24'),
(13, 10, 1, '2021-11-06 16:23:24', '2021-11-06 16:23:24');

-- --------------------------------------------------------

--
-- Структура таблицы `skus`
--

CREATE TABLE `skus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `year` int(5) UNSIGNED NOT NULL DEFAULT 1990,
  `sells` int(10) UNSIGNED NOT NULL DEFAULT 15,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `skus`
--

INSERT INTO `skus` (`id`, `product_id`, `count`, `price`, `year`, `sells`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 16, 37, 700, 1987, 10, '2021-11-07 06:40:38', '2021-12-28 06:59:09', NULL),
(45, 17, 35, 990, 1990, 15, '2021-11-07 08:12:57', '2021-11-07 08:12:57', NULL),
(46, 18, 82, 998, 1989, 20, '2021-11-07 08:13:14', '2021-11-07 11:59:56', NULL),
(47, 19, 60, 1500, 2000, 30, '2021-11-07 08:13:28', '2021-11-07 12:02:26', NULL),
(48, 20, 81, 5000, 1986, 25, '2021-11-07 08:13:43', '2021-12-28 06:59:09', NULL),
(49, 21, 42, 3600, 1982, 5, '2021-11-07 08:14:15', '2021-11-07 12:00:35', NULL),
(50, 22, 35, 4800, 1998, 18, '2021-11-07 08:14:41', '2021-11-11 04:37:53', NULL),
(51, 23, 8, 568, 1997, 13, '2021-11-07 08:15:01', '2021-11-07 12:02:26', NULL),
(52, 24, 15, 3200, 1990, 35, '2021-11-07 08:15:22', '2021-12-28 06:59:09', NULL),
(53, 25, 27, 4800, 1993, 12, '2021-11-07 08:15:48', '2021-11-07 12:02:26', NULL),
(54, 26, 16, 1400, 1999, 23, '2021-11-07 08:16:02', '2021-11-07 12:02:26', NULL),
(55, 27, 23, 1900, 1986, 32, '2021-11-07 08:16:13', '2021-11-07 12:02:26', NULL),
(59, 29, 26, 7000, 1990, 15, '2021-11-11 05:56:49', '2021-11-11 05:56:49', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sku_property_option`
--

CREATE TABLE `sku_property_option` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_option_id` int(10) UNSIGNED NOT NULL,
  `sku_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sku_property_option`
--

INSERT INTO `sku_property_option` (`id`, `property_option_id`, `sku_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-11-06 16:23:19', '2021-11-06 16:23:19'),
(2, 7, 1, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(3, 1, 2, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(4, 8, 2, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(5, 2, 3, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(6, 7, 3, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(7, 2, 4, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(8, 8, 4, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(9, 3, 5, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(10, 7, 5, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(11, 3, 6, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(12, 8, 6, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(13, 4, 7, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(14, 7, 7, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(15, 4, 8, '2021-11-06 16:23:20', '2021-11-06 16:23:20'),
(16, 8, 8, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(17, 1, 9, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(18, 8, 9, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(19, 1, 10, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(20, 9, 10, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(21, 2, 11, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(22, 8, 11, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(23, 2, 12, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(24, 9, 12, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(25, 3, 13, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(26, 8, 13, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(27, 3, 14, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(28, 9, 14, '2021-11-06 16:23:21', '2021-11-06 16:23:21'),
(29, 4, 15, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(30, 8, 15, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(31, 4, 16, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(32, 9, 16, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(33, 2, 17, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(34, 7, 17, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(35, 2, 18, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(36, 8, 18, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(37, 1, 19, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(38, 7, 19, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(39, 1, 20, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(40, 8, 20, '2021-11-06 16:23:22', '2021-11-06 16:23:22'),
(41, 3, 21, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(42, 7, 21, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(43, 3, 22, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(44, 8, 22, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(45, 4, 23, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(46, 7, 23, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(47, 4, 24, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(48, 8, 24, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(49, 4, 25, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(50, 7, 25, '2021-11-06 16:23:23', '2021-11-06 16:23:23'),
(51, 2, 26, '2021-11-06 16:23:24', '2021-11-06 16:23:24'),
(52, 5, 27, '2021-11-06 16:23:24', '2021-11-06 16:23:24'),
(53, 6, 28, '2021-11-06 16:23:24', '2021-11-06 16:23:24'),
(54, 2, 31, '2021-11-06 16:23:24', '2021-11-06 16:23:24'),
(55, 5, 32, '2021-11-06 16:23:24', '2021-11-06 16:23:24'),
(56, 6, 33, '2021-11-06 16:23:24', '2021-11-06 16:23:24'),
(57, 1, 34, '2021-11-06 16:23:24', '2021-11-06 16:23:24'),
(58, 2, 35, '2021-11-06 16:23:25', '2021-11-06 16:23:25'),
(59, 3, 36, '2021-11-06 16:23:25', '2021-11-06 16:23:25');

-- --------------------------------------------------------

--
-- Структура таблицы `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `sku_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Администратор', 'admin@example.com', NULL, '$2y$10$yebSOSAlhI/mcU7h5RQtruSXDnjSox03xFvCv3u3iKARu6vtT4Xeq', NULL, NULL, NULL, 1),
(2, 'evgenus', 'ant3.eon@mail.ru', NULL, '$2y$10$K.hKEzRRoEXewXNQK9hWGOgr2eiPhDxQGnuekgzxP1a81JUjZ3Y.i', NULL, '2021-11-06 16:47:33', '2021-11-06 16:47:33', 0),
(3, 'evgenus2', 'ant.eon@mail.ru', NULL, '$2y$10$3YOd66n3xaTka5N4bFV97uTCqvCIPVxCEYKY1mCoXj241DZbqviVy', NULL, '2021-11-06 16:51:15', '2021-11-06 16:51:15', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `merchants`
--
ALTER TABLE `merchants`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_sku`
--
ALTER TABLE `order_sku`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `property_options`
--
ALTER TABLE `property_options`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `property_product`
--
ALTER TABLE `property_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `skus`
--
ALTER TABLE `skus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sku_property_option`
--
ALTER TABLE `sku_property_option`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `merchants`
--
ALTER TABLE `merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `order_sku`
--
ALTER TABLE `order_sku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `property_options`
--
ALTER TABLE `property_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `property_product`
--
ALTER TABLE `property_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `skus`
--
ALTER TABLE `skus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `sku_property_option`
--
ALTER TABLE `sku_property_option`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT для таблицы `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- База данных: `weblabdb`
--
CREATE DATABASE IF NOT EXISTS `weblabdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `weblabdb`;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_06_081002_create_service_models_table', 1),
(11, '2014_10_12_000000_create_users_table', 2),
(12, '2021_09_07_182913_create_user_supports_table', 2),
(13, '2021_09_10_183227_create_solutions_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
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
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `header`, `name`, `desc`) VALUES
(1, 'Услуга 3', 'Обучение C++', 'В этом курсе вы ничему не научитесь.');

-- --------------------------------------------------------

--
-- Структура таблицы `solutions`
--

CREATE TABLE `solutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `solutions`
--

INSERT INTO `solutions` (`id`, `header`, `content`, `created_at`, `updated_at`) VALUES
(24, 'Улучшение', 'Lorem ipsum dolor sit amet', '2021-09-17 14:35:56', '2021-09-17 14:35:56'),
(26, 'Улучшение №24', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', '2021-09-17 14:37:00', '2021-12-28 06:43:11'),
(27, 'Улучшение №28', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', '2021-09-17 14:37:41', '2021-09-17 14:37:41'),
(28, 'Улучшение №29', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', '2021-09-17 14:39:35', '2021-09-17 14:39:35'),
(29, 'Улучшение №30', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', '2021-09-17 14:45:52', '2021-09-17 14:45:52'),
(30, 'Улучшение №31', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', '2021-09-17 14:49:43', '2021-09-17 14:49:43'),
(31, 'Улучшение №33', 'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet', '2021-09-17 14:50:34', '2021-09-17 14:50:51'),
(32, 'Новое Улучшение', 'аываываываываыва', '2021-12-28 06:42:43', '2021-12-28 06:42:43');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'evgenus', 'evgenus@mail.ru', NULL, '$2y$10$HrclJ1RhZkPeWMB33X1GQOwDV0fY8Fcfq4AKp6c7YGtoa3P65GSb2', '1_avatar1631042455.jpg', NULL, '2021-09-07 16:20:55', '2021-09-07 16:20:55'),
(3, 'Arhipov', 'arh@mail.ru', NULL, '$2y$10$Ue3xxBaFQXA9mDzg1PDkXOx9qK6H0SCnfbSZNRg7/p.paWwvpFwM2', '3_avatar1640684107.jpg', NULL, '2021-12-28 06:35:07', '2021-12-28 06:35:07');

-- --------------------------------------------------------

--
-- Структура таблицы `user_supports`
--

CREATE TABLE `user_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_supports`
--

INSERT INTO `user_supports` (`id`, `user_id`, `desc`, `log`) VALUES
(1, 1, '756776756', '1_1631043164.log'),
(3, 3, 'У меня сломалась машина.', '3_1640684465.log');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `user_supports`
--
ALTER TABLE `user_supports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `user_supports`
--
ALTER TABLE `user_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
