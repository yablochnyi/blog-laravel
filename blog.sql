-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 27 2022 г., 16:16
-- Версия сервера: 8.0.24
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Собаки', '2021-12-20 11:11:06', '2021-12-20 14:35:25', '2021-12-20 14:35:25'),
(2, 'Кошки', '2021-12-20 12:28:12', '2021-12-20 13:09:32', NULL),
(3, 'Рыбы', '2021-12-20 12:28:28', '2021-12-20 13:09:44', NULL),
(4, 'Жаба', '2021-12-20 14:56:53', '2021-12-23 06:15:53', '2021-12-23 06:15:53'),
(5, 'Рептилии', '2021-12-23 06:16:58', '2021-12-23 06:16:58', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `message`, `created_at`, `updated_at`) VALUES
(2, 5, 1, '111111111111', '2022-01-27 08:02:03', '2022-01-27 08:02:03'),
(3, 5, 1, 'комментарий', '2022-01-27 08:02:13', '2022-01-27 08:02:13');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
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
-- Структура таблицы `jobs`
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

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(5, 'default', '{\"uuid\":\"84b6b32d-8860-4b89-b57e-fc8d95d79a3f\",\"displayName\":\"App\\\\Notifications\\\\SendVerifyWithQueueNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":16:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:11;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:12:\\\"notification\\\";O:49:\\\"App\\\\Notifications\\\\SendVerifyWithQueueNotification\\\":11:{s:2:\\\"id\\\";s:36:\\\"648f693b-532d-4ca0-9a21-1c505d5e13f7\\\";s:6:\\\"locale\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1642340215, 1642340215);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_20_094028_create_categories_table', 1),
(6, '2021_12_20_094029_create_posts_table', 1),
(7, '2021_12_20_094051_create_tags_table', 1),
(8, '2021_12_20_094247_create_post_tags_table', 1),
(10, '2021_12_20_170928_add_column_soft_deletes_to_categories_table', 2),
(12, '2021_12_23_100323_add_column_title_to_tags_table', 3),
(14, '2021_12_23_102943_add_column_soft_deletes_to_tags_table', 4),
(16, '2021_12_27_142236_add_columns_for_images_to_posts_table', 5),
(18, '2021_12_28_101449_add_soft_delete_to_posts_table', 6),
(20, '2022_01_05_111205_add_soft_deletes_to_users_table', 7),
(22, '2022_01_05_113544_add_colomn_role_to_users_table', 8),
(23, '2022_01_11_081742_create_jobs_table', 9),
(24, '2022_01_11_110919_create_post_user_likes_table', 10),
(26, '2022_01_16_134531_create_comments_table', 11);

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
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preview_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `category_id`, `created_at`, `updated_at`, `preview_image`, `main_image`, `deleted_at`) VALUES
(1, 'Горы', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla porta a lectus ut fringilla. Nunc id laoreet magna. Vestibulum eget eleifend leo. Nulla blandit elementum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vestibulum dolor ex, at pretium nisi scelerisque et. Fusce vitae aliquet neque. Nulla quis enim at arcu semper congue in ut orci. Quisque sagittis lacinia quam, ut dapibus enim porta ut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar turpis et eros vehicula, eget efficitur odio vehicula. Aliquam erat volutpat. Nunc luctus justo ac sapien suscipit egestas. Pellentesque imperdiet volutpat vehicula. Mauris sollicitudin finibus leo non gravida. Vestibulum ac dui id neque faucibus fringilla at rutrum nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Fusce pulvinar aliquet nibh in dapibus. Aenean et felis sit amet libero dignissim maximus. Fusce mollis aliquet velit, in hendrerit augue fringilla id. Morbi semper metus risus, eu fringilla nunc convallis non. Cras sed mauris at est dignissim mattis. Curabitur ac mollis nunc, et iaculis eros. Phasellus sed dapibus est. Curabitur tempus tempus velit ut blandit. Morbi ac venenatis arcu.</p>', 3, '2021-12-23 09:55:46', '2022-01-16 12:26:29', 'images/HGUeA7FH7kxr8z0Av9dlZPdwpyv1rGcI5W8o451H.jpg', 'images/U4DNXXVBL7SJOYz72Gi72g73x1XV7Md0Dr8HsdmM.jpg', NULL),
(2, 'Один дома', 'Один дома фильм', 3, '2021-12-27 11:29:52', '2021-12-27 11:29:52', 'images/xLOUdtdBJU987tREjrLF6NwF1kPkFLYBqcY4qtRK.jpg', 'images/mhVnabdOcAsyeG9pyUQFbkOyn7h45LvHSLc1GtD8.jpg', NULL),
(3, 'Джин', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla porta a lectus ut fringilla. Nunc id laoreet magna. Vestibulum eget eleifend leo. Nulla blandit elementum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vestibulum dolor ex, at pretium nisi scelerisque et. Fusce vitae aliquet neque. Nulla quis enim at arcu semper congue in ut orci. Quisque sagittis lacinia quam, ut dapibus enim porta ut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar turpis et eros vehicula, eget efficitur odio vehicula. Aliquam erat volutpat. Nunc luctus justo ac sapien suscipit egestas. Pellentesque imperdiet volutpat vehicula. Mauris sollicitudin finibus leo non gravida. Vestibulum ac dui id neque faucibus fringilla at rutrum nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Fusce pulvinar aliquet nibh in dapibus. Aenean et felis sit amet libero dignissim maximus. Fusce mollis aliquet velit, in hendrerit augue fringilla id. Morbi semper metus risus, eu fringilla nunc convallis non. Cras sed mauris at est dignissim mattis. Curabitur ac mollis nunc, et iaculis eros. Phasellus sed dapibus est. Curabitur tempus tempus velit ut blandit. Morbi ac venenatis arcu.</p>', 2, '2021-12-27 11:45:16', '2022-01-16 12:27:36', 'images/2BHu7GLciJrzz6Bc34mEX7XCv5ZgeucahpuWSMqq.png', 'images/hgY3PXDJZj9zuEQqZ24ukh3Y1ICbyd9J5IeJ6t2T.png', NULL),
(4, 'supernatural', 'сверхъестественное update', 5, '2021-12-27 13:43:54', '2021-12-28 07:20:43', 'images/MO1U3neivQGzDoXdhouWr2wjk2qe1JHqee3Ss0nj.jpg', 'images/QkzBPv04G6HTZrvZJjnHbcop49Sk8NPrzs3uDh5N.jpg', '2021-12-28 07:20:43'),
(5, 'Хэлбой', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla porta a lectus ut fringilla. Nunc id laoreet magna. Vestibulum eget eleifend leo. Nulla blandit elementum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vestibulum dolor ex, at pretium nisi scelerisque et. Fusce vitae aliquet neque. Nulla quis enim at arcu semper congue in ut orci. Quisque sagittis lacinia quam, ut dapibus enim porta ut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar turpis et eros vehicula, eget efficitur odio vehicula. Aliquam erat volutpat. Nunc luctus justo ac sapien suscipit egestas. Pellentesque imperdiet volutpat vehicula. Mauris sollicitudin finibus leo non gravida. Vestibulum ac dui id neque faucibus fringilla at rutrum nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Fusce pulvinar aliquet nibh in dapibus. Aenean et felis sit amet libero dignissim maximus. Fusce mollis aliquet velit, in hendrerit augue fringilla id. Morbi semper metus risus, eu fringilla nunc convallis non. Cras sed mauris at est dignissim mattis. Curabitur ac mollis nunc, et iaculis eros. Phasellus sed dapibus est. Curabitur tempus tempus velit ut blandit. Morbi ac venenatis arcu.</p>', 5, '2021-12-28 10:37:24', '2022-01-16 12:28:14', 'images/MXREer5sQcFOZgAXRo81FIRNEaMnrUt3eoOS5W8y.jpg', 'images/uumD9MNI4ToYP3g67Wc2EIyegEZ6o68XizKRTpSh.jpg', NULL),
(6, 'Машина', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla porta a lectus ut fringilla. Nunc id laoreet magna. Vestibulum eget eleifend leo. Nulla blandit elementum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vestibulum dolor ex, at pretium nisi scelerisque et. Fusce vitae aliquet neque. Nulla quis enim at arcu semper congue in ut orci. Quisque sagittis lacinia quam, ut dapibus enim porta ut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar turpis et eros vehicula, eget efficitur odio vehicula. Aliquam erat volutpat. Nunc luctus justo ac sapien suscipit egestas. Pellentesque imperdiet volutpat vehicula. Mauris sollicitudin finibus leo non gravida. Vestibulum ac dui id neque faucibus fringilla at rutrum nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Fusce pulvinar aliquet nibh in dapibus. Aenean et felis sit amet libero dignissim maximus. Fusce mollis aliquet velit, in hendrerit augue fringilla id. Morbi semper metus risus, eu fringilla nunc convallis non. Cras sed mauris at est dignissim mattis. Curabitur ac mollis nunc, et iaculis eros. Phasellus sed dapibus est. Curabitur tempus tempus velit ut blandit. Morbi ac venenatis arcu.</p>', 2, NULL, '2022-01-16 12:28:59', 'images/wPoZgHjgfrZBeqJ03HOjRa0YkB9pHuVx6g2b13Ox.jpg', 'images/UYjqGIeY3bgYhMblu7L7FYoxBiObVnSPFYPOZahp.jpg', NULL),
(7, 'Река', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla porta a lectus ut fringilla. Nunc id laoreet magna. Vestibulum eget eleifend leo. Nulla blandit elementum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vestibulum dolor ex, at pretium nisi scelerisque et. Fusce vitae aliquet neque. Nulla quis enim at arcu semper congue in ut orci. Quisque sagittis lacinia quam, ut dapibus enim porta ut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar turpis et eros vehicula, eget efficitur odio vehicula. Aliquam erat volutpat. Nunc luctus justo ac sapien suscipit egestas. Pellentesque imperdiet volutpat vehicula. Mauris sollicitudin finibus leo non gravida. Vestibulum ac dui id neque faucibus fringilla at rutrum nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Fusce pulvinar aliquet nibh in dapibus. Aenean et felis sit amet libero dignissim maximus. Fusce mollis aliquet velit, in hendrerit augue fringilla id. Morbi semper metus risus, eu fringilla nunc convallis non. Cras sed mauris at est dignissim mattis. Curabitur ac mollis nunc, et iaculis eros. Phasellus sed dapibus est. Curabitur tempus tempus velit ut blandit. Morbi ac venenatis arcu.</p>', 5, NULL, '2022-01-16 12:29:40', 'images/Wf1xCUgDpfTR6ybk1B1QE0HqXdjGKP9juaZt46VB.jpg', 'images/ggo0oAeqR1tykCoAbmXWjFeD8g5VCSEqV7bN8lAJ.jpg', NULL),
(8, 'Алладин', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla porta a lectus ut fringilla. Nunc id laoreet magna. Vestibulum eget eleifend leo. Nulla blandit elementum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vestibulum dolor ex, at pretium nisi scelerisque et. Fusce vitae aliquet neque. Nulla quis enim at arcu semper congue in ut orci. Quisque sagittis lacinia quam, ut dapibus enim porta ut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar turpis et eros vehicula, eget efficitur odio vehicula. Aliquam erat volutpat. Nunc luctus justo ac sapien suscipit egestas. Pellentesque imperdiet volutpat vehicula. Mauris sollicitudin finibus leo non gravida. Vestibulum ac dui id neque faucibus fringilla at rutrum nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Fusce pulvinar aliquet nibh in dapibus. Aenean et felis sit amet libero dignissim maximus. Fusce mollis aliquet velit, in hendrerit augue fringilla id. Morbi semper metus risus, eu fringilla nunc convallis non. Cras sed mauris at est dignissim mattis. Curabitur ac mollis nunc, et iaculis eros. Phasellus sed dapibus est. Curabitur tempus tempus velit ut blandit. Morbi ac venenatis arcu.</p>', 2, NULL, '2022-01-16 12:30:17', 'images/iooJ0X2lCEVttsKAMS8pTjj3suqAbMOKjYq84esW.jpg', 'images/PYrFBQyfndOmRNm4zWGzkkqkSL9JFVPHsKHE2R9C.jpg', NULL),
(9, 'Природа', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla porta a lectus ut fringilla. Nunc id laoreet magna. Vestibulum eget eleifend leo. Nulla blandit elementum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vestibulum dolor ex, at pretium nisi scelerisque et. Fusce vitae aliquet neque. Nulla quis enim at arcu semper congue in ut orci. Quisque sagittis lacinia quam, ut dapibus enim porta ut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar turpis et eros vehicula, eget efficitur odio vehicula. Aliquam erat volutpat. Nunc luctus justo ac sapien suscipit egestas. Pellentesque imperdiet volutpat vehicula. Mauris sollicitudin finibus leo non gravida. Vestibulum ac dui id neque faucibus fringilla at rutrum nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Fusce pulvinar aliquet nibh in dapibus. Aenean et felis sit amet libero dignissim maximus. Fusce mollis aliquet velit, in hendrerit augue fringilla id. Morbi semper metus risus, eu fringilla nunc convallis non. Cras sed mauris at est dignissim mattis. Curabitur ac mollis nunc, et iaculis eros. Phasellus sed dapibus est. Curabitur tempus tempus velit ut blandit. Morbi ac venenatis arcu.</p>', 2, NULL, '2022-01-16 12:30:55', 'images/qnYnTeJzK2UE7FInVJuwNphhUBdBfFvGspFGOaUe.jpg', 'images/t3NWv0tTjMnySBDQYIccPRt7TbCLrZNtAp7SnABp.jpg', NULL),
(10, 'Амстердам', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla porta a lectus ut fringilla. Nunc id laoreet magna. Vestibulum eget eleifend leo. Nulla blandit elementum fermentum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer vestibulum dolor ex, at pretium nisi scelerisque et. Fusce vitae aliquet neque. Nulla quis enim at arcu semper congue in ut orci. Quisque sagittis lacinia quam, ut dapibus enim porta ut.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus pulvinar turpis et eros vehicula, eget efficitur odio vehicula. Aliquam erat volutpat. Nunc luctus justo ac sapien suscipit egestas. Pellentesque imperdiet volutpat vehicula. Mauris sollicitudin finibus leo non gravida. Vestibulum ac dui id neque faucibus fringilla at rutrum nisl.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Fusce pulvinar aliquet nibh in dapibus. Aenean et felis sit amet libero dignissim maximus. Fusce mollis aliquet velit, in hendrerit augue fringilla id. Morbi semper metus risus, eu fringilla nunc convallis non. Cras sed mauris at est dignissim mattis. Curabitur ac mollis nunc, et iaculis eros. Phasellus sed dapibus est. Curabitur tempus tempus velit ut blandit. Morbi ac venenatis arcu.</p>', 5, NULL, '2022-01-16 12:31:31', 'images/akHvSCHqJYOdFSXEgbSGCYPwd2BWqpPPsACRJwGL.jpg', 'images/zkCde7IsusMP8lw86S2qHCswz0mdWJuCJjv2QREa.jpg', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 4, 4, NULL, NULL),
(3, 4, 5, NULL, NULL),
(4, 5, 5, NULL, NULL),
(5, 5, 2, NULL, NULL),
(6, 5, 4, NULL, NULL),
(7, 1, 5, NULL, NULL),
(8, 6, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `post_user_likes`
--

CREATE TABLE `post_user_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post_user_likes`
--

INSERT INTO `post_user_likes` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 1, 5, NULL, NULL),
(3, 1, 5, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 7, 6, NULL, NULL),
(6, 7, 6, NULL, NULL),
(7, 9, 7, NULL, NULL),
(8, 9, 7, NULL, NULL),
(9, 10, 8, NULL, NULL),
(10, 10, 8, NULL, NULL),
(13, 3, 5, NULL, NULL),
(14, 8, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `created_at`, `updated_at`, `title`, `deleted_at`) VALUES
(2, '2021-12-23 07:28:20', '2021-12-23 07:28:20', 'Джэк Рассел', NULL),
(3, '2021-12-27 13:25:20', '2021-12-27 13:25:20', 'дом', NULL),
(4, '2021-12-27 13:25:26', '2021-12-27 13:25:26', 'авто', NULL),
(5, '2021-12-27 13:25:32', '2021-12-27 13:25:32', 'хобби', NULL),
(6, '2021-12-27 13:25:39', '2021-12-27 13:25:39', 'мото', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role` smallint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `role`) VALUES
(2, 'Артем Яблочный', 'niger_blya@mail.ru', NULL, '$2y$10$J0CccYqmeqdiU01JDP3LqeNGUHvMltgGUMGT8IR7PmedrG1.gcx6O', NULL, '2022-01-05 08:15:47', '2022-01-05 08:15:52', '2022-01-05 08:15:52', NULL),
(3, 'Артем Яблочный', 'alex@mail.com', NULL, '$2y$10$s0jD8KWPVOugIr9m8v3LGO.NJzp83HhW3gO4J09VNlWLNf4unXEjy', NULL, '2022-01-05 08:26:30', '2022-01-11 03:44:12', NULL, 0),
(4, 'Джони', 'artem@mail.ru', NULL, '$2y$10$Hsjwqyg20JWr24ZejzWy1ONrYXRG/E1YKUxwZ9kI3IAUW2..00BUS', NULL, '2022-01-05 08:55:37', '2022-01-05 09:11:51', NULL, 1),
(5, 'Admin', 'admin@mail.ru', '2022-01-11 04:50:54', '$2y$10$tSDPNvmi7wEjWWztVqXWM.IqxoGZkvBygoFdz9mCpLxet6BZ.mya2', NULL, '2022-01-11 03:47:24', '2022-01-11 03:47:24', NULL, 0),
(6, 'Артем', 'niger_blya2@mail.ru', NULL, '$2y$10$kYrNJL8yKa5Ui1i5kOM2T.F19ErEJAuK2ZO.pu.PrjemqFqS/W/4e', NULL, '2022-01-11 04:32:18', '2022-01-11 04:32:18', NULL, 0),
(7, 'Djo', 'qwe@mail.ru', '2022-01-11 04:49:54', '$2y$10$JPTJPop8euaf2np3h2tZd.HtG5HY6Ez.sNJqiIyLMsPffTVxqsakO', NULL, '2022-01-11 04:45:10', '2022-01-11 04:49:54', NULL, NULL),
(8, 'qwe', 'wsd@mail.ru', '2022-01-11 05:31:32', '$2y$10$UId7IdiErKz/G8V7a6UZKe2gv6hSmz6pFaDbwULZCFlrhXk.yT4E6', NULL, '2022-01-11 04:55:06', '2022-01-11 05:31:32', NULL, 0),
(9, 'jyjuu', 'fgtbrbt@mail.ru', NULL, '$2y$10$slL9k.bnj9MnNqEcYs9g3.6muqI6wJ.Rzk15.7UVgH4kR3O66iS4O', NULL, '2022-01-11 05:32:06', '2022-01-11 05:32:06', NULL, 1),
(10, 'Daily Hookah 60г', 'rfv@mail.ru', NULL, '$2y$10$nycKqx.NSQ.EVBWqoLi7hOp3XXlOBexlBoH93gC8064hJIjapWpc.', NULL, '2022-01-11 05:39:44', '2022-01-11 05:39:44', NULL, 0),
(11, 'Арсен', 'Tasyk1903@mail.ru', NULL, '$2y$10$/x98E/JhzV8mrktHy..jbe5VSrT7f8Z5d8vGkwg3Y0m8Xpw.UJAx.', NULL, '2022-01-16 10:36:54', '2022-01-16 10:36:54', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_idx` (`post_id`),
  ADD KEY `comments_user_idx` (`user_id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_category_idx` (`category_id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_idx` (`post_id`),
  ADD KEY `post_tag_tag_idx` (`tag_id`);

--
-- Индексы таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pul_post_idx` (`post_id`),
  ADD KEY `pul_user_idx` (`user_id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `post_category_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tag_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Ограничения внешнего ключа таблицы `post_user_likes`
--
ALTER TABLE `post_user_likes`
  ADD CONSTRAINT `pul_post_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `pul_user_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
