-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 07:14 PM
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
(40, 'Can view officer', 9, 'view_officer');

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
(1, 'pbkdf2_sha256$216000$GibkXQVQToVi$owbXVNgq21Tf3GroRCGcAU07S7/ZMtsqqMS3OzuauPQ=', '2020-08-14 18:14:40.969077', 1, 'police', '', '', 'police@gmail.com', 1, 1, '2020-08-09 10:32:06.384884'),
(2, 'pbkdf2_sha256$216000$MO2SG3Ofg6YJ$e0Uyl8E7f8bJznTClM3WJZPohb3iStOQveevPNrT7Yc=', '2020-08-15 17:09:27.575099', 0, 'kaushik', 'kaushik', '', 'kaushiktiwari05@gmail.com', 0, 1, '2020-08-09 10:52:38.310430'),
(3, 'pbkdf2_sha256$216000$sA3rzRl65m6h$gCa49ST+J2qylT/fNyRJsJJIkAyjwqh82qQjWRcE+ds=', NULL, 0, 'maunik', 'maunik', '', 'maunik@gmail.com', 0, 1, '2020-08-09 10:57:11.250231'),
(4, 'pbkdf2_sha256$216000$yqiAIBIZFUUt$3ae3qumdzjtJtnBg/zK5BU2eRR+mA+7WyZRVsJf49ew=', NULL, 0, 'abc', 'abc', '', 'abc@gmail.com', 0, 1, '2020-08-10 14:42:01.284428'),
(5, 'pbkdf2_sha256$216000$SIvJIMkS5uGh$PbcIvMqof3tuiJLDrXOq+pXVsrFgQfblaQCcffpm2rw=', NULL, 0, 'kriti', 'kriti', '', 'kriti@gmail.com', 0, 1, '2020-08-10 14:43:13.591356'),
(6, 'pbkdf2_sha256$216000$evs1oNx7qmEU$PATbGM5GvwgeWvGSeuDNk0/2gfuSU3UqWrcmuyX9/LY=', NULL, 0, 'sachin', 'sachin', '', 'sachin1@gmail.com', 0, 1, '2020-08-10 15:26:48.108653');

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
(1, '2020-08-12 14:29:36.247190', '1', 'File object (1)', 1, '[{\"added\": {}}]', 8, 1);

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
(25, 'officer', '0002_officer_uploaded_at', '2020-08-14 13:09:25.389415');

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
('3zzlx1cbnir5rhiepqegkqei6vk4jqdi', '.eJxVjMsOwiAUBf-FtSGAvOLSvd9AuA-kamhS2lXjvytJF7o9M3N2kfK21rR1XtJE4iKMOP1ukPHJbQB65HafJc5tXSaQQ5EH7fI2E7-uh_t3UHOvo9a2eERlUVuKBs6WvAkR2QKCCzEjgyNfmBjiF1kgr1g5ZTAEV7R4fwAFfzi7:1k6zgN:yYNlua-nsGf7seqPY5rrUEWxjKS_-diFLvBlJNAcVNs', '2020-08-29 17:09:27.591283');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
