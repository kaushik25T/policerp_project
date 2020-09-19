-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2020 at 02:53 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `policerp`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_key`
--

CREATE TABLE `accounts_key` (
  `license_key` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_key`
--

INSERT INTO `accounts_key` (`license_key`) VALUES
('1234'),
('123456789');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_myuser`
--

CREATE TABLE `accounts_myuser` (
  `id` int(11) NOT NULL,
  `lkey` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_myuser`
--

INSERT INTO `accounts_myuser` (`id`, `lkey`, `user_id`) VALUES
(3, '1234', 23);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofile`
--

CREATE TABLE `accounts_userprofile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key_id_id` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_userprofile`
--

INSERT INTO `accounts_userprofile` (`id`, `user_id`, `key_id_id`) VALUES
(2, 9, '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add rp', 7, 'add_rp'),
(26, 'Can change rp', 7, 'change_rp'),
(27, 'Can delete rp', 7, 'delete_rp'),
(28, 'Can view rp', 7, 'view_rp'),
(29, 'Can add file', 8, 'add_file'),
(30, 'Can change file', 8, 'change_file'),
(31, 'Can delete file', 8, 'delete_file'),
(32, 'Can view file', 8, 'view_file'),
(33, 'Can add file doc', 8, 'add_filedoc'),
(34, 'Can change file doc', 8, 'change_filedoc'),
(35, 'Can delete file doc', 8, 'delete_filedoc'),
(36, 'Can view file doc', 8, 'view_filedoc'),
(37, 'Can add officer', 9, 'add_officer'),
(38, 'Can change officer', 9, 'change_officer'),
(39, 'Can delete officer', 9, 'delete_officer'),
(40, 'Can view officer', 9, 'view_officer'),
(41, 'Can add key', 10, 'add_key'),
(42, 'Can change key', 10, 'change_key'),
(43, 'Can delete key', 10, 'delete_key'),
(44, 'Can view key', 10, 'view_key'),
(45, 'Can add user', 11, 'add_user'),
(46, 'Can change user', 11, 'change_user'),
(47, 'Can delete user', 11, 'delete_user'),
(48, 'Can view user', 11, 'view_user'),
(49, 'Can add user profile', 12, 'add_userprofile'),
(50, 'Can change user profile', 12, 'change_userprofile'),
(51, 'Can delete user profile', 12, 'delete_userprofile'),
(52, 'Can view user profile', 12, 'view_userprofile'),
(53, 'Can add profile', 13, 'add_profile'),
(54, 'Can change profile', 13, 'change_profile'),
(55, 'Can delete profile', 13, 'delete_profile'),
(56, 'Can view profile', 13, 'view_profile'),
(57, 'Can add myuser', 14, 'add_myuser'),
(58, 'Can change myuser', 14, 'change_myuser'),
(59, 'Can delete myuser', 14, 'delete_myuser'),
(60, 'Can view myuser', 14, 'view_myuser');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$GibkXQVQToVi$owbXVNgq21Tf3GroRCGcAU07S7/ZMtsqqMS3OzuauPQ=', '2020-09-07 12:46:55.669403', 1, 'police', '', '', 'police@gmail.com', 1, 1, '2020-08-09 10:32:06.384884'),
(7, 'pbkdf2_sha256$216000$jxGNm16isHd4$FrNxuIUnddJIuaduVF7ctcGHTAix4tXHxKvuvdwjJdU=', '2020-08-31 13:06:38.072998', 0, 'kaushik', 'kaushik', '', 'kaushiktiwari05@gmail.com', 0, 1, '2020-08-31 13:06:33.848148'),
(9, 'pbkdf2_sha256$216000$veqSLzGilvUp$Ef1qz2rQdEFBuZRVvjwy9+Ek6M7o0W/9dcXiQ8J0LUg=', '2020-09-05 05:54:53.248322', 0, 'sachin1', 'sachin', '', 'sachin@gmail.com', 0, 1, '2020-08-31 14:35:26.896236'),
(10, 'pbkdf2_sha256$216000$QiHJmSPKcD0K$YdInIQqkLFDAh9RNbmVCA8dp4ZqtnAK/vg/8Rx8e5Gk=', NULL, 0, 'dilip', 'd', '', 'd@gmail.com', 0, 1, '2020-09-07 11:36:24.805590'),
(13, 'pbkdf2_sha256$216000$w00pIAN6f1TF$s0Wb2OkJk+Do0bV56a7k+93HA0cMGvDD83DhVK17+Zg=', NULL, 0, 'c', 'c', '', 'c@gmail.com', 0, 1, '2020-09-07 12:04:24.658861'),
(14, 'pbkdf2_sha256$216000$DKJDoGg5CUrr$8Md3pme0lpcMXj4rOVpedDmIviCA3a2MiALvRqmxuos=', NULL, 0, 'n', 'n', '', 'apollo.sportsaccessories@gmail.com', 0, 1, '2020-09-07 12:14:13.017757'),
(22, 'pbkdf2_sha256$216000$07mHXK0LEhIZ$l4XvL9Khis1wpe4zcfCSCQv128JLWR0YfomS3c0q3qY=', NULL, 0, 'test', 'test', '', 'test@gmail.com', 0, 1, '2020-09-07 12:37:09.289364'),
(23, 'pbkdf2_sha256$216000$1vGVmpXa0QrS$aQaw7/U9lo3VEQETr6mNaLAjfRdlVWAWtaRfB9bhzwA=', NULL, 0, 'test1', 'test1', '', 'kaushiktiwari005@gmail.com', 0, 1, '2020-09-07 12:46:49.930343');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-08-12 14:29:36.247190', '1', 'File object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-08-31 12:51:26.101823', '4', 'abc', 3, '', 4, 1),
(3, '2020-08-31 12:51:31.331019', '2', 'kaushik', 3, '', 4, 1),
(4, '2020-08-31 12:51:38.198591', '5', 'kriti', 3, '', 4, 1),
(5, '2020-08-31 12:51:45.086300', '3', 'maunik', 3, '', 4, 1),
(6, '2020-08-31 12:51:50.136632', '6', 'sachin', 3, '', 4, 1),
(7, '2020-08-31 13:41:45.810538', '123456789', 'Key object (123456789)', 1, '[{\"added\": {}}]', 10, 1),
(8, '2020-08-31 13:50:48.322348', '8', 'c', 3, '', 4, 1),
(9, '2020-09-05 05:54:35.809116', '123456789', 'Key object (123456789)', 3, '', 10, 1),
(10, '2020-09-07 10:22:21.120859', '1', 'UserProfile object (1)', 1, '[{\"added\": {}}]', 12, 1),
(11, '2020-09-07 10:22:34.503854', '1', 'UserProfile object (1)', 3, '', 12, 1),
(12, '2020-09-07 10:23:37.310537', '123456789', 'Key object (123456789)', 1, '[{\"added\": {}}]', 10, 1),
(13, '2020-09-07 10:23:55.045996', '2', 'UserProfile object (2)', 1, '[{\"added\": {}}]', 12, 1),
(14, '2020-09-07 10:24:09.943134', '123456789', 'Key object (123456789)', 3, '', 10, 1),
(15, '2020-09-07 10:24:18.515774', '2', 'UserProfile object (2)', 2, '[]', 12, 1),
(16, '2020-09-07 10:41:04.733856', '123456', 'Key object (123456)', 1, '[{\"added\": {}}]', 10, 1),
(17, '2020-09-07 10:41:29.844125', '123456', 'Key object (123456)', 3, '', 10, 1),
(18, '2020-09-07 11:33:19.804751', '123456789', 'Key object (123456789)', 1, '[{\"added\": {}}]', 10, 1),
(19, '2020-09-07 11:41:25.348223', '12345', 'Key object (12345)', 1, '[{\"added\": {}}]', 10, 1),
(20, '2020-09-07 11:59:09.211496', '11', 'c', 3, '', 4, 1),
(21, '2020-09-07 11:59:57.492519', '12', 'c', 3, '', 4, 1),
(22, '2020-09-07 12:25:46.585384', '12345', 'Key object (12345)', 3, '', 10, 1),
(23, '2020-09-07 12:25:54.867791', '1234', 'Key object (1234)', 1, '[{\"added\": {}}]', 10, 1),
(24, '2020-09-07 12:28:04.912372', '15', 'test', 3, '', 4, 1),
(25, '2020-09-07 12:28:41.522223', '16', 'test', 3, '', 4, 1),
(26, '2020-09-07 12:30:36.414671', '17', 'test', 3, '', 4, 1),
(27, '2020-09-07 12:32:24.230553', '18', 'test', 3, '', 4, 1),
(28, '2020-09-07 12:33:25.598968', '19', 'test', 3, '', 4, 1),
(29, '2020-09-07 12:33:43.928230', '1', 'Myuser object (1)', 3, '', 14, 1),
(30, '2020-09-07 12:34:29.249897', '20', 'test', 3, '', 4, 1),
(31, '2020-09-07 12:36:50.096307', '21', 'test', 3, '', 4, 1),
(32, '2020-09-07 12:37:31.557155', '2', 'Myuser object (2)', 3, '', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'accounts', 'key'),
(14, 'accounts', 'myuser'),
(13, 'accounts', 'profile'),
(11, 'accounts', 'user'),
(12, 'accounts', 'userprofile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'file', 'filedoc'),
(7, 'home', 'rp'),
(9, 'officer', 'officer'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-08-09 10:31:12.163935'),
(2, 'auth', '0001_initial', '2020-08-09 10:31:12.756390'),
(3, 'admin', '0001_initial', '2020-08-09 10:31:13.667864'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-08-09 10:31:13.856893'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-09 10:31:13.886910'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-08-09 10:31:14.097465'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-08-09 10:31:14.269421'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-08-09 10:31:14.319532'),
(9, 'auth', '0004_alter_user_username_opts', '2020-08-09 10:31:14.351245'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-08-09 10:31:14.492277'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-08-09 10:31:14.500333'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-09 10:31:14.526636'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-08-09 10:31:14.587851'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-09 10:31:14.633737'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-08-09 10:31:14.690906'),
(16, 'auth', '0011_update_proxy_permissions', '2020-08-09 10:31:14.719167'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-08-09 10:31:14.802308'),
(18, 'home', '0001_initial', '2020-08-09 10:31:14.896555'),
(19, 'sessions', '0001_initial', '2020-08-09 10:31:15.016840'),
(20, 'file', '0001_initial', '2020-08-11 17:45:02.587560'),
(21, 'file', '0002_file_file_name', '2020-08-11 18:02:16.288441'),
(22, 'file', '0003_file_uploaded_at', '2020-08-12 13:08:06.202847'),
(23, 'file', '0004_auto_20200812_2342', '2020-08-12 18:13:05.897423'),
(24, 'officer', '0001_initial', '2020-08-14 04:29:53.894250'),
(25, 'officer', '0002_officer_uploaded_at', '2020-08-14 13:09:25.389415'),
(26, 'accounts', '0001_initial', '2020-08-31 13:29:46.192906'),
(27, 'accounts', '0002_auto_20200831_1929', '2020-08-31 13:59:28.828043'),
(28, 'accounts', '0003_auto_20200905_1122', '2020-09-05 05:52:27.434697'),
(29, 'accounts', '0004_user', '2020-09-06 11:52:31.030541'),
(30, 'accounts', '0005_user_timestamp', '2020-09-06 12:16:47.321718'),
(31, 'accounts', '0006_auto_20200906_1911', '2020-09-06 13:41:11.622715'),
(32, 'accounts', '0002_auto_20200906_2045', '2020-09-06 15:15:20.234839'),
(33, 'accounts', '0003_auto_20200906_2047', '2020-09-06 15:17:31.020747'),
(34, 'accounts', '0004_auto_20200906_2051', '2020-09-06 15:21:26.077225'),
(35, 'accounts', '0005_auto_20200906_2235', '2020-09-06 17:06:06.149259'),
(36, 'accounts', '0006_delete_user', '2020-09-07 03:59:56.968052'),
(37, 'accounts', '0007_auto_20200907_1053', '2020-09-07 05:23:44.617218'),
(38, 'accounts', '0008_userprofile_key_id', '2020-09-07 10:20:57.678045'),
(39, 'accounts', '0009_remove_key_user_acc', '2020-09-07 10:23:13.505987'),
(40, 'accounts', '0002_key_user', '2020-09-07 10:40:10.061733'),
(41, 'accounts', '0002_auto_20200907_1754', '2020-09-07 12:24:18.158921');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0nqonhd5no445s2xjpo33jczd3buyuju', 'e30:1kFFMm:NgphrRmBg5Z5gPvY4mn9LeYL0cIOFySvDcX3Cy-jzSk', '2020-09-21 11:31:20.525709'),
('0yzrtxgbsrdig972kz7vomffcvkxhiwq', 'e30:1kFFNG:sNCR3U5cCnISgOB4-6a9BC9UTbXHXPSRZ_2Q1o2zZwY', '2020-09-21 11:31:50.463743'),
('iftdiaaosa3rhezeqgt5fdoj6alx681l', 'e30:1kFFSv:i79THzKF_E95xnOlDJnKQNzqZUWspUhxp1vbqjHSs84', '2020-09-21 11:37:41.278653'),
('mdgc18tncak1pdv4u7svuknon0ihirfq', 'e30:1kFFMd:URhVvZCdIr-uuEBF3MbUp98mZWQ0Wtwe8aZ-_cEmVjs', '2020-09-21 11:31:11.610993'),
('mgdyygnpclr840s5y1ky5idubxekv2dy', '.eJxVjEEOwiAQAP_C2RCg0BaP3n0D2WUXqRpISnsy_l1JetDrzGReIsC-5bA3XsNC4iy0OP0yhPjg0gXdodyqjLVs64KyJ_KwTV4r8fNytH-DDC337QARvUZtRnSQaDbJGKcYibX1E1sDg_V-ZE6DUZFoxi9FdCpNGpHE-wPz4Di1:1kFGXv:CWUe5YG3KcpRwzJMGjJSh8eDdYqkJQDU-K64kOrNClA', '2020-09-21 12:46:55.673016');

-- --------------------------------------------------------

--
-- Table structure for table `file_filedoc`
--

CREATE TABLE `file_filedoc` (
  `id` int(11) NOT NULL,
  `files` varchar(100) NOT NULL,
  `file_name` varchar(30) DEFAULT NULL,
  `uploaded_at` datetime(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_filedoc`
--

INSERT INTO `file_filedoc` (`id`, `files`, `file_name`, `uploaded_at`) VALUES
(9, '18SS02IT034COMMUNICATION_SKILLS.docx', 'Test', '2020-08-13 16:33:49.235826'),
(10, '18SS02IT018_Cover_Letter_Draft_Ukhdz1W.pdf', 'Test2', '2020-08-13 16:44:48.777342'),
(11, '18SS02IT03431-03-2020_tgNsVZI.pdf', 'Test6', '2020-08-13 16:45:03.534384');

-- --------------------------------------------------------

--
-- Table structure for table `home_rp`
--

CREATE TABLE `home_rp` (
  `id` int(11) NOT NULL,
  `rp_name` varchar(100) NOT NULL,
  `badge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `officer_officer`
--

CREATE TABLE `officer_officer` (
  `id` int(11) NOT NULL,
  `rp_name` varchar(30) NOT NULL,
  `rp_service_number` int(11) NOT NULL,
  `badge` varchar(30) NOT NULL,
  `strip` varchar(30) NOT NULL,
  `rank` varchar(30) NOT NULL,
  `uploaded_at` datetime(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `officer_officer`
--

INSERT INTO `officer_officer` (`id`, `rp_name`, `rp_service_number`, `badge`, `strip`, `rank`, `uploaded_at`) VALUES
(1, 'kaushik', 1, 'Chief of Police', 'special mission command', 'Police sergeant', '2020-08-14 13:09:25.323579'),
(2, 'Munik', 2, 'Chief of Police', 'car patrol', 'Police sergeant', '2020-08-14 13:13:21.572669');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_key`
--
ALTER TABLE `accounts_key`
  ADD PRIMARY KEY (`license_key`);

--
-- Indexes for table `accounts_myuser`
--
ALTER TABLE `accounts_myuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `lkey` (`lkey`);

--
-- Indexes for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `key_id` (`key_id_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `file_filedoc`
--
ALTER TABLE `file_filedoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_rp`
--
ALTER TABLE `home_rp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `officer_officer`
--
ALTER TABLE `officer_officer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_myuser`
--
ALTER TABLE `accounts_myuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `file_filedoc`
--
ALTER TABLE `file_filedoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `home_rp`
--
ALTER TABLE `home_rp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `officer_officer`
--
ALTER TABLE `officer_officer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD CONSTRAINT `accounts_userprofile_user_id_92240672_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
