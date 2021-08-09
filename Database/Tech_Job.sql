-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2021 at 06:35 AM
-- Server version: 8.0.23
-- PHP Version: 7.3.24-(to be removed in future macOS)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Tech_Job`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Lập trình IOS', NULL, NULL),
(2, 'Lập trình Web', NULL, NULL),
(3, 'Lập trình Androi', NULL, NULL),
(4, 'Lập trình IOT', NULL, NULL),
(5, 'Lập trình Mobile', NULL, NULL),
(6, 'Lập trình Game mobile', NULL, NULL),
(7, 'Lập trình nhúng', NULL, NULL),
(8, 'Kiểm thử (tester)', '2021-08-06 01:44:53', '2021-08-06 01:44:53'),
(9, 'Lập trình nhúng', '2021-08-06 03:51:02', '2021-08-06 03:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hà Nội', NULL, NULL),
(2, 'Hồ Chí Minh', NULL, NULL),
(3, 'Đà Nẵng', NULL, NULL),
(4, 'Hải Phòng', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employees` int UNSIGNED DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `acronym` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `phone`, `address`, `description`, `employees`, `facebook`, `map_link`, `image`, `created_at`, `updated_at`, `user_id`, `city_id`, `acronym`, `code`, `status`) VALUES
(1, 'FPT Software', '0912321123', 'Tầng 6, tòa nhà FPT, Cụm sản xuất tiểu thủ công nghiệp và công nghiệp nhỏ Cầu Giấy, Phạm Hùng, Hà nội', 'FPT Software Ltd. là nhà cung cấp dịch vụ CNTT toàn cầu có trụ sở chính tại Hà Nội, Việt Nam.', 10001, 'facebook.com/fpt', 'Link map of FPT', '1628237510-FPT Software.png', '2021-08-06 01:04:29', '2021-08-06 01:11:50', 1, 1, 'FPT', 'FPT18143', '1'),
(2, 'Công ty cổ phần phần mềm Vietsoftware', '091234321', '15 Phạm Hùng, Mỹ Đình, Nam Từ Liêm, Hà Nội', 'View công ty rất đẹp , công ty có lương thưởng hậu hĩnh , công ty có cung cấp máy tính cho những những nhân viên nào không có máy tính để làm tại nhà', 109, 'facebook/vietsoftware', 'Link map of Vietsoftware', '1628238225-Công ty cổ phần phần mềm Vietsoftware.png', '2021-08-06 01:17:19', '2021-08-06 01:23:45', 3, 2, 'Cô', 'Cô26948', '1'),
(3, 'SmartOSC', '091221456', 'Số 12 Tống Duy Tân - Hà Nội', 'Thông tin của SmartOSC', 400, 'facebook/smartOSC', 'Link map of SmartOSC', '1628238480-SmartOSC.jpeg', '2021-08-06 01:26:26', '2021-08-06 01:28:00', 4, 2, 'SMA', 'SMA38439', '1'),
(4, 'VCCORP', '098765421', 'Quận 3 Hồ Chí Minh', 'Được thành lập vào năm 2006, Công ty CP VCCorp (VCCorp) là công ty tiên phong trong lĩnh vực công nghệ và nội dung số.', 1000, 'Facebook.com/vccorp', 'Link map of công ty', '1628238861-VCCORP.jpeg', '2021-08-06 01:32:07', '2021-08-06 01:34:32', 5, 2, 'VCC', 'VCC47242', '1'),
(5, 'Nimble', '091232134', 'Khu công nghiệp Cát Bi', 'Thông tin công ty Nimble', 500, 'Facebook/nimbe', 'Link map of Nimble', '1628239303-Nimble.png', '2021-08-06 01:40:10', '2021-08-06 03:50:45', 6, 4, 'NIM', 'NIM53534', NULL),
(6, 'Viettel', '091256786', 'Phường Ngô Quyền - Đà Nẵng', 'Thông tin của viettel Đà Nẵng', 10000, 'Facebook of Viettel', 'Link map of Viettel', '1628241131-Viettel.jpeg', '2021-08-06 02:09:43', '2021-08-06 03:50:45', 7, 3, 'VIE', 'VIE63739', NULL),
(7, 'CMC Global', '0912365090', 'Số 12 Nguyễn Trãi -Thanh Xuân - Hà Nội', 'Công ty CMC GLOBAL', 200, 'facebook.com', 'Link map of CMC GLOBAL', '1628241350-CMC Global.jpeg', '2021-08-06 02:14:16', '2021-08-06 03:50:44', 8, 1, 'CMC', 'CMC76563', NULL),
(8, 'SmartOSC', '091234524', 'Số 12 Dong tac - HA Noi', 'Thông tin của công ty', 100, 'facebook', 'Link map of SmartOSC', '1628246907-SmartOSC.jpeg', '2021-08-06 03:47:08', '2021-08-06 03:50:43', 10, 1, 'SMA', 'SMA81096', NULL);

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
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_salary` bigint UNSIGNED DEFAULT NULL,
  `to_salary` bigint UNSIGNED DEFAULT NULL,
  `experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` bigint UNSIGNED DEFAULT NULL,
  `upto` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `company_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `language`, `from_salary`, `to_salary`, `experience`, `expire`, `description`, `type_of_job`, `position`, `view`, `upto`, `created_at`, `updated_at`, `city_id`, `category_id`, `status`, `company_id`) VALUES
(1, 'Lập trình game', 'Java', 7000000, 10000000, 'Dưới 1 năm kinh nghiệm', '2021-08-31', 'Mô tả công việc của Lập trình game mobile bằng Java', 'Full time', 'Fresher', NULL, 12000000, '2021-08-06 01:14:24', '2021-08-06 01:14:24', 1, 6, '1', 1),
(2, 'Frontend developer', 'JS', 10000000, 12000000, 'Từ 1 năm kinh nghiệm', '2021-08-31', 'Lập trình frontend wev với JS', 'Part time', 'Junior', NULL, 15000000, '2021-08-06 01:25:14', '2021-08-06 01:25:14', 1, 2, '1', 2),
(3, 'Lập trình web Backend', 'Python', 10000000, 15000000, 'Dưới 1 năm kinh nghiệm', '2021-08-17', 'Mô tả của lập trình web backend với python', 'Full time', 'Fresher', NULL, 20000000, '2021-08-06 01:29:24', '2021-08-06 01:29:24', 1, 2, '1', 3),
(4, 'Lập trình androi', 'JAVA', 150000000, 20000000, 'Từ 3 năm kinh nghiệm', '2021-09-04', 'Mô tả công việc lập trình androi với JAVA', 'Full time', 'Senior', NULL, 30000000, '2021-08-06 01:30:30', '2021-08-06 01:30:47', 1, 3, '1', 3),
(5, 'Python developer', 'Python', 13000000, 14000000, 'Dưới 1 năm kinh nghiệm', '2021-09-04', 'Tham gia phát triển các RESTful Web Service sử dụng Python', 'Full time', 'Fresher', NULL, 20000000, '2021-08-06 01:35:45', '2021-08-06 01:37:30', 2, 2, NULL, 4),
(6, 'Lập trình IOS developer', 'C', 20000000, 25000000, 'Từ 3 năm kinh nghiệm', '2021-08-25', 'Mô tả công việc', 'Full time', 'Team lead', NULL, 30000000, '2021-08-06 01:37:25', '2021-08-06 01:37:25', 2, 1, '1', 4),
(7, 'Front Developer', 'JS', 15000000, 17000000, 'Từ 1 năm kinh nghiệm', '2021-08-31', 'Lập trình web trên các sản phẩm là các báo điện tử phục vụ hàng chục triệu lượt xem mỗi ngày: Dân trí, kenh14, cafef, vtv, afamily ..vv', 'Full time', 'Junior', NULL, 20000000, '2021-08-06 01:38:53', '2021-08-06 01:38:53', 2, 2, '1', 4),
(8, 'Lập trình nhúng', 'C#', 5000000, 6000000, 'Dưới 1 năm kinh nghiệm', '2021-08-31', 'Thiết kế và phát triển phần mềm điều khiển bay cho Autopilot cho các dòng máy bay không người lái như QuadCopter, Fix-wing UAV và Quad-Plane.', 'Full time', 'Intern', NULL, 7000000, '2021-08-06 01:42:59', '2021-08-06 01:43:16', 4, 7, '1', 5),
(9, 'Kỹ sư kiểm thử (tester)', 'C#', 5000000, 7000000, 'Dưới 1 năm kinh nghiệm', '2021-08-26', 'Kiểm thử sản phẩm trước khi đến tay khách hàng', 'Full time', 'Fresher', NULL, 7000000, '2021-08-06 02:13:36', '2021-08-06 02:13:36', 3, 8, '1', 6),
(10, 'Lập trình IOS', 'Java', 20000000, 50000000, 'Từ 3 năm kinh nghiệm', '2021-08-31', 'Manager', 'Full time', 'Manager', NULL, 70000000, '2021-08-06 02:16:52', '2021-08-06 02:16:52', 1, 1, '1', 7),
(11, 'Lập trình IOS test', 'Java', 3000000, 5000000, 'Từ 1 năm kinh nghiệm', '2021-08-21', 'Mô tả của công việc', 'Full time', 'Fresher', NULL, 10000000, '2021-08-06 03:49:49', '2021-08-06 03:50:22', 3, 1, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `job_id` bigint UNSIGNED NOT NULL,
  `seeker_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_seeker`
--

INSERT INTO `job_seeker` (`job_id`, `seeker_id`) VALUES
(7, 2),
(9, 2),
(8, 2),
(10, 2),
(6, 2),
(9, 3),
(9, 3),
(8, 3),
(7, 3),
(10, 4),
(9, 4),
(10, 4),
(6, 4),
(7, 4),
(1, 5),
(10, 6),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2021_07_28_023139_create_seekers_table', 1),
(5, '2021_07_28_023154_create_companies_table', 1),
(6, '2021_07_28_023306_create_jobs_table', 1),
(7, '2021_07_28_023314_create_cities_table', 1),
(8, '2021_07_28_023340_create_categories_table', 1),
(9, '2021_07_28_023415_create_languages_table', 1),
(10, '2021_07_28_025659_create_job_seeker_table', 1),
(11, '2021_07_28_031533_add_user_id_on_table_seekers', 1),
(12, '2021_07_28_031845_add_user_id_on_table_companies', 1),
(13, '2021_07_28_032413_create_job_language_table', 1),
(14, '2021_07_28_032858_add_city_id_on_table_companies', 1),
(15, '2021_07_28_033927_add_city_id_on_table_jobs', 1),
(16, '2021_07_28_034045_add_category_id_on_table_jobs', 1),
(17, '2021_07_28_041254_add_role_on_table_users', 1),
(18, '2021_07_28_081435_add_code_and_acronym_on_table_companies', 1),
(19, '2021_07_29_025247_update_companies_table', 1),
(20, '2021_07_29_065355_update_jobs_table', 1),
(21, '2021_07_30_013910_add_column_image_on_table_users', 1),
(22, '2021_07_31_081620_drop_table_job_language', 1),
(23, '2021_07_31_081958_add_column_language_on_table_jobs', 1),
(24, '2021_07_31_111148_add_column_status_on_table_jobs', 1),
(25, '2021_07_31_115531_add_column_company_id_on_table_jobs', 1),
(26, '2021_08_02_054136_update_column_status_on_table_jobs', 1),
(27, '2021_08_03_110201_add_column_accept_on_table_companies', 1),
(28, '2021_08_03_123943_add_column_name_on_table_companies', 1),
(29, '2021_08_05_034522_add_column_confirmed_on_table_users', 1),
(30, '2021_08_05_034920_add_column_confirmation_code_on_table_users', 1);

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
-- Table structure for table `seekers`
--

CREATE TABLE `seekers` (
  `id` bigint UNSIGNED NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seekers`
--

INSERT INTO `seekers` (`id`, `gender`, `birthday`, `phone`, `address`, `education`, `experience`, `image`, `created_at`, `updated_at`, `user_id`) VALUES
(1, NULL, NULL, '0912345678', NULL, NULL, NULL, NULL, '2021-08-06 01:07:02', '2021-08-06 01:07:02', 2),
(2, 'nam', '2021-08-04', '8091234566', 'Hà Nội', NULL, NULL, '1628246744-Đoàn Hùng 1.jpg', '2021-08-06 03:43:06', '2021-08-06 03:45:44', 9),
(3, 'Nam', '2021-08-31', '012321345', 'Số 12 ngõ 26', NULL, NULL, '1628261628-Đoàn Phi Hùng.jpg', '2021-08-06 07:50:49', '2021-08-06 07:53:48', 11),
(4, NULL, NULL, '012332112', NULL, NULL, NULL, NULL, '2021-08-06 08:03:43', '2021-08-06 08:03:43', 12),
(5, NULL, NULL, '12345678', NULL, NULL, NULL, NULL, '2021-08-06 08:08:53', '2021-08-06 08:08:53', 13),
(6, NULL, NULL, '1234554325', NULL, NULL, NULL, NULL, '2021-08-06 08:57:37', '2021-08-06 08:57:37', 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `confirmed`, `confirmation_code`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'FPT Software', 'fpt@gmail.com', '1628237510-FPT Software.png', NULL, 1, NULL, '$2y$10$l4dj5bEB0Frd5GUblGPIsOs4OXeq5L6/AbucS3IXhmPZXwVMdhnsa', NULL, '2021-08-06 01:04:29', '2021-08-06 01:11:50', 2),
(2, 'Admin', 'admin@gmail.com', NULL, NULL, 1, '16282372221610ceda65ee7a', '$2y$10$fybxoSOQbWpeEYDgRi4rFOr/k4EY7wjZEUG9ojTbGJSPmGp0NHSVy', NULL, '2021-08-06 01:07:02', '2021-08-06 01:07:02', 0),
(3, 'Công ty cổ phần phần mềm Vietsoftware', 'vietsoftware@gmail.com', '1628238225-Công ty cổ phần phần mềm Vietsoftware.png', NULL, 1, NULL, '$2y$10$tscP9VoblsPUBC9BhsAvRubm8/lGeFfU8SxgD73R..YX7O.iCtkAy', NULL, '2021-08-06 01:17:19', '2021-08-06 01:23:45', 2),
(4, 'SmartOSC', 'smart@gmail.com', '1628238480-SmartOSC.jpeg', NULL, 1, NULL, '$2y$10$dWbB5EYDrkQJJfRxmkL1YeqqCAGLkR5jKJNY3A99vKjKhAlgiNODG', NULL, '2021-08-06 01:26:26', '2021-08-06 01:28:00', 2),
(5, 'VCCORP', 'vccorp@gmail.com', '1628238861-VCCORP.jpeg', NULL, 1, NULL, '$2y$10$XRjsPkkIpwpFbI7guEVBzukvyk36t2u/DhZM7kKXaRC2fBktXAQt6', NULL, '2021-08-06 01:32:07', '2021-08-06 01:34:21', 2),
(6, 'Nimble', 'nimble@gmail.com', '1628239303-Nimble.png', NULL, 1, NULL, '$2y$10$Q99V0SmHU02RkXqvhY3p/./fCUYoFHcsCiWgu0q1ZFZik5taxwx/W', NULL, '2021-08-06 01:40:10', '2021-08-06 01:41:43', 2),
(7, 'Viettel', 'viettel@gmail.com', '1628241131-Viettel.jpeg', NULL, 1, NULL, '$2y$10$AXrXzOoa4zJ9fr6cKkr5aOmEnmiKIjCNsvYDKDCm3s3Y1bKHDzwwq', NULL, '2021-08-06 02:09:43', '2021-08-06 02:12:11', 2),
(8, 'CMC Global', 'cmc@gmail.com', '1628241350-CMC Global.jpeg', NULL, 1, NULL, '$2y$10$VQv4e5ERkD2vGyFJLs11pOpLxAIdyBih8Z4M2XDb8glFLjpjD93He', NULL, '2021-08-06 02:14:16', '2021-08-06 02:15:50', 2),
(9, 'Đoàn Hùng 1', 'hung@gmail.com', '1628246744-Đoàn Hùng 1.jpg', NULL, 1, NULL, '$2y$10$ED11kV3CTSiadb1U454.SuBxTs872lU26Ruqy69altVlJqHm4yxmm', NULL, '2021-08-06 03:43:06', '2021-08-06 03:45:44', 1),
(10, 'SmartOSC', 'smart1@gmail.com', '1628246907-SmartOSC.jpeg', NULL, 1, NULL, '$2y$10$oYMHk0LOGUmc9uYmLPUV6.MqBZ29G73rSK2ySn9rg8ZevTbOToZky', NULL, '2021-08-06 03:47:08', '2021-08-06 03:48:27', 2),
(11, 'Đoàn Phi Hùng', 'hungd@gmail.com', '1628261628-Đoàn Phi Hùng.jpg', NULL, 1, NULL, '$2y$10$UGbcehJMsIHMiNTGunhxz.A2IB/jv8YpRUsJS9vRaPzospE1.yTze', NULL, '2021-08-06 07:50:49', '2021-08-06 07:53:48', 1),
(12, 'Nhung Nguyễn', 'nhung@gmail.com', NULL, NULL, 1, NULL, '$2y$10$u8vzYQ3ouv7ogu9AFmgdPuvblIpnr6WTfXPgqbED4ZKIBRg6VME7i', NULL, '2021-08-06 08:03:43', '2021-08-06 08:04:30', 1),
(13, 'Doan Hung', 'h@gmail.com', NULL, NULL, 1, NULL, '$2y$10$9Bragvs3LT7Ctu23cfM/xO7tDueUUOtww7Okxrnx0J8urpJTe/BeK', NULL, '2021-08-06 08:08:53', '2021-08-06 08:09:09', 1),
(14, 'Đoàn Phi Hùng', 'hungdoan@gmail.com', NULL, NULL, 1, NULL, '$2y$10$89zsU7sBnKKZ4h7JQvqqI.tQB2jiNOq40fD6VQFxa2wV7ZWoIsPi6', NULL, '2021-08-06 08:57:37', '2021-08-06 08:57:50', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`),
  ADD KEY `companies_city_id_foreign` (`city_id`);

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
  ADD KEY `jobs_city_id_foreign` (`city_id`),
  ADD KEY `jobs_category_id_foreign` (`category_id`),
  ADD KEY `jobs_company_id_foreign` (`company_id`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD KEY `job_seeker_job_id_foreign` (`job_id`),
  ADD KEY `job_seeker_seeker_id_foreign` (`seeker_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
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
-- Indexes for table `seekers`
--
ALTER TABLE `seekers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seekers_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `seekers`
--
ALTER TABLE `seekers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `jobs_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD CONSTRAINT `job_seeker_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`),
  ADD CONSTRAINT `job_seeker_seeker_id_foreign` FOREIGN KEY (`seeker_id`) REFERENCES `seekers` (`id`);

--
-- Constraints for table `seekers`
--
ALTER TABLE `seekers`
  ADD CONSTRAINT `seekers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
