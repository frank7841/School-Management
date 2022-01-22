-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 22, 2022 at 02:57 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lav`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O-', '2022-01-14 04:07:43', '2022-01-14 04:07:43'),
(2, 'O+', '2022-01-14 04:07:43', '2022-01-14 04:07:43'),
(3, 'A+', '2022-01-14 04:07:44', '2022-01-14 04:07:44'),
(4, 'A-', '2022-01-14 04:07:44', '2022-01-14 04:07:44'),
(5, 'B+', '2022-01-14 04:07:44', '2022-01-14 04:07:44'),
(6, 'B-', '2022-01-14 04:07:44', '2022-01-14 04:07:44'),
(7, 'AB+', '2022-01-14 04:07:44', '2022-01-14 04:07:44'),
(8, 'AB-', '2022-01-14 04:07:44', '2022-01-14 04:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_copies` int DEFAULT NULL,
  `issued_copies` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

CREATE TABLE `book_requests` (
  `id` int UNSIGNED NOT NULL,
  `book_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returned` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_types`
--

CREATE TABLE `class_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_types`
--

INSERT INTO `class_types` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(13, 'Form One', 'C', NULL, NULL),
(14, 'Form Two', 'PN', NULL, NULL),
(15, 'Form Three', 'N', NULL, NULL),
(16, 'Form Four', 'P', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dorms`
--

CREATE TABLE `dorms` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dorms`
--

INSERT INTO `dorms` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Faith Hostel', NULL, NULL, NULL),
(3, 'Bishop Mugee', NULL, NULL, '2022-01-16 14:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `term` tinyint NOT NULL,
  `year` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `term`, `year`, `created_at`, `updated_at`) VALUES
(6, 'exam One', 1, '2022-2023', '2022-01-14 16:11:34', '2022-01-14 17:23:20'),
(9, 'Cat Two', 1, '2022-2023', '2022-01-14 16:16:26', '2022-01-14 16:17:19'),
(10, 'Term One Exam', 1, '2022-2023', '2022-01-17 11:32:40', '2022-01-17 11:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `exam_records`
--

CREATE TABLE `exam_records` (
  `id` int UNSIGNED NOT NULL,
  `exam_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `my_class_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `total` int DEFAULT NULL,
  `ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos` int DEFAULT NULL,
  `af` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ps` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_records`
--

INSERT INTO `exam_records` (`id`, `exam_id`, `student_id`, `my_class_id`, `section_id`, `total`, `ave`, `class_ave`, `pos`, `af`, `ps`, `p_comment`, `t_comment`, `year`, `created_at`, `updated_at`) VALUES
(3, 10, 62, 21, 13, 77, '77', '77', 1, '4,3,5,,,,3', ',,,,,3,', 'Excellent', 'Good', '2022-2023', '2022-01-17 11:37:52', '2022-01-17 11:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type_id` int UNSIGNED DEFAULT NULL,
  `mark_from` tinyint NOT NULL,
  `mark_to` tinyint NOT NULL,
  `remark` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `class_type_id`, `mark_from`, `mark_to`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, 70, 100, 'Excellent', NULL, NULL),
(2, 'B', NULL, 60, 69, 'Very Good', NULL, NULL),
(3, 'C', NULL, 50, 59, 'Good', NULL, NULL),
(4, 'D', NULL, 45, 49, 'Pass', NULL, NULL),
(5, 'E', NULL, 40, 44, 'Poor', NULL, NULL),
(6, 'F', NULL, 0, 39, 'Fail', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lgas`
--

CREATE TABLE `lgas` (
  `id` int UNSIGNED NOT NULL,
  `state_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `subject_id` int UNSIGNED NOT NULL,
  `my_class_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `exam_id` int UNSIGNED NOT NULL,
  `t1` int DEFAULT NULL,
  `t2` int DEFAULT NULL,
  `t3` int DEFAULT NULL,
  `t4` int DEFAULT NULL,
  `tca` int DEFAULT NULL,
  `exm` int DEFAULT NULL,
  `tex1` int DEFAULT NULL,
  `tex2` int DEFAULT NULL,
  `tex3` int DEFAULT NULL,
  `sub_pos` tinyint DEFAULT NULL,
  `cum` int DEFAULT NULL,
  `cum_ave` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int UNSIGNED DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `subject_id`, `my_class_id`, `section_id`, `exam_id`, `t1`, `t2`, `t3`, `t4`, `tca`, `exm`, `tex1`, `tex2`, `tex3`, `sub_pos`, `cum`, `cum_ave`, `grade_id`, `year`, `created_at`, `updated_at`) VALUES
(7, 62, 26, 21, 13, 10, 25, 28, NULL, NULL, 53, 50, 77, NULL, NULL, 1, NULL, NULL, 1, '2022-2023', '2022-01-17 11:37:51', '2022-01-17 11:38:33');

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
(1, '2013_09_20_121733_create_blood_groups_table', 1),
(2, '2013_09_22_124750_create_states_table', 1),
(3, '2013_09_22_124806_create_lgas_table', 1),
(4, '2013_09_26_121148_create_nationalities_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2018_09_20_100249_create_user_types_table', 1),
(8, '2018_09_20_150906_create_class_types_table', 1),
(9, '2018_09_22_073005_create_my_classes_table', 1),
(10, '2018_09_22_073526_create_sections_table', 1),
(11, '2018_09_22_080555_create_settings_table', 1),
(12, '2018_09_22_081302_create_subjects_table', 1),
(13, '2018_09_22_151514_create_student_records_table', 1),
(14, '2018_09_26_124241_create_dorms_table', 1),
(15, '2018_10_04_224910_create_exams_table', 1),
(16, '2018_10_06_224846_create_marks_table', 1),
(17, '2018_10_06_224944_create_grades_table', 1),
(18, '2018_10_06_225007_create_pins_table', 1),
(19, '2018_10_18_205550_create_skills_table', 1),
(20, '2018_10_18_205842_create_exam_records_table', 1),
(21, '2018_10_31_191358_create_books_table', 1),
(22, '2018_10_31_192540_create_book_requests_table', 1),
(23, '2018_11_01_132115_create_staff_records_table', 1),
(24, '2018_11_03_210758_create_payments_table', 1),
(25, '2018_11_03_210817_create_payment_records_table', 1),
(26, '2018_11_06_083707_create_receipts_table', 1),
(27, '2018_11_27_180401_create_time_tables_table', 1),
(28, '2019_09_22_142514_create_fks', 1),
(29, '2019_09_26_132227_create_promotions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_classes`
--

CREATE TABLE `my_classes` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_classes`
--

INSERT INTO `my_classes` (`id`, `name`, `class_type_id`, `created_at`, `updated_at`) VALUES
(21, 'Form One', 13, '2022-01-14 05:38:09', '2022-01-14 16:34:19'),
(22, 'Form Two', 14, '2022-01-17 11:19:50', '2022-01-17 11:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghan', '2022-01-14 04:07:45', '2022-01-14 04:07:45'),
(2, 'Albanian', '2022-01-14 04:07:46', '2022-01-14 04:07:46'),
(3, 'Algerian', '2022-01-14 04:07:46', '2022-01-14 04:07:46'),
(4, 'American', '2022-01-14 04:07:46', '2022-01-14 04:07:46'),
(5, 'Andorran', '2022-01-14 04:07:46', '2022-01-14 04:07:46'),
(6, 'Angolan', '2022-01-14 04:07:46', '2022-01-14 04:07:46'),
(7, 'Antiguans', '2022-01-14 04:07:46', '2022-01-14 04:07:46'),
(8, 'Argentinean', '2022-01-14 04:07:46', '2022-01-14 04:07:46'),
(9, 'Armenian', '2022-01-14 04:07:46', '2022-01-14 04:07:46'),
(10, 'Australian', '2022-01-14 04:07:47', '2022-01-14 04:07:47'),
(11, 'Austrian', '2022-01-14 04:07:47', '2022-01-14 04:07:47'),
(12, 'Azerbaijani', '2022-01-14 04:07:47', '2022-01-14 04:07:47'),
(13, 'Bahamian', '2022-01-14 04:07:47', '2022-01-14 04:07:47'),
(14, 'Bahraini', '2022-01-14 04:07:47', '2022-01-14 04:07:47'),
(15, 'Bangladeshi', '2022-01-14 04:07:47', '2022-01-14 04:07:47'),
(16, 'Barbadian', '2022-01-14 04:07:48', '2022-01-14 04:07:48'),
(17, 'Barbudans', '2022-01-14 04:07:48', '2022-01-14 04:07:48'),
(18, 'Batswana', '2022-01-14 04:07:48', '2022-01-14 04:07:48'),
(19, 'Belarusian', '2022-01-14 04:07:48', '2022-01-14 04:07:48'),
(20, 'Belgian', '2022-01-14 04:07:48', '2022-01-14 04:07:48'),
(21, 'Belizean', '2022-01-14 04:07:48', '2022-01-14 04:07:48'),
(22, 'Beninese', '2022-01-14 04:07:48', '2022-01-14 04:07:48'),
(23, 'Bhutanese', '2022-01-14 04:07:48', '2022-01-14 04:07:48'),
(24, 'Bolivian', '2022-01-14 04:07:49', '2022-01-14 04:07:49'),
(25, 'Bosnian', '2022-01-14 04:07:49', '2022-01-14 04:07:49'),
(26, 'Brazilian', '2022-01-14 04:07:49', '2022-01-14 04:07:49'),
(27, 'British', '2022-01-14 04:07:49', '2022-01-14 04:07:49'),
(28, 'Bruneian', '2022-01-14 04:07:49', '2022-01-14 04:07:49'),
(29, 'Bulgarian', '2022-01-14 04:07:49', '2022-01-14 04:07:49'),
(30, 'Burkinabe', '2022-01-14 04:07:49', '2022-01-14 04:07:49'),
(31, 'Burmese', '2022-01-14 04:07:50', '2022-01-14 04:07:50'),
(32, 'Burundian', '2022-01-14 04:07:50', '2022-01-14 04:07:50'),
(33, 'Cambodian', '2022-01-14 04:07:50', '2022-01-14 04:07:50'),
(34, 'Cameroonian', '2022-01-14 04:07:50', '2022-01-14 04:07:50'),
(35, 'Canadian', '2022-01-14 04:07:50', '2022-01-14 04:07:50'),
(36, 'Cape Verdean', '2022-01-14 04:07:51', '2022-01-14 04:07:51'),
(37, 'Central African', '2022-01-14 04:07:51', '2022-01-14 04:07:51'),
(38, 'Chadian', '2022-01-14 04:07:51', '2022-01-14 04:07:51'),
(39, 'Chilean', '2022-01-14 04:07:51', '2022-01-14 04:07:51'),
(40, 'Chinese', '2022-01-14 04:07:51', '2022-01-14 04:07:51'),
(41, 'Colombian', '2022-01-14 04:07:51', '2022-01-14 04:07:51'),
(42, 'Comoran', '2022-01-14 04:07:52', '2022-01-14 04:07:52'),
(43, 'Congolese', '2022-01-14 04:07:52', '2022-01-14 04:07:52'),
(44, 'Costa Rican', '2022-01-14 04:07:52', '2022-01-14 04:07:52'),
(45, 'Croatian', '2022-01-14 04:07:52', '2022-01-14 04:07:52'),
(46, 'Cuban', '2022-01-14 04:07:52', '2022-01-14 04:07:52'),
(47, 'Cypriot', '2022-01-14 04:07:52', '2022-01-14 04:07:52'),
(48, 'Czech', '2022-01-14 04:07:53', '2022-01-14 04:07:53'),
(49, 'Danish', '2022-01-14 04:07:53', '2022-01-14 04:07:53'),
(50, 'Djibouti', '2022-01-14 04:07:53', '2022-01-14 04:07:53'),
(51, 'Dominican', '2022-01-14 04:07:53', '2022-01-14 04:07:53'),
(52, 'Dutch', '2022-01-14 04:07:53', '2022-01-14 04:07:53'),
(53, 'East Timorese', '2022-01-14 04:07:53', '2022-01-14 04:07:53'),
(54, 'Ecuadorean', '2022-01-14 04:07:54', '2022-01-14 04:07:54'),
(55, 'Egyptian', '2022-01-14 04:07:54', '2022-01-14 04:07:54'),
(56, 'Emirian', '2022-01-14 04:07:54', '2022-01-14 04:07:54'),
(57, 'Equatorial Guinean', '2022-01-14 04:07:54', '2022-01-14 04:07:54'),
(58, 'Eritrean', '2022-01-14 04:07:54', '2022-01-14 04:07:54'),
(59, 'Estonian', '2022-01-14 04:07:54', '2022-01-14 04:07:54'),
(60, 'Ethiopian', '2022-01-14 04:07:55', '2022-01-14 04:07:55'),
(61, 'Fijian', '2022-01-14 04:07:55', '2022-01-14 04:07:55'),
(62, 'Filipino', '2022-01-14 04:07:55', '2022-01-14 04:07:55'),
(63, 'Finnish', '2022-01-14 04:07:55', '2022-01-14 04:07:55'),
(64, 'French', '2022-01-14 04:07:55', '2022-01-14 04:07:55'),
(65, 'Gabonese', '2022-01-14 04:07:55', '2022-01-14 04:07:55'),
(66, 'Gambian', '2022-01-14 04:07:56', '2022-01-14 04:07:56'),
(67, 'Georgian', '2022-01-14 04:07:56', '2022-01-14 04:07:56'),
(68, 'German', '2022-01-14 04:07:56', '2022-01-14 04:07:56'),
(69, 'Ghanaian', '2022-01-14 04:07:56', '2022-01-14 04:07:56'),
(70, 'Greek', '2022-01-14 04:07:56', '2022-01-14 04:07:56'),
(71, 'Grenadian', '2022-01-14 04:07:56', '2022-01-14 04:07:56'),
(72, 'Guatemalan', '2022-01-14 04:07:57', '2022-01-14 04:07:57'),
(73, 'Guinea-Bissauan', '2022-01-14 04:07:57', '2022-01-14 04:07:57'),
(74, 'Guinean', '2022-01-14 04:07:57', '2022-01-14 04:07:57'),
(75, 'Guyanese', '2022-01-14 04:07:57', '2022-01-14 04:07:57'),
(76, 'Haitian', '2022-01-14 04:07:58', '2022-01-14 04:07:58'),
(77, 'Herzegovinian', '2022-01-14 04:07:58', '2022-01-14 04:07:58'),
(78, 'Honduran', '2022-01-14 04:07:58', '2022-01-14 04:07:58'),
(79, 'Hungarian', '2022-01-14 04:07:58', '2022-01-14 04:07:58'),
(80, 'I-Kiribati', '2022-01-14 04:07:59', '2022-01-14 04:07:59'),
(81, 'Icelander', '2022-01-14 04:07:59', '2022-01-14 04:07:59'),
(82, 'Indian', '2022-01-14 04:07:59', '2022-01-14 04:07:59'),
(83, 'Indonesian', '2022-01-14 04:07:59', '2022-01-14 04:07:59'),
(84, 'Iranian', '2022-01-14 04:08:00', '2022-01-14 04:08:00'),
(85, 'Iraqi', '2022-01-14 04:08:00', '2022-01-14 04:08:00'),
(86, 'Irish', '2022-01-14 04:08:00', '2022-01-14 04:08:00'),
(87, 'Israeli', '2022-01-14 04:08:00', '2022-01-14 04:08:00'),
(88, 'Italian', '2022-01-14 04:08:00', '2022-01-14 04:08:00'),
(89, 'Ivorian', '2022-01-14 04:08:00', '2022-01-14 04:08:00'),
(90, 'Jamaican', '2022-01-14 04:08:01', '2022-01-14 04:08:01'),
(91, 'Japanese', '2022-01-14 04:08:01', '2022-01-14 04:08:01'),
(92, 'Jordanian', '2022-01-14 04:08:01', '2022-01-14 04:08:01'),
(93, 'Kazakhstani', '2022-01-14 04:08:01', '2022-01-14 04:08:01'),
(94, 'Kenyan', '2022-01-14 04:08:01', '2022-01-14 04:08:01'),
(95, 'Kittian and Nevisian', '2022-01-14 04:08:01', '2022-01-14 04:08:01'),
(96, 'Kuwaiti', '2022-01-14 04:08:02', '2022-01-14 04:08:02'),
(97, 'Kyrgyz', '2022-01-14 04:08:02', '2022-01-14 04:08:02'),
(98, 'Laotian', '2022-01-14 04:08:02', '2022-01-14 04:08:02'),
(99, 'Latvian', '2022-01-14 04:08:02', '2022-01-14 04:08:02'),
(100, 'Lebanese', '2022-01-14 04:08:02', '2022-01-14 04:08:02'),
(101, 'Liberian', '2022-01-14 04:08:02', '2022-01-14 04:08:02'),
(102, 'Libyan', '2022-01-14 04:08:03', '2022-01-14 04:08:03'),
(103, 'Liechtensteiner', '2022-01-14 04:08:03', '2022-01-14 04:08:03'),
(104, 'Lithuanian', '2022-01-14 04:08:03', '2022-01-14 04:08:03'),
(105, 'Luxembourger', '2022-01-14 04:08:03', '2022-01-14 04:08:03'),
(106, 'Macedonian', '2022-01-14 04:08:03', '2022-01-14 04:08:03'),
(107, 'Malagasy', '2022-01-14 04:08:03', '2022-01-14 04:08:03'),
(108, 'Malawian', '2022-01-14 04:08:04', '2022-01-14 04:08:04'),
(109, 'Malaysian', '2022-01-14 04:08:04', '2022-01-14 04:08:04'),
(110, 'Maldivan', '2022-01-14 04:08:04', '2022-01-14 04:08:04'),
(111, 'Malian', '2022-01-14 04:08:04', '2022-01-14 04:08:04'),
(112, 'Maltese', '2022-01-14 04:08:04', '2022-01-14 04:08:04'),
(113, 'Marshallese', '2022-01-14 04:08:05', '2022-01-14 04:08:05'),
(114, 'Mauritanian', '2022-01-14 04:08:05', '2022-01-14 04:08:05'),
(115, 'Mauritian', '2022-01-14 04:08:05', '2022-01-14 04:08:05'),
(116, 'Mexican', '2022-01-14 04:08:05', '2022-01-14 04:08:05'),
(117, 'Micronesian', '2022-01-14 04:08:05', '2022-01-14 04:08:05'),
(118, 'Moldovan', '2022-01-14 04:08:05', '2022-01-14 04:08:05'),
(119, 'Monacan', '2022-01-14 04:08:05', '2022-01-14 04:08:05'),
(120, 'Mongolian', '2022-01-14 04:08:06', '2022-01-14 04:08:06'),
(121, 'Moroccan', '2022-01-14 04:08:06', '2022-01-14 04:08:06'),
(122, 'Mosotho', '2022-01-14 04:08:06', '2022-01-14 04:08:06'),
(123, 'Motswana', '2022-01-14 04:08:06', '2022-01-14 04:08:06'),
(124, 'Mozambican', '2022-01-14 04:08:06', '2022-01-14 04:08:06'),
(125, 'Namibian', '2022-01-14 04:08:06', '2022-01-14 04:08:06'),
(126, 'Nauruan', '2022-01-14 04:08:06', '2022-01-14 04:08:06'),
(127, 'Nepalese', '2022-01-14 04:08:06', '2022-01-14 04:08:06'),
(128, 'New Zealander', '2022-01-14 04:08:07', '2022-01-14 04:08:07'),
(129, 'Nicaraguan', '2022-01-14 04:08:07', '2022-01-14 04:08:07'),
(130, 'Nigerian', '2022-01-14 04:08:07', '2022-01-14 04:08:07'),
(131, 'Nigerien', '2022-01-14 04:08:07', '2022-01-14 04:08:07'),
(132, 'North Korean', '2022-01-14 04:08:07', '2022-01-14 04:08:07'),
(133, 'Northern Irish', '2022-01-14 04:08:08', '2022-01-14 04:08:08'),
(134, 'Norwegian', '2022-01-14 04:08:08', '2022-01-14 04:08:08'),
(135, 'Omani', '2022-01-14 04:08:09', '2022-01-14 04:08:09'),
(136, 'Pakistani', '2022-01-14 04:08:09', '2022-01-14 04:08:09'),
(137, 'Palauan', '2022-01-14 04:08:09', '2022-01-14 04:08:09'),
(138, 'Panamanian', '2022-01-14 04:08:09', '2022-01-14 04:08:09'),
(139, 'Papua New Guinean', '2022-01-14 04:08:09', '2022-01-14 04:08:09'),
(140, 'Paraguayan', '2022-01-14 04:08:10', '2022-01-14 04:08:10'),
(141, 'Peruvian', '2022-01-14 04:08:10', '2022-01-14 04:08:10'),
(142, 'Polish', '2022-01-14 04:08:10', '2022-01-14 04:08:10'),
(143, 'Portuguese', '2022-01-14 04:08:10', '2022-01-14 04:08:10'),
(144, 'Qatari', '2022-01-14 04:08:10', '2022-01-14 04:08:10'),
(145, 'Romanian', '2022-01-14 04:08:11', '2022-01-14 04:08:11'),
(146, 'Russian', '2022-01-14 04:08:11', '2022-01-14 04:08:11'),
(147, 'Rwandan', '2022-01-14 04:08:11', '2022-01-14 04:08:11'),
(148, 'Saint Lucian', '2022-01-14 04:08:11', '2022-01-14 04:08:11'),
(149, 'Salvadoran', '2022-01-14 04:08:11', '2022-01-14 04:08:11'),
(150, 'Samoan', '2022-01-14 04:08:12', '2022-01-14 04:08:12'),
(151, 'San Marinese', '2022-01-14 04:08:12', '2022-01-14 04:08:12'),
(152, 'Sao Tomean', '2022-01-14 04:08:12', '2022-01-14 04:08:12'),
(153, 'Saudi', '2022-01-14 04:08:12', '2022-01-14 04:08:12'),
(154, 'Scottish', '2022-01-14 04:08:13', '2022-01-14 04:08:13'),
(155, 'Senegalese', '2022-01-14 04:08:13', '2022-01-14 04:08:13'),
(156, 'Serbian', '2022-01-14 04:08:13', '2022-01-14 04:08:13'),
(157, 'Seychellois', '2022-01-14 04:08:13', '2022-01-14 04:08:13'),
(158, 'Sierra Leonean', '2022-01-14 04:08:13', '2022-01-14 04:08:13'),
(159, 'Singaporean', '2022-01-14 04:08:13', '2022-01-14 04:08:13'),
(160, 'Slovakian', '2022-01-14 04:08:14', '2022-01-14 04:08:14'),
(161, 'Slovenian', '2022-01-14 04:08:14', '2022-01-14 04:08:14'),
(162, 'Solomon Islander', '2022-01-14 04:08:14', '2022-01-14 04:08:14'),
(163, 'Somali', '2022-01-14 04:08:14', '2022-01-14 04:08:14'),
(164, 'South African', '2022-01-14 04:08:15', '2022-01-14 04:08:15'),
(165, 'South Korean', '2022-01-14 04:08:15', '2022-01-14 04:08:15'),
(166, 'Spanish', '2022-01-14 04:08:15', '2022-01-14 04:08:15'),
(167, 'Sri Lankan', '2022-01-14 04:08:15', '2022-01-14 04:08:15'),
(168, 'Sudanese', '2022-01-14 04:08:15', '2022-01-14 04:08:15'),
(169, 'Surinamer', '2022-01-14 04:08:16', '2022-01-14 04:08:16'),
(170, 'Swazi', '2022-01-14 04:08:16', '2022-01-14 04:08:16'),
(171, 'Swedish', '2022-01-14 04:08:16', '2022-01-14 04:08:16'),
(172, 'Swiss', '2022-01-14 04:08:16', '2022-01-14 04:08:16'),
(173, 'Syrian', '2022-01-14 04:08:16', '2022-01-14 04:08:16'),
(174, 'Taiwanese', '2022-01-14 04:08:17', '2022-01-14 04:08:17'),
(175, 'Tajik', '2022-01-14 04:08:17', '2022-01-14 04:08:17'),
(176, 'Tanzanian', '2022-01-14 04:08:17', '2022-01-14 04:08:17'),
(177, 'Thai', '2022-01-14 04:08:17', '2022-01-14 04:08:17'),
(178, 'Togolese', '2022-01-14 04:08:17', '2022-01-14 04:08:17'),
(179, 'Tongan', '2022-01-14 04:08:17', '2022-01-14 04:08:17'),
(180, 'Trinidadian/Tobagonian', '2022-01-14 04:08:18', '2022-01-14 04:08:18'),
(181, 'Tunisian', '2022-01-14 04:08:18', '2022-01-14 04:08:18'),
(182, 'Turkish', '2022-01-14 04:08:18', '2022-01-14 04:08:18'),
(183, 'Tuvaluan', '2022-01-14 04:08:18', '2022-01-14 04:08:18'),
(184, 'Ugandan', '2022-01-14 04:08:18', '2022-01-14 04:08:18'),
(185, 'Ukrainian', '2022-01-14 04:08:18', '2022-01-14 04:08:18'),
(186, 'Uruguayan', '2022-01-14 04:08:18', '2022-01-14 04:08:18'),
(187, 'Uzbekistani', '2022-01-14 04:08:18', '2022-01-14 04:08:18'),
(188, 'Venezuelan', '2022-01-14 04:08:19', '2022-01-14 04:08:19'),
(189, 'Vietnamese', '2022-01-14 04:08:19', '2022-01-14 04:08:19'),
(190, 'Welsh', '2022-01-14 04:08:19', '2022-01-14 04:08:19'),
(191, 'Yemenite', '2022-01-14 04:08:19', '2022-01-14 04:08:19'),
(192, 'Zambian', '2022-01-14 04:08:20', '2022-01-14 04:08:20'),
(193, 'Zimbabwean', '2022-01-14 04:08:20', '2022-01-14 04:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `ref_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `my_class_id` int UNSIGNED DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `title`, `amount`, `ref_no`, `method`, `my_class_id`, `description`, `year`, `created_at`, `updated_at`) VALUES
(1, 'school fess', 30000, '2022/460603', 'cash', 21, NULL, '2022-2023', '2022-01-14 17:16:59', '2022-01-14 17:16:59'),
(2, 'School Fees', 80000, '2022/431527', 'cash', 21, 'School Fees', '2022-2023', '2022-01-17 11:54:15', '2022-01-17 11:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `payment_records`
--

CREATE TABLE `payment_records` (
  `id` int UNSIGNED NOT NULL,
  `payment_id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `ref_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amt_paid` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  `paid` tinyint NOT NULL DEFAULT '0',
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_records`
--

INSERT INTO `payment_records` (`id`, `payment_id`, `student_id`, `ref_no`, `amt_paid`, `balance`, `paid`, `year`, `created_at`, `updated_at`) VALUES
(3, 1, 62, '16970211', NULL, NULL, 0, '2022-2023', '2022-01-17 11:55:28', '2022-01-17 11:55:28'),
(4, 2, 62, '78931218', 50000, 30000, 0, '2022-2023', '2022-01-17 11:55:28', '2022-01-17 11:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `pins`
--

CREATE TABLE `pins` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `times_used` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED DEFAULT NULL,
  `student_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int UNSIGNED NOT NULL,
  `student_id` int UNSIGNED NOT NULL,
  `from_class` int UNSIGNED NOT NULL,
  `from_section` int UNSIGNED NOT NULL,
  `to_class` int UNSIGNED NOT NULL,
  `to_section` int UNSIGNED NOT NULL,
  `grad` tinyint NOT NULL,
  `from_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `student_id`, `from_class`, `from_section`, `to_class`, `to_section`, `grad`, `from_session`, `to_session`, `status`, `created_at`, `updated_at`) VALUES
(1, 62, 21, 13, 22, 16, 0, '2022-2023', '2023-2024', 'P', '2022-01-17 11:59:15', '2022-01-17 11:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int UNSIGNED NOT NULL,
  `pr_id` int UNSIGNED NOT NULL,
  `amt_paid` int NOT NULL,
  `balance` int NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `pr_id`, `amt_paid`, `balance`, `year`, `created_at`, `updated_at`) VALUES
(4, 4, 50000, 30000, '2022-2023', '2022-01-17 11:56:32', '2022-01-17 11:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int UNSIGNED NOT NULL,
  `teacher_id` int UNSIGNED DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `my_class_id`, `teacher_id`, `active`, `created_at`, `updated_at`) VALUES
(13, 'West', 21, NULL, 1, '2022-01-14 05:38:09', '2022-01-14 16:40:57'),
(14, 'Music', 21, NULL, 0, '2022-01-14 06:35:33', '2022-01-14 06:35:33'),
(15, 'East', 21, NULL, 0, '2022-01-14 16:35:24', '2022-01-14 16:35:24'),
(16, 'A', 22, NULL, 1, '2022-01-17 11:19:50', '2022-01-17 11:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'current_session', '2022-2023', NULL, '2022-01-16 13:54:36'),
(2, 'system_title', 'BND', NULL, '2022-01-16 13:54:37'),
(3, 'system_name', 'Bondeni Sec', NULL, '2022-01-16 13:54:36'),
(4, 'term_ends', '01/11/2022', NULL, '2022-01-16 13:54:37'),
(5, 'term_begins', '05/25/2022', NULL, '2022-01-16 13:54:37'),
(6, 'phone', '+254790943918', NULL, '2022-01-16 13:54:37'),
(7, 'address', '2963 bondeni county', NULL, '2022-01-16 13:54:37'),
(8, 'system_email', 'simiyu.frankline34@gmail.com', NULL, '2022-01-16 13:54:37'),
(9, 'alt_email', '', NULL, NULL),
(10, 'email_host', '', NULL, NULL),
(11, 'email_pass', '', NULL, NULL),
(12, 'lock_exam', '0', NULL, '2022-01-16 13:54:37'),
(13, 'logo', 'http://127.0.0.1:8000/storage/uploads//logo.jpg', NULL, '2022-01-16 13:54:38'),
(14, 'next_term_fees_j', '20000', NULL, '2022-01-14 04:31:42'),
(15, 'next_term_fees_pn', '25000', NULL, '2022-01-16 13:54:38'),
(16, 'next_term_fees_p', '25000', NULL, '2022-01-16 13:54:38'),
(17, 'next_term_fees_n', '25600', NULL, '2022-01-16 13:54:38'),
(18, 'next_term_fees_s', '15600', NULL, '2022-01-14 04:31:43'),
(19, 'next_term_fees_c', '1600', NULL, '2022-01-16 13:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `skill_type`, `class_type`, `created_at`, `updated_at`) VALUES
(1, 'PUNCTUALITY', 'AF', NULL, NULL, NULL),
(2, 'NEATNESS', 'AF', NULL, NULL, NULL),
(3, 'HONESTY', 'AF', NULL, NULL, NULL),
(4, 'RELIABILITY', 'AF', NULL, NULL, NULL),
(5, 'RELATIONSHIP WITH OTHERS', 'AF', NULL, NULL, NULL),
(6, 'POLITENESS', 'AF', NULL, NULL, NULL),
(7, 'ALERTNESS', 'AF', NULL, NULL, NULL),
(8, 'HANDWRITING', 'PS', NULL, NULL, NULL),
(9, 'GAMES & SPORTS', 'PS', NULL, NULL, NULL),
(10, 'DRAWING & ARTS', 'PS', NULL, NULL, NULL),
(11, 'PAINTING', 'PS', NULL, NULL, NULL),
(12, 'CONSTRUCTION', 'PS', NULL, NULL, NULL),
(13, 'MUSICAL SKILLS', 'PS', NULL, NULL, NULL),
(14, 'FLEXIBILITY', 'PS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_records`
--

CREATE TABLE `staff_records` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emp_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_records`
--

INSERT INTO `staff_records` (`id`, `user_id`, `code`, `emp_date`, `created_at`, `updated_at`) VALUES
(1, 57, 'BND/STAFF/1970/01/8758', NULL, '2022-01-16 14:38:59', '2022-01-16 14:38:59'),
(2, 58, 'BND/STAFF/2022/01/2141', '01/03/2022', '2022-01-16 16:58:06', '2022-01-16 16:58:06'),
(3, 59, 'BND/STAFF/1970/01/9512', NULL, '2022-01-16 18:05:00', '2022-01-16 18:05:00'),
(4, 61, 'BND/STAFF/1970/01/7247', NULL, '2022-01-17 11:26:08', '2022-01-21 06:33:29');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(38, 'Mombasa', NULL, NULL),
(39, 'Kwale', NULL, NULL),
(40, 'Kilifi', NULL, NULL),
(41, 'Tana River', NULL, NULL),
(42, 'Lamu', NULL, NULL),
(43, 'Taita-Taveta', NULL, NULL),
(44, 'Garissa', NULL, NULL),
(45, 'wajir', NULL, NULL),
(46, 'Mandera', NULL, NULL),
(47, 'Marsabit', NULL, NULL),
(48, 'Isiolo', NULL, NULL),
(49, 'Meru', NULL, NULL),
(50, 'Tharaka-Nithi', NULL, NULL),
(51, 'Embu', NULL, NULL),
(52, 'Kitui', NULL, NULL),
(53, 'Machakos', NULL, NULL),
(54, 'Makueni', NULL, NULL),
(55, 'Nyandarua', NULL, NULL),
(56, 'Nyeri', NULL, NULL),
(57, 'Kirinyaga', NULL, NULL),
(58, 'Murang\'a', NULL, NULL),
(59, 'Kiambu', NULL, NULL),
(60, 'Turkana', NULL, NULL),
(61, 'West Pokot', NULL, NULL),
(62, 'Samburu', NULL, NULL),
(63, 'Trans Nzoia', NULL, NULL),
(64, 'Uasin Gishu', NULL, NULL),
(65, 'Elgeyo-Marakwet', NULL, NULL),
(66, 'Nandi', NULL, NULL),
(67, 'Baringo', NULL, NULL),
(68, 'Laikipia', NULL, NULL),
(69, 'Nakuru', NULL, NULL),
(70, 'Narok', NULL, NULL),
(71, 'Kajiado', NULL, NULL),
(72, 'Kericho', NULL, NULL),
(73, 'Bomet', NULL, NULL),
(74, 'Kakamega', NULL, NULL),
(75, 'Vihiga', NULL, NULL),
(76, 'Bungoma', NULL, NULL),
(77, 'Busia', NULL, NULL),
(78, 'Siaya', NULL, NULL),
(79, 'Kisumu', NULL, NULL),
(80, 'Homa Bay', NULL, NULL),
(81, 'Migori', NULL, NULL),
(82, 'Kisii', NULL, NULL),
(83, 'Nyamira', NULL, NULL),
(84, 'Nairobi City', NULL, NULL),
(85, 'Kwale', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_records`
--

CREATE TABLE `student_records` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `my_class_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `adm_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `my_parent_id` int UNSIGNED DEFAULT NULL,
  `dorm_id` int UNSIGNED DEFAULT NULL,
  `dorm_room_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` tinyint DEFAULT NULL,
  `year_admitted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grad` tinyint NOT NULL DEFAULT '0',
  `grad_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_records`
--

INSERT INTO `student_records` (`id`, `user_id`, `my_class_id`, `section_id`, `adm_no`, `my_parent_id`, `dorm_id`, `dorm_room_no`, `session`, `house`, `age`, `year_admitted`, `grad`, `grad_date`, `created_at`, `updated_at`) VALUES
(40, 62, 22, 16, 'BND/C/2022/1015', NULL, NULL, NULL, '2023-2024', NULL, NULL, '2022', 0, NULL, '2022-01-17 11:31:16', '2022-01-17 11:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int UNSIGNED NOT NULL,
  `teacher_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `slug`, `my_class_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(25, 'Christian Religious Education', 'CRE', 22, 61, '2022-01-17 11:28:44', '2022-01-17 11:28:44'),
(26, 'Biology', 'Bio', 21, 61, '2022-01-17 11:35:53', '2022-01-17 11:35:53'),
(27, 'Chemistry', 'Chem', 21, 61, '2022-01-17 11:36:13', '2022-01-17 11:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` int UNSIGNED NOT NULL,
  `ttr_id` int UNSIGNED NOT NULL,
  `hour_from` tinyint NOT NULL,
  `min_from` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meridian_from` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour_to` tinyint NOT NULL,
  `min_to` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meridian_to` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_from` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_to` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `ttr_id`, `hour_from`, `min_from`, `meridian_from`, `hour_to`, `min_to`, `meridian_to`, `time_from`, `time_to`, `timestamp_from`, `timestamp_to`, `full`, `created_at`, `updated_at`) VALUES
(1, 1, 10, '30', 'AM', 11, '30', 'AM', '10:30 AM', '11:30 AM', '1642156200', '1642159800', '10:30 AM - 11:30 AM', '2022-01-14 17:14:14', '2022-01-14 17:14:14'),
(2, 4, 6, '10', 'AM', 7, '30', 'AM', '6:10 AM', '7:30 AM', '1642399800', '1642404600', '6:10 AM - 7:30 AM', '2022-01-17 11:47:55', '2022-01-17 11:50:03'),
(3, 4, 7, '30', 'AM', 9, '30', 'AM', '7:30 AM', '9:30 AM', '1642404600', '1642411800', '7:30 AM - 9:30 AM', '2022-01-17 11:48:54', '2022-01-17 11:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
  `id` int UNSIGNED NOT NULL,
  `ttr_id` int UNSIGNED NOT NULL,
  `ts_id` int UNSIGNED NOT NULL,
  `subject_id` int UNSIGNED DEFAULT NULL,
  `exam_date` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp_from` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_num` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_tables`
--

INSERT INTO `time_tables` (`id`, `ttr_id`, `ts_id`, `subject_id`, `exam_date`, `timestamp_from`, `timestamp_to`, `day`, `day_num`, `created_at`, `updated_at`) VALUES
(2, 4, 2, 26, NULL, '1642399800', '1642404600', 'Monday', NULL, '2022-01-17 11:50:46', '2022-01-17 11:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_records`
--

CREATE TABLE `time_table_records` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `my_class_id` int UNSIGNED NOT NULL,
  `exam_id` int UNSIGNED DEFAULT NULL,
  `year` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_table_records`
--

INSERT INTO `time_table_records` (`id`, `name`, `my_class_id`, `exam_id`, `year`, `created_at`, `updated_at`) VALUES
(1, 'exam', 21, NULL, '2022-2023', '2022-01-14 05:40:49', '2022-01-14 05:40:49'),
(2, 'exam 2', 21, 6, '2022-2023', '2022-01-14 17:10:49', '2022-01-14 17:10:49'),
(3, 'english', 21, NULL, '2022-2023', '2022-01-14 17:12:49', '2022-01-14 17:12:49'),
(4, 'Term One timetable', 21, NULL, '2022-2023', '2022-01-17 11:45:41', '2022-01-17 11:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://localhost/global_assets/images/user.png',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_id` int UNSIGNED DEFAULT NULL,
  `state_id` int UNSIGNED DEFAULT NULL,
  `lga_id` int UNSIGNED DEFAULT NULL,
  `nal_id` int UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `code`, `username`, `user_type`, `dob`, `gender`, `photo`, `phone`, `phone2`, `bg_id`, `state_id`, `lga_id`, `nal_id`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(57, 'Frankline Wakasiaka', 'super@frank.com', 'N6JOJFFVU8', 'Admin_Super', 'super_admin', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', '0790943918', NULL, NULL, 38, NULL, 94, '0790943918', NULL, '$2y$10$mdDlVNRWvnJVEVSomqtKV.1w5CuzSu/ARXf2lqd6Jj8gKai9rIYtS', NULL, '2022-01-16 14:38:58', '2022-01-16 14:38:58'),
(58, 'Steve Stevenson', 'accountant@accounts.com', 'IKS9VROKTO', 'BND/STAFF/2022/01/2141', 'accountant', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', NULL, NULL, NULL, 63, NULL, 94, 'Milimani', NULL, '$2y$10$4sf8RRA1q.MXt7pclsUUXOLo9HoSh7uvZrUubFAR8jrNjRuDtKNmS', NULL, '2022-01-16 16:58:06', '2022-01-16 16:58:06'),
(59, 'Paul Nduati', 'paul97@gmail.com', '6WXBQ3KXZT', 'Director', 'admin', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', NULL, NULL, NULL, 63, NULL, 94, 'Wamwini', NULL, '$2y$10$4sYlVogYVJ1r/FannozRf./jUcAkURSeBQi0IiNiQGY0pHJveivDi', NULL, '2022-01-16 18:05:00', '2022-01-16 18:05:00'),
(60, 'Fredrick Simiyu', 'fredrick@gmail.com', '0EJAHGTUG6', 'BND/STAFF/1970/01/8701', 'parent', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', '0790943918', NULL, NULL, 84, NULL, 69, 'Wamwini', NULL, '$2y$10$/stPG76Uj63N1aPTv8ngCOQJjbSXcNUrRKTU2guO6O4RK2vkV7lz.', NULL, '2022-01-17 11:21:56', '2022-01-17 11:21:56'),
(61, 'Fredric Nasimiyu', NULL, 'NT2QHMMZ44', 'BND/STAFF/1970/01/7247', 'teacher', NULL, 'Male', 'http://127.0.0.1:8000/storage/uploads/teacher/NT2QHMMZ44/photo.jpg', '0790943918', NULL, NULL, 84, NULL, 69, 'Wamwini', NULL, '$2y$10$ym5YMUogSyTeMI2xuYuQSuPpDte/32o.zdNFkJ2GSdFzmaXJwr.gq', NULL, '2022-01-17 11:26:08', '2022-01-21 06:33:29'),
(62, 'Erick Wasilwa', NULL, '24BSSXH1MT', 'BND/C/2022/1015', 'student', NULL, 'Male', 'http://127.0.0.1:8000/global_assets/images/user.png', NULL, NULL, NULL, 64, NULL, 94, 'Eldoret', NULL, '$2y$10$aUl3kqyqJlqyZUu0E6LwD.a8lHS9N/.bc2aBkpFcUMF4vpUT.cUIC', NULL, '2022-01-17 11:31:16', '2022-01-17 11:31:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `title`, `name`, `level`, `created_at`, `updated_at`) VALUES
(1, 'accountant', 'Accountant', '5', NULL, NULL),
(2, 'parent', 'Parent', '4', NULL, NULL),
(3, 'teacher', 'Teacher', '3', NULL, NULL),
(4, 'admin', 'Admin', '2', NULL, NULL),
(5, 'super_admin', 'Super Admin', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_my_class_id_foreign` (`my_class_id`);

--
-- Indexes for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_requests_book_id_foreign` (`book_id`),
  ADD KEY `book_requests_user_id_foreign` (`user_id`);

--
-- Indexes for table `class_types`
--
ALTER TABLE `class_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dorms`
--
ALTER TABLE `dorms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dorms_name_unique` (`name`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_term_year_unique` (`id`) USING BTREE;

--
-- Indexes for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_records_exam_id_foreign` (`exam_id`),
  ADD KEY `exam_records_my_class_id_foreign` (`my_class_id`),
  ADD KEY `exam_records_student_id_foreign` (`student_id`),
  ADD KEY `exam_records_section_id_foreign` (`section_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grades_name_class_type_id_remark_unique` (`name`,`class_type_id`,`remark`),
  ADD KEY `grades_class_type_id_foreign` (`class_type_id`);

--
-- Indexes for table `lgas`
--
ALTER TABLE `lgas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lgas_state_id_foreign` (`state_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marks_student_id_foreign` (`student_id`),
  ADD KEY `marks_my_class_id_foreign` (`my_class_id`),
  ADD KEY `marks_section_id_foreign` (`section_id`),
  ADD KEY `marks_subject_id_foreign` (`subject_id`),
  ADD KEY `marks_exam_id_foreign` (`exam_id`),
  ADD KEY `marks_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `my_classes_class_type_id_name_unique` (`class_type_id`,`name`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_ref_no_unique` (`ref_no`),
  ADD KEY `payments_my_class_id_foreign` (`my_class_id`);

--
-- Indexes for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_records_ref_no_unique` (`ref_no`),
  ADD KEY `payment_records_payment_id_foreign` (`payment_id`),
  ADD KEY `payment_records_student_id_foreign` (`student_id`);

--
-- Indexes for table `pins`
--
ALTER TABLE `pins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pins_code_unique` (`code`),
  ADD KEY `pins_user_id_foreign` (`user_id`),
  ADD KEY `pins_student_id_foreign` (`student_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_student_id_foreign` (`student_id`),
  ADD KEY `promotions_from_class_foreign` (`from_class`),
  ADD KEY `promotions_from_section_foreign` (`from_section`),
  ADD KEY `promotions_to_section_foreign` (`to_section`),
  ADD KEY `promotions_to_class_foreign` (`to_class`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receipts_pr_id_foreign` (`pr_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_name_my_class_id_unique` (`name`,`my_class_id`),
  ADD KEY `sections_my_class_id_foreign` (`my_class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_records_code_unique` (`code`),
  ADD KEY `staff_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_records`
--
ALTER TABLE `student_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_records_adm_no_unique` (`adm_no`),
  ADD KEY `student_records_user_id_foreign` (`user_id`),
  ADD KEY `student_records_my_class_id_foreign` (`my_class_id`),
  ADD KEY `student_records_section_id_foreign` (`section_id`),
  ADD KEY `student_records_my_parent_id_foreign` (`my_parent_id`),
  ADD KEY `student_records_dorm_id_foreign` (`dorm_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_my_class_id_name_unique` (`my_class_id`,`name`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_slots_timestamp_from_timestamp_to_ttr_id_unique` (`timestamp_from`,`timestamp_to`,`ttr_id`),
  ADD KEY `time_slots_ttr_id_foreign` (`ttr_id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_tables_ttr_id_ts_id_day_unique` (`ttr_id`,`ts_id`,`day`),
  ADD UNIQUE KEY `time_tables_ttr_id_ts_id_exam_date_unique` (`ttr_id`,`ts_id`,`exam_date`),
  ADD KEY `time_tables_ts_id_foreign` (`ts_id`),
  ADD KEY `time_tables_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `time_table_records`
--
ALTER TABLE `time_table_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_table_records_name_unique` (`name`),
  ADD UNIQUE KEY `time_table_records_my_class_id_exam_id_year_unique` (`my_class_id`,`exam_id`,`year`),
  ADD KEY `time_table_records_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_code_unique` (`code`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_state_id_foreign` (`state_id`),
  ADD KEY `users_lga_id_foreign` (`lga_id`),
  ADD KEY `users_bg_id_foreign` (`bg_id`),
  ADD KEY `users_nal_id_foreign` (`nal_id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_requests`
--
ALTER TABLE `book_requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_types`
--
ALTER TABLE `class_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dorms`
--
ALTER TABLE `dorms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exam_records`
--
ALTER TABLE `exam_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lgas`
--
ALTER TABLE `lgas`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `my_classes`
--
ALTER TABLE `my_classes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_records`
--
ALTER TABLE `payment_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pins`
--
ALTER TABLE `pins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `staff_records`
--
ALTER TABLE `staff_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `student_records`
--
ALTER TABLE `student_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `time_table_records`
--
ALTER TABLE `time_table_records`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `book_requests`
--
ALTER TABLE `book_requests`
  ADD CONSTRAINT `book_requests_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_records`
--
ALTER TABLE `exam_records`
  ADD CONSTRAINT `exam_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_class_type_id_foreign` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lgas`
--
ALTER TABLE `lgas`
  ADD CONSTRAINT `lgas_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `marks_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `my_classes`
--
ALTER TABLE `my_classes`
  ADD CONSTRAINT `my_classes_class_type_id_foreign` FOREIGN KEY (`class_type_id`) REFERENCES `class_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_records`
--
ALTER TABLE `payment_records`
  ADD CONSTRAINT `payment_records_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_records_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pins`
--
ALTER TABLE `pins`
  ADD CONSTRAINT `pins_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_from_class_foreign` FOREIGN KEY (`from_class`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_from_section_foreign` FOREIGN KEY (`from_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_class_foreign` FOREIGN KEY (`to_class`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_to_section_foreign` FOREIGN KEY (`to_section`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_pr_id_foreign` FOREIGN KEY (`pr_id`) REFERENCES `payment_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `staff_records`
--
ALTER TABLE `staff_records`
  ADD CONSTRAINT `staff_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_records`
--
ALTER TABLE `student_records`
  ADD CONSTRAINT `student_records_dorm_id_foreign` FOREIGN KEY (`dorm_id`) REFERENCES `dorms` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_my_parent_id_foreign` FOREIGN KEY (`my_parent_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `student_records_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD CONSTRAINT `time_slots_ttr_id_foreign` FOREIGN KEY (`ttr_id`) REFERENCES `time_table_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD CONSTRAINT `time_tables_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_tables_ts_id_foreign` FOREIGN KEY (`ts_id`) REFERENCES `time_slots` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_tables_ttr_id_foreign` FOREIGN KEY (`ttr_id`) REFERENCES `time_table_records` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_table_records`
--
ALTER TABLE `time_table_records`
  ADD CONSTRAINT `time_table_records_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `time_table_records_my_class_id_foreign` FOREIGN KEY (`my_class_id`) REFERENCES `my_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_bg_id_foreign` FOREIGN KEY (`bg_id`) REFERENCES `blood_groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_lga_id_foreign` FOREIGN KEY (`lga_id`) REFERENCES `lgas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_nal_id_foreign` FOREIGN KEY (`nal_id`) REFERENCES `nationalities` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
