-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 07:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"studyjam2022\",\"table\":\"subtopics\"},{\"db\":\"studyjam2022\",\"table\":\"topics\"},{\"db\":\"shopculator\",\"table\":\"shopping_lists\"},{\"db\":\"shopculator\",\"table\":\"users\"},{\"db\":\"shopculator\",\"table\":\"list_details\"},{\"db\":\"shopculator\",\"table\":\"personal_access_tokens\"},{\"db\":\"shopculator\",\"table\":\"sessions\"},{\"db\":\"shopculator\",\"table\":\"roles\"},{\"db\":\"shopculator\",\"table\":\"categories\"},{\"db\":\"shopculator\",\"table\":\"products\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'studyjam2022', 'subtopics', '{\"sorted_col\":\"`subtopics`.`id` DESC\"}', '2022-12-07 06:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-07 06:53:30', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `shopculator`
--
CREATE DATABASE IF NOT EXISTS `shopculator` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopculator`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `category_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'C000001', 'Baby & Kids', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:38'),
(2, 'C000002', 'Bakery', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:38'),
(3, 'C000003', 'Beverages', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:38'),
(4, 'C000004', 'Dairy Items', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:38'),
(5, 'C000005', 'Fresh Meat & Seafood', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `list_details`
--

CREATE TABLE `list_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_checked` tinyint(1) NOT NULL,
  `list_index` int(11) UNSIGNED NOT NULL,
  `detail_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_price` decimal(9,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_details`
--

INSERT INTO `list_details` (`id`, `is_checked`, `list_index`, `detail_id`, `list_id`, `product_id`, `current_price`, `quantity`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'D000000000001', 'L00000001', 'P00000031', '9.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(2, 1, 1, 'D000000000002', 'L00000001', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(3, 1, 2, 'D000000000003', 'L00000001', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(4, 1, 3, 'D000000000004', 'L00000001', 'P00000034', '38.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(5, 1, 0, 'D000000000005', 'L00000002', 'P00000094', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:52'),
(6, 1, 1, 'D000000000006', 'L00000002', 'P00000104', '180.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:52'),
(7, 1, 2, 'D000000000007', 'L00000002', 'P00000122', '153.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(8, 1, 3, 'D000000000008', 'L00000002', 'P00000042', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(9, 1, 0, 'D000000000009', 'L00000003', 'P00000135', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(10, 1, 1, 'D000000000010', 'L00000003', 'P00000037', '11.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(11, 1, 2, 'D000000000011', 'L00000003', 'P00000117', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(12, 1, 3, 'D000000000012', 'L00000003', 'P00000132', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(13, 1, 0, 'D000000000013', 'L00000004', 'P00000076', '399.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(14, 1, 1, 'D000000000014', 'L00000004', 'P00000072', '77.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(15, 1, 0, 'D000000000015', 'L00000005', 'P00000056', '89.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(16, 1, 1, 'D000000000016', 'L00000005', 'P00000054', '94.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(17, 1, 2, 'D000000000017', 'L00000005', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(18, 1, 0, 'D000000000018', 'L00000006', 'P00000122', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(19, 1, 1, 'D000000000019', 'L00000006', 'P00000129', '221.10', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(20, 1, 0, 'D000000000020', 'L00000007', 'P00000122', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(21, 1, 1, 'D000000000021', 'L00000007', 'P00000121', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(22, 1, 2, 'D000000000022', 'L00000007', 'P00000135', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(23, 1, 3, 'D000000000023', 'L00000007', 'P00000132', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(24, 1, 0, 'D000000000024', 'L00000008', 'P00000070', '29.50', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(25, 1, 0, 'D000000000025', 'L00000009', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(26, 1, 1, 'D000000000026', 'L00000009', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(27, 1, 2, 'D000000000027', 'L00000009', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(28, 1, 3, 'D000000000028', 'L00000009', 'P00000083', '8.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(29, 1, 0, 'D000000000029', 'L00000010', 'P00000143', '174.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(30, 1, 1, 'D000000000030', 'L00000010', 'P00000150', '249.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(31, 1, 0, 'D000000000031', 'L00000011', 'P00000165', '65.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(32, 1, 1, 'D000000000032', 'L00000011', 'P00000166', '65.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(33, 0, 0, 'D000000000033', 'L00000012', 'P00000173', '759.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(34, 1, 0, 'D000000000034', 'L00000013', 'P00000289', '110.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(35, 0, 1, 'D000000000035', 'L00000013', 'P00000290', '110.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(36, 1, 0, 'D000000000036', 'L00000014', 'P00000258', '183.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(37, 1, 1, 'D000000000037', 'L00000014', 'P00000191', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(38, 1, 2, 'D000000000038', 'L00000014', 'P00000280', '288.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(39, 1, 0, 'D000000000039', 'L00000015', 'P00000261', '38.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(40, 1, 1, 'D000000000040', 'L00000015', 'P00000264', '45.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(41, 1, 2, 'D000000000041', 'L00000015', 'P00000265', '85.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(42, 1, 0, 'D000000000042', 'L00000016', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(43, 1, 1, 'D000000000043', 'L00000016', 'P00000339', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(44, 1, 2, 'D000000000044', 'L00000016', 'P00000338', '190.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(45, 1, 3, 'D000000000045', 'L00000016', 'P00000333', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(46, 1, 0, 'D000000000046', 'L00000017', 'P00000312', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(47, 1, 1, 'D000000000047', 'L00000017', 'P00000316', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(48, 1, 2, 'D000000000048', 'L00000017', 'P00000319', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(49, 1, 0, 'D000000000049', 'L00000018', 'P00000384', '12.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(50, 1, 1, 'D000000000050', 'L00000018', 'P00000387', '12.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(51, 1, 2, 'D000000000051', 'L00000018', 'P00000383', '13.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(52, 1, 0, 'D000000000052', 'L00000019', 'P00000431', '71.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(53, 1, 1, 'D000000000053', 'L00000019', 'P00000433', '127.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(54, 1, 2, 'D000000000054', 'L00000019', 'P00000438', '205.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(55, 1, 0, 'D000000000055', 'L00000020', 'P00000445', '262.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(56, 1, 1, 'D000000000056', 'L00000020', 'P00000447', '318.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(57, 1, 0, 'D000000000057', 'L00000021', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(58, 1, 1, 'D000000000058', 'L00000021', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(59, 0, 2, 'D000000000059', 'L00000021', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(60, 0, 3, 'D000000000060', 'L00000021', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(61, 0, 4, 'D000000000061', 'L00000021', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(62, 0, 5, 'D000000000062', 'L00000021', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(63, 0, 6, 'D000000000063', 'L00000021', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(64, 0, 7, 'D000000000064', 'L00000021', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(65, 0, 8, 'D000000000065', 'L00000021', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(66, 0, 9, 'D000000000066', 'L00000021', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(67, 1, 0, 'D000000000067', 'L00000022', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(68, 0, 1, 'D000000000068', 'L00000022', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(69, 0, 2, 'D000000000069', 'L00000022', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(70, 0, 3, 'D000000000070', 'L00000022', 'P00000404', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(71, 0, 4, 'D000000000071', 'L00000022', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(72, 1, 5, 'D000000000072', 'L00000022', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(73, 0, 6, 'D000000000073', 'L00000022', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(74, 0, 7, 'D000000000074', 'L00000022', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(75, 0, 8, 'D000000000075', 'L00000022', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(76, 1, 9, 'D000000000076', 'L00000022', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(77, 0, 0, 'D000000000077', 'L00000023', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(78, 0, 1, 'D000000000078', 'L00000023', 'P00000396', '50.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(79, 1, 2, 'D000000000079', 'L00000023', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(80, 1, 3, 'D000000000080', 'L00000023', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(81, 0, 4, 'D000000000081', 'L00000023', 'P00000430', '131.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(82, 0, 5, 'D000000000082', 'L00000023', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(83, 0, 6, 'D000000000083', 'L00000023', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(84, 0, 7, 'D000000000084', 'L00000023', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(85, 1, 8, 'D000000000085', 'L00000023', 'P00000348', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(86, 1, 9, 'D000000000086', 'L00000023', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(87, 0, 0, 'D000000000087', 'L00000024', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(88, 0, 1, 'D000000000088', 'L00000024', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(89, 0, 2, 'D000000000089', 'L00000024', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(90, 1, 3, 'D000000000090', 'L00000024', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(91, 1, 4, 'D000000000091', 'L00000024', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(92, 0, 5, 'D000000000092', 'L00000024', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(93, 0, 6, 'D000000000093', 'L00000024', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(94, 0, 7, 'D000000000094', 'L00000024', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(95, 0, 8, 'D000000000095', 'L00000024', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(96, 0, 9, 'D000000000096', 'L00000024', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(97, 0, 0, 'D000000000097', 'L00000025', 'P00000371', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(98, 0, 1, 'D000000000098', 'L00000025', 'P00000372', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(99, 0, 2, 'D000000000099', 'L00000025', 'P00000077', '18.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(100, 0, 3, 'D000000000100', 'L00000025', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(101, 0, 4, 'D000000000101', 'L00000025', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(102, 0, 5, 'D000000000102', 'L00000025', 'P00000074', '40.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(103, 0, 6, 'D000000000103', 'L00000025', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(104, 1, 7, 'D000000000104', 'L00000025', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(105, 1, 8, 'D000000000105', 'L00000025', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(106, 1, 9, 'D000000000106', 'L00000025', 'P00000223', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(107, 1, 0, 'D000000000107', 'L00000026', 'P00000031', '9.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(108, 1, 1, 'D000000000108', 'L00000026', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(109, 1, 2, 'D000000000109', 'L00000026', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(110, 1, 3, 'D000000000110', 'L00000026', 'P00000034', '38.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(111, 1, 0, 'D000000000111', 'L00000027', 'P00000094', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:52'),
(112, 1, 1, 'D000000000112', 'L00000027', 'P00000104', '180.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:52'),
(113, 1, 2, 'D000000000113', 'L00000027', 'P00000122', '153.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(114, 1, 3, 'D000000000114', 'L00000027', 'P00000042', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(115, 1, 0, 'D000000000115', 'L00000028', 'P00000135', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(116, 1, 1, 'D000000000116', 'L00000028', 'P00000037', '11.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(117, 1, 2, 'D000000000117', 'L00000028', 'P00000117', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(118, 1, 3, 'D000000000118', 'L00000028', 'P00000132', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(119, 1, 0, 'D000000000119', 'L00000029', 'P00000076', '399.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(120, 1, 1, 'D000000000120', 'L00000029', 'P00000072', '77.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(121, 1, 0, 'D000000000121', 'L00000030', 'P00000056', '89.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(122, 1, 1, 'D000000000122', 'L00000030', 'P00000054', '94.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(123, 1, 2, 'D000000000123', 'L00000030', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(124, 1, 0, 'D000000000124', 'L00000031', 'P00000122', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(125, 1, 1, 'D000000000125', 'L00000031', 'P00000129', '221.10', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(126, 1, 0, 'D000000000126', 'L00000032', 'P00000122', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(127, 1, 1, 'D000000000127', 'L00000032', 'P00000121', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(128, 1, 2, 'D000000000128', 'L00000032', 'P00000135', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(129, 1, 3, 'D000000000129', 'L00000032', 'P00000132', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(130, 1, 0, 'D000000000130', 'L00000033', 'P00000070', '29.50', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(131, 1, 0, 'D000000000131', 'L00000034', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(132, 1, 1, 'D000000000132', 'L00000034', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(133, 1, 2, 'D000000000133', 'L00000034', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(134, 1, 3, 'D000000000134', 'L00000034', 'P00000083', '8.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(135, 1, 0, 'D000000000135', 'L00000035', 'P00000143', '174.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(136, 1, 1, 'D000000000136', 'L00000035', 'P00000150', '249.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(137, 1, 0, 'D000000000137', 'L00000036', 'P00000165', '65.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(138, 1, 1, 'D000000000138', 'L00000036', 'P00000166', '65.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(139, 0, 0, 'D000000000139', 'L00000037', 'P00000173', '759.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(140, 1, 0, 'D000000000140', 'L00000038', 'P00000289', '110.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(141, 0, 1, 'D000000000141', 'L00000038', 'P00000290', '110.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(142, 1, 0, 'D000000000142', 'L00000039', 'P00000258', '183.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(143, 1, 1, 'D000000000143', 'L00000039', 'P00000191', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(144, 1, 2, 'D000000000144', 'L00000039', 'P00000280', '288.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(145, 1, 0, 'D000000000145', 'L00000040', 'P00000261', '38.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(146, 1, 1, 'D000000000146', 'L00000040', 'P00000264', '45.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(147, 1, 2, 'D000000000147', 'L00000040', 'P00000265', '85.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(148, 1, 0, 'D000000000148', 'L00000041', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(149, 1, 1, 'D000000000149', 'L00000041', 'P00000339', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(150, 1, 2, 'D000000000150', 'L00000041', 'P00000338', '190.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(151, 1, 3, 'D000000000151', 'L00000041', 'P00000333', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(152, 1, 0, 'D000000000152', 'L00000042', 'P00000312', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(153, 1, 1, 'D000000000153', 'L00000042', 'P00000316', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(154, 1, 2, 'D000000000154', 'L00000042', 'P00000319', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(155, 1, 0, 'D000000000155', 'L00000043', 'P00000384', '12.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(156, 1, 1, 'D000000000156', 'L00000043', 'P00000387', '12.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(157, 1, 2, 'D000000000157', 'L00000043', 'P00000383', '13.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(158, 1, 0, 'D000000000158', 'L00000044', 'P00000431', '71.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(159, 1, 1, 'D000000000159', 'L00000044', 'P00000433', '127.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(160, 1, 2, 'D000000000160', 'L00000044', 'P00000438', '205.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(161, 1, 0, 'D000000000161', 'L00000045', 'P00000445', '262.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(162, 1, 1, 'D000000000162', 'L00000045', 'P00000447', '318.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(163, 1, 0, 'D000000000163', 'L00000046', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(164, 1, 1, 'D000000000164', 'L00000046', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(165, 0, 2, 'D000000000165', 'L00000046', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(166, 0, 3, 'D000000000166', 'L00000046', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(167, 0, 4, 'D000000000167', 'L00000046', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(168, 0, 5, 'D000000000168', 'L00000046', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(169, 0, 6, 'D000000000169', 'L00000046', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(170, 0, 7, 'D000000000170', 'L00000046', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(171, 0, 8, 'D000000000171', 'L00000046', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(172, 0, 9, 'D000000000172', 'L00000046', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(173, 1, 0, 'D000000000173', 'L00000047', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(174, 0, 1, 'D000000000174', 'L00000047', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(175, 0, 2, 'D000000000175', 'L00000047', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(176, 0, 3, 'D000000000176', 'L00000047', 'P00000404', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(177, 0, 4, 'D000000000177', 'L00000047', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(178, 1, 5, 'D000000000178', 'L00000047', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(179, 0, 6, 'D000000000179', 'L00000047', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(180, 0, 7, 'D000000000180', 'L00000047', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(181, 0, 8, 'D000000000181', 'L00000047', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(182, 1, 9, 'D000000000182', 'L00000047', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(183, 0, 0, 'D000000000183', 'L00000048', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(184, 0, 1, 'D000000000184', 'L00000048', 'P00000396', '50.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(185, 1, 2, 'D000000000185', 'L00000048', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(186, 1, 3, 'D000000000186', 'L00000048', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(187, 0, 4, 'D000000000187', 'L00000048', 'P00000430', '131.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(188, 0, 5, 'D000000000188', 'L00000048', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(189, 0, 6, 'D000000000189', 'L00000048', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(190, 0, 7, 'D000000000190', 'L00000048', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(191, 1, 8, 'D000000000191', 'L00000048', 'P00000348', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(192, 1, 9, 'D000000000192', 'L00000048', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(193, 0, 0, 'D000000000193', 'L00000049', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(194, 0, 1, 'D000000000194', 'L00000049', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(195, 0, 2, 'D000000000195', 'L00000049', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(196, 1, 3, 'D000000000196', 'L00000049', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(197, 1, 4, 'D000000000197', 'L00000049', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(198, 0, 5, 'D000000000198', 'L00000049', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(199, 0, 6, 'D000000000199', 'L00000049', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(200, 0, 7, 'D000000000200', 'L00000049', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(201, 0, 8, 'D000000000201', 'L00000049', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(202, 0, 9, 'D000000000202', 'L00000049', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(203, 0, 0, 'D000000000203', 'L00000050', 'P00000371', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(204, 0, 1, 'D000000000204', 'L00000050', 'P00000372', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(205, 0, 2, 'D000000000205', 'L00000050', 'P00000077', '18.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(206, 0, 3, 'D000000000206', 'L00000050', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(207, 0, 4, 'D000000000207', 'L00000050', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(208, 0, 5, 'D000000000208', 'L00000050', 'P00000074', '40.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(209, 0, 6, 'D000000000209', 'L00000050', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(210, 1, 7, 'D000000000210', 'L00000050', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(211, 1, 8, 'D000000000211', 'L00000050', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(212, 1, 9, 'D000000000212', 'L00000050', 'P00000223', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(213, 1, 0, 'D000000000213', 'L00000051', 'P00000010', '264.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(214, 1, 1, 'D000000000214', 'L00000051', 'P00000009', '296.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(215, 1, 2, 'D000000000215', 'L00000051', 'P00000008', '324.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(216, 1, 0, 'D000000000216', 'L00000052', 'P00000011', '88.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(217, 1, 1, 'D000000000217', 'L00000052', 'P00000012', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(218, 1, 2, 'D000000000218', 'L00000052', 'P00000013', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(219, 1, 0, 'D000000000219', 'L00000053', 'P00000027', '1194.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(220, 1, 0, 'D000000000220', 'L00000054', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(221, 1, 1, 'D000000000221', 'L00000054', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(222, 1, 2, 'D000000000222', 'L00000054', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(223, 1, 3, 'D000000000223', 'L00000054', 'P00000036', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(224, 1, 4, 'D000000000224', 'L00000054', 'P00000038', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(225, 1, 0, 'D000000000225', 'L00000055', 'P00000043', '67.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(226, 1, 1, 'D000000000226', 'L00000055', 'P00000048', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(227, 1, 2, 'D000000000227', 'L00000056', 'P00000044', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(228, 1, 0, 'D000000000228', 'L00000056', 'P00000052', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(229, 1, 1, 'D000000000229', 'L00000056', 'P00000060', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(230, 1, 2, 'D000000000230', 'L00000056', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(231, 1, 0, 'D000000000231', 'L00000057', 'P00000070', '29.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(232, 1, 1, 'D000000000232', 'L00000057', 'P00000369', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(233, 1, 0, 'D000000000233', 'L00000058', 'P00000078', '29.95', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(234, 1, 1, 'D000000000234', 'L00000058', 'P00000079', '50.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(235, 1, 2, 'D000000000235', 'L00000058', 'P00000072', '77.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(236, 1, 0, 'D000000000236', 'L00000059', 'P00000090', '64.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(237, 1, 1, 'D000000000237', 'L00000059', 'P00000084', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(238, 1, 2, 'D000000000238', 'L00000059', 'P00000088', '15.40', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(239, 1, 0, 'D000000000239', 'L00000060', 'P00000120', '91.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(240, 1, 1, 'D000000000240', 'L00000060', 'P00000117', '71.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(241, 1, 0, 'D000000000241', 'L00000061', 'P00000280', '288.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(242, 1, 1, 'D000000000242', 'L00000061', 'P00000277', '325.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(243, 1, 0, 'D000000000243', 'L00000062', 'P00000249', '43.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(244, 1, 1, 'D000000000244', 'L00000062', 'P00000250', '97.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(245, 1, 2, 'D000000000245', 'L00000062', 'P00000248', '105.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(246, 1, 0, 'D000000000246', 'L00000063', 'P00000197', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(247, 1, 1, 'D000000000247', 'L00000063', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(248, 1, 2, 'D000000000248', 'L00000063', 'P00000195', '56.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(249, 1, 0, 'D000000000249', 'L00000064', 'P00000252', '114.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(250, 1, 1, 'D000000000250', 'L00000064', 'P00000258', '183.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(251, 1, 2, 'D000000000251', 'L00000064', 'P00000256', '188.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(252, 1, 0, 'D000000000252', 'L00000065', 'P00000285', '219.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(253, 1, 1, 'D000000000253', 'L00000065', 'P00000286', '165.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(254, 1, 0, 'D000000000254', 'L00000066', 'P00000446', '168.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:06'),
(255, 1, 1, 'D000000000255', 'L00000066', 'P00000449', '235.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:06'),
(256, 1, 0, 'D000000000256', 'L00000067', 'P00000338', '190.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(257, 1, 1, 'D000000000257', 'L00000067', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(258, 1, 2, 'D000000000258', 'L00000067', 'P00000332', '64.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(259, 1, 0, 'D000000000259', 'L00000068', 'P00000371', '8.35', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(260, 1, 1, 'D000000000260', 'L00000068', 'P00000372', '8.35', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(261, 1, 2, 'D000000000261', 'L00000068', 'P00000379', '81.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:09'),
(262, 1, 0, 'D000000000262', 'L00000069', 'P00000314', '56.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(263, 1, 1, 'D000000000263', 'L00000069', 'P00000318', '56.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(264, 1, 0, 'D000000000264', 'L00000070', 'P00000358', '51.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(265, 1, 1, 'D000000000265', 'L00000070', 'P00000360', '68.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(266, 1, 2, 'D000000000266', 'L00000070', 'P00000355', '68.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(267, 0, 0, 'D000000000267', 'L00000071', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(268, 0, 1, 'D000000000268', 'L00000071', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(269, 0, 2, 'D000000000269', 'L00000071', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(270, 0, 3, 'D000000000270', 'L00000071', 'P00000037', '11.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(271, 0, 4, 'D000000000271', 'L00000071', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(272, 0, 5, 'D000000000272', 'L00000071', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(273, 0, 6, 'D000000000273', 'L00000071', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(274, 0, 7, 'D000000000274', 'L00000071', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(275, 1, 8, 'D000000000275', 'L00000071', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(276, 1, 9, 'D000000000276', 'L00000071', 'P00000040', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(277, 1, 0, 'D000000000277', 'L00000072', 'P00000358', '51.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(278, 0, 1, 'D000000000278', 'L00000072', 'P00000051', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(279, 1, 2, 'D000000000279', 'L00000072', 'P00000052', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(280, 1, 3, 'D000000000280', 'L00000072', 'P00000055', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(281, 1, 4, 'D000000000281', 'L00000072', 'P00000058', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(282, 1, 5, 'D000000000282', 'L00000072', 'P00000057', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(283, 0, 6, 'D000000000283', 'L00000072', 'P00000355', '68.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(284, 1, 7, 'D000000000284', 'L00000072', 'P00000360', '68.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(285, 1, 8, 'D000000000285', 'L00000072', 'P00000059', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(286, 0, 9, 'D000000000286', 'L00000072', 'P00000060', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(287, 1, 0, 'D000000000287', 'L00000073', 'P00000249', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(288, 1, 1, 'D000000000288', 'L00000073', 'P00000396', '50.25', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(289, 0, 2, 'D000000000289', 'L00000073', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(290, 0, 3, 'D000000000290', 'L00000073', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(291, 0, 4, 'D000000000291', 'L00000073', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(292, 0, 5, 'D000000000292', 'L00000073', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(293, 0, 6, 'D000000000293', 'L00000073', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(294, 1, 7, 'D000000000294', 'L00000073', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(295, 0, 8, 'D000000000295', 'L00000073', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(296, 0, 9, 'D000000000296', 'L00000073', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(297, 1, 0, 'D000000000297', 'L00000074', 'P00000089', '13.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(298, 1, 1, 'D000000000298', 'L00000074', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(299, 1, 2, 'D000000000299', 'L00000074', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(300, 1, 3, 'D000000000300', 'L00000074', 'P00000385', '14.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(301, 0, 4, 'D000000000301', 'L00000074', 'P00000387', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(302, 0, 5, 'D000000000302', 'L00000074', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(303, 1, 6, 'D000000000303', 'L00000074', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(304, 0, 7, 'D000000000304', 'L00000074', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(305, 0, 8, 'D000000000305', 'L00000074', 'P00000088', '15.40', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(306, 1, 9, 'D000000000306', 'L00000074', 'P00000087', '16.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(307, 0, 0, 'D000000000307', 'L00000075', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(308, 0, 1, 'D000000000308', 'L00000075', 'P00000037', '11.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(309, 0, 2, 'D000000000309', 'L00000075', 'P00000372', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(310, 0, 3, 'D000000000310', 'L00000075', 'P00000371', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(311, 1, 4, 'D000000000311', 'L00000075', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(312, 1, 5, 'D000000000312', 'L00000075', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(313, 0, 6, 'D000000000313', 'L00000075', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(314, 0, 7, 'D000000000314', 'L00000075', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(315, 1, 8, 'D000000000315', 'L00000075', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(316, 1, 9, 'D000000000316', 'L00000075', 'P00000045', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(317, 1, 0, 'D000000000317', 'L00000076', 'P00000010', '264.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(318, 1, 1, 'D000000000318', 'L00000076', 'P00000009', '296.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(319, 1, 2, 'D000000000319', 'L00000076', 'P00000008', '324.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(320, 1, 0, 'D000000000320', 'L00000077', 'P00000011', '88.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(321, 1, 1, 'D000000000321', 'L00000077', 'P00000012', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(322, 1, 2, 'D000000000322', 'L00000077', 'P00000013', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(323, 1, 0, 'D000000000323', 'L00000078', 'P00000027', '1194.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(324, 1, 0, 'D000000000324', 'L00000079', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(325, 1, 1, 'D000000000325', 'L00000079', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(326, 1, 2, 'D000000000326', 'L00000079', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(327, 1, 3, 'D000000000327', 'L00000079', 'P00000036', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(328, 1, 4, 'D000000000328', 'L00000079', 'P00000038', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(329, 1, 0, 'D000000000329', 'L00000080', 'P00000043', '67.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(330, 1, 1, 'D000000000330', 'L00000080', 'P00000048', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(331, 1, 2, 'D000000000331', 'L00000081', 'P00000044', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(332, 1, 0, 'D000000000332', 'L00000081', 'P00000052', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(333, 1, 1, 'D000000000333', 'L00000081', 'P00000060', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(334, 1, 2, 'D000000000334', 'L00000081', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(335, 1, 0, 'D000000000335', 'L00000082', 'P00000070', '29.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(336, 1, 1, 'D000000000336', 'L00000082', 'P00000369', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(337, 1, 0, 'D000000000337', 'L00000083', 'P00000078', '29.95', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(338, 1, 1, 'D000000000338', 'L00000083', 'P00000079', '50.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(339, 1, 2, 'D000000000339', 'L00000083', 'P00000072', '77.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(340, 1, 0, 'D000000000340', 'L00000084', 'P00000090', '64.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(341, 1, 1, 'D000000000341', 'L00000084', 'P00000084', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(342, 1, 2, 'D000000000342', 'L00000084', 'P00000088', '15.40', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(343, 1, 0, 'D000000000343', 'L00000085', 'P00000120', '91.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(344, 1, 1, 'D000000000344', 'L00000085', 'P00000117', '71.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(345, 1, 0, 'D000000000345', 'L00000086', 'P00000280', '288.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(346, 1, 1, 'D000000000346', 'L00000086', 'P00000277', '325.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(347, 1, 0, 'D000000000347', 'L00000087', 'P00000249', '43.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(348, 1, 1, 'D000000000348', 'L00000087', 'P00000250', '97.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(349, 1, 2, 'D000000000349', 'L00000087', 'P00000248', '105.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(350, 1, 0, 'D000000000350', 'L00000088', 'P00000197', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(351, 1, 1, 'D000000000351', 'L00000088', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(352, 1, 2, 'D000000000352', 'L00000088', 'P00000195', '56.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(353, 1, 0, 'D000000000353', 'L00000089', 'P00000252', '114.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(354, 1, 1, 'D000000000354', 'L00000089', 'P00000258', '183.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(355, 1, 2, 'D000000000355', 'L00000089', 'P00000256', '188.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(356, 1, 0, 'D000000000356', 'L00000090', 'P00000285', '219.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(357, 1, 1, 'D000000000357', 'L00000090', 'P00000286', '165.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(358, 1, 0, 'D000000000358', 'L00000091', 'P00000446', '168.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:06'),
(359, 1, 1, 'D000000000359', 'L00000091', 'P00000449', '235.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:06'),
(360, 1, 0, 'D000000000360', 'L00000092', 'P00000338', '190.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(361, 1, 1, 'D000000000361', 'L00000092', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(362, 1, 2, 'D000000000362', 'L00000092', 'P00000332', '64.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(363, 1, 0, 'D000000000363', 'L00000093', 'P00000371', '8.35', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(364, 1, 1, 'D000000000364', 'L00000093', 'P00000372', '8.35', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(365, 1, 2, 'D000000000365', 'L00000093', 'P00000379', '81.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:09'),
(366, 1, 0, 'D000000000366', 'L00000094', 'P00000314', '56.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(367, 1, 1, 'D000000000367', 'L00000094', 'P00000318', '56.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(368, 1, 0, 'D000000000368', 'L00000095', 'P00000358', '51.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(369, 1, 1, 'D000000000369', 'L00000095', 'P00000360', '68.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(370, 1, 2, 'D000000000370', 'L00000095', 'P00000355', '68.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(371, 0, 0, 'D000000000371', 'L00000096', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(372, 0, 1, 'D000000000372', 'L00000096', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(373, 0, 2, 'D000000000373', 'L00000096', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(374, 0, 3, 'D000000000374', 'L00000096', 'P00000037', '11.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(375, 0, 4, 'D000000000375', 'L00000096', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(376, 0, 5, 'D000000000376', 'L00000096', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(377, 0, 6, 'D000000000377', 'L00000096', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(378, 0, 7, 'D000000000378', 'L00000096', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(379, 1, 8, 'D000000000379', 'L00000096', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(380, 1, 9, 'D000000000380', 'L00000096', 'P00000040', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(381, 1, 0, 'D000000000381', 'L00000097', 'P00000358', '51.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(382, 0, 1, 'D000000000382', 'L00000097', 'P00000051', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(383, 1, 2, 'D000000000383', 'L00000097', 'P00000052', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(384, 1, 3, 'D000000000384', 'L00000097', 'P00000055', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(385, 1, 4, 'D000000000385', 'L00000097', 'P00000058', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(386, 1, 5, 'D000000000386', 'L00000097', 'P00000057', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(387, 0, 6, 'D000000000387', 'L00000097', 'P00000355', '68.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(388, 1, 7, 'D000000000388', 'L00000097', 'P00000360', '68.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(389, 1, 8, 'D000000000389', 'L00000097', 'P00000059', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(390, 0, 9, 'D000000000390', 'L00000097', 'P00000060', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(391, 1, 0, 'D000000000391', 'L00000098', 'P00000249', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(392, 1, 1, 'D000000000392', 'L00000098', 'P00000396', '50.25', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(393, 0, 2, 'D000000000393', 'L00000098', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(394, 0, 3, 'D000000000394', 'L00000098', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(395, 0, 4, 'D000000000395', 'L00000098', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(396, 0, 5, 'D000000000396', 'L00000098', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(397, 0, 6, 'D000000000397', 'L00000098', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(398, 1, 7, 'D000000000398', 'L00000098', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(399, 0, 8, 'D000000000399', 'L00000098', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(400, 0, 9, 'D000000000400', 'L00000098', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(401, 1, 0, 'D000000000401', 'L00000099', 'P00000089', '13.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(402, 1, 1, 'D000000000402', 'L00000099', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(403, 1, 2, 'D000000000403', 'L00000099', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(404, 1, 3, 'D000000000404', 'L00000099', 'P00000385', '14.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(405, 0, 4, 'D000000000405', 'L00000099', 'P00000387', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(406, 0, 5, 'D000000000406', 'L00000099', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(407, 1, 6, 'D000000000407', 'L00000099', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(408, 0, 7, 'D000000000408', 'L00000099', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(409, 0, 8, 'D000000000409', 'L00000099', 'P00000088', '15.40', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(410, 1, 9, 'D000000000410', 'L00000099', 'P00000087', '16.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(411, 0, 0, 'D000000000411', 'L00000100', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(412, 0, 1, 'D000000000412', 'L00000100', 'P00000037', '11.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(413, 0, 2, 'D000000000413', 'L00000100', 'P00000372', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(414, 0, 3, 'D000000000414', 'L00000100', 'P00000371', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(415, 1, 4, 'D000000000415', 'L00000100', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(416, 1, 5, 'D000000000416', 'L00000100', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(417, 0, 6, 'D000000000417', 'L00000100', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(418, 0, 7, 'D000000000418', 'L00000100', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(419, 1, 8, 'D000000000419', 'L00000100', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(420, 1, 9, 'D000000000420', 'L00000100', 'P00000045', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(421, 1, 0, 'D000000000421', 'L00000101', 'P00000005', '46.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(422, 1, 1, 'D000000000422', 'L00000101', 'P00000004', '56.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(423, 1, 2, 'D000000000423', 'L00000101', 'P00000003', '72.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(424, 1, 0, 'D000000000424', 'L00000102', 'P00000015', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(425, 1, 1, 'D000000000425', 'L00000102', 'P00000016', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(426, 1, 2, 'D000000000426', 'L00000102', 'P00000014', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(427, 1, 3, 'D000000000427', 'L00000102', 'P00000017', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(428, 0, 0, 'D000000000428', 'L00000103', 'P00000027', '1194.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(429, 1, 0, 'D000000000429', 'L00000104', 'P00000031', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(430, 1, 1, 'D000000000430', 'L00000104', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(431, 1, 2, 'D000000000431', 'L00000104', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(432, 1, 0, 'D000000000432', 'L00000105', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(433, 1, 1, 'D000000000433', 'L00000105', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44');
INSERT INTO `list_details` (`id`, `is_checked`, `list_index`, `detail_id`, `list_id`, `product_id`, `current_price`, `quantity`, `is_deleted`, `created_at`, `updated_at`) VALUES
(434, 1, 2, 'D000000000434', 'L00000105', 'P00000045', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(435, 1, 0, 'D000000000435', 'L00000106', 'P00000058', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(436, 1, 1, 'D000000000436', 'L00000106', 'P00000057', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(437, 1, 2, 'D000000000437', 'L00000106', 'P00000055', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(438, 1, 3, 'D000000000438', 'L00000106', 'P00000059', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(439, 1, 0, 'D000000000439', 'L00000107', 'P00000066', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(440, 1, 1, 'D000000000440', 'L00000107', 'P00000067', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(441, 1, 0, 'D000000000441', 'L00000108', 'P00000073', '104.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(442, 1, 1, 'D000000000442', 'L00000108', 'P00000074', '40.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(443, 1, 2, 'D000000000443', 'L00000108', 'P00000077', '18.50', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(444, 1, 0, 'D000000000444', 'L00000109', 'P00000085', '85.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(445, 1, 0, 'D000000000445', 'L00000110', 'P00000099', '159.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(446, 1, 1, 'D000000000446', 'L00000110', 'P00000098', '159.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(447, 1, 0, 'D000000000447', 'L00000111', 'P00000155', '118.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(448, 1, 1, 'D000000000448', 'L00000111', 'P00000151', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(449, 1, 0, 'D000000000449', 'L00000112', 'P00000163', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(450, 1, 1, 'D000000000450', 'L00000112', 'P00000164', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(451, 1, 2, 'D000000000451', 'L00000112', 'P00000161', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(452, 1, 3, 'D000000000452', 'L00000112', 'P00000162', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(453, 1, 0, 'D000000000453', 'L00000113', 'P00000171', '745.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(454, 1, 0, 'D000000000454', 'L00000114', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(455, 1, 1, 'D000000000455', 'L00000114', 'P00000189', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(456, 1, 2, 'D000000000456', 'L00000114', 'P00000190', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(457, 1, 0, 'D000000000457', 'L00000115', 'P00000192', '79.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(458, 1, 1, 'D000000000458', 'L00000115', 'P00000191', '89.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(459, 1, 0, 'D000000000459', 'L00000116', 'P00000207', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(460, 1, 1, 'D000000000460', 'L00000116', 'P00000203', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(461, 1, 2, 'D000000000461', 'L00000116', 'P00000204', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(462, 1, 3, 'D000000000462', 'L00000116', 'P00000210', '84.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(463, 1, 0, 'D000000000463', 'L00000117', 'P00000216', '35.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(464, 1, 1, 'D000000000464', 'L00000117', 'P00000217', '37.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(465, 1, 0, 'D000000000465', 'L00000118', 'P00000221', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(466, 1, 1, 'D000000000466', 'L00000118', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(467, 1, 0, 'D000000000467', 'L00000119', 'P00000244', '166.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(468, 1, 1, 'D000000000468', 'L00000119', 'P00000245', '166.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(469, 1, 2, 'D000000000469', 'L00000119', 'P00000249', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(470, 1, 0, 'D000000000470', 'L00000120', 'P00000261', '38.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(471, 1, 1, 'D000000000471', 'L00000120', 'P00000264', '45.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(472, 0, 0, 'D000000000472', 'L00000121', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(473, 1, 1, 'D000000000473', 'L00000121', 'P00000238', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(474, 0, 2, 'D000000000474', 'L00000121', 'P00000005', '46.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(475, 0, 3, 'D000000000475', 'L00000121', 'P00000420', '47.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(476, 0, 4, 'D000000000476', 'L00000121', 'P00000047', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(477, 1, 5, 'D000000000477', 'L00000121', 'P00000197', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(478, 0, 6, 'D000000000478', 'L00000121', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(479, 1, 7, 'D000000000479', 'L00000121', 'P00000084', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(480, 1, 8, 'D000000000480', 'L00000121', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(481, 1, 9, 'D000000000481', 'L00000121', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(482, 0, 0, 'D000000000482', 'L00000122', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(483, 0, 1, 'D000000000483', 'L00000122', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(484, 0, 2, 'D000000000484', 'L00000122', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(485, 0, 3, 'D000000000485', 'L00000122', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(486, 1, 4, 'D000000000486', 'L00000122', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(487, 0, 5, 'D000000000487', 'L00000122', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(488, 1, 6, 'D000000000488', 'L00000122', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(489, 0, 7, 'D000000000489', 'L00000122', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(490, 0, 8, 'D000000000490', 'L00000122', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(491, 1, 9, 'D000000000491', 'L00000122', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(492, 0, 0, 'D000000000492', 'L00000123', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(493, 0, 1, 'D000000000493', 'L00000123', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(494, 0, 2, 'D000000000494', 'L00000123', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(495, 1, 3, 'D000000000495', 'L00000123', 'P00000216', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(496, 0, 4, 'D000000000496', 'L00000123', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(497, 0, 5, 'D000000000497', 'L00000123', 'P00000239', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(498, 1, 6, 'D000000000498', 'L00000123', 'P00000217', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(499, 1, 7, 'D000000000499', 'L00000123', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(500, 0, 8, 'D000000000500', 'L00000123', 'P00000087', '16.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(501, 0, 9, 'D000000000501', 'L00000123', 'P00000419', '16.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(502, 0, 0, 'D000000000502', 'L00000124', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(503, 0, 1, 'D000000000503', 'L00000124', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(504, 0, 2, 'D000000000504', 'L00000124', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(505, 0, 3, 'D000000000505', 'L00000124', 'P00000404', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(506, 0, 4, 'D000000000506', 'L00000124', 'P00000106', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(507, 0, 5, 'D000000000507', 'L00000124', 'P00000405', '73.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(508, 1, 6, 'D000000000508', 'L00000124', 'P00000103', '69.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(509, 0, 7, 'D000000000509', 'L00000124', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(510, 1, 8, 'D000000000510', 'L00000124', 'P00000255', '204.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(511, 1, 9, 'D000000000511', 'L00000124', 'P00000260', '210.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(512, 1, 0, 'D000000000512', 'L00000125', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(513, 0, 1, 'D000000000513', 'L00000125', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(514, 0, 2, 'D000000000514', 'L00000125', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(515, 0, 3, 'D000000000515', 'L00000125', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(516, 0, 4, 'D000000000516', 'L00000125', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(517, 1, 5, 'D000000000517', 'L00000125', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(518, 0, 6, 'D000000000518', 'L00000125', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(519, 0, 7, 'D000000000519', 'L00000125', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(520, 1, 8, 'D000000000520', 'L00000125', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(521, 1, 9, 'D000000000521', 'L00000125', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(522, 1, 0, 'D000000000522', 'L00000126', 'P00000005', '46.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(523, 1, 1, 'D000000000523', 'L00000126', 'P00000004', '56.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(524, 1, 2, 'D000000000524', 'L00000126', 'P00000003', '72.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(525, 1, 0, 'D000000000525', 'L00000127', 'P00000015', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(526, 1, 1, 'D000000000526', 'L00000127', 'P00000016', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(527, 1, 2, 'D000000000527', 'L00000127', 'P00000014', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(528, 1, 3, 'D000000000528', 'L00000127', 'P00000017', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(529, 0, 0, 'D000000000529', 'L00000128', 'P00000027', '1194.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(530, 1, 0, 'D000000000530', 'L00000129', 'P00000031', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(531, 1, 1, 'D000000000531', 'L00000129', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(532, 1, 2, 'D000000000532', 'L00000129', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(533, 1, 0, 'D000000000533', 'L00000130', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(534, 1, 1, 'D000000000534', 'L00000130', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(535, 1, 2, 'D000000000535', 'L00000130', 'P00000045', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(536, 1, 0, 'D000000000536', 'L00000131', 'P00000058', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(537, 1, 1, 'D000000000537', 'L00000131', 'P00000057', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(538, 1, 2, 'D000000000538', 'L00000131', 'P00000055', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(539, 1, 3, 'D000000000539', 'L00000131', 'P00000059', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(540, 1, 0, 'D000000000540', 'L00000132', 'P00000066', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(541, 1, 1, 'D000000000541', 'L00000132', 'P00000067', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(542, 1, 0, 'D000000000542', 'L00000133', 'P00000073', '104.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(543, 1, 1, 'D000000000543', 'L00000133', 'P00000074', '40.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(544, 1, 2, 'D000000000544', 'L00000133', 'P00000077', '18.50', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(545, 1, 0, 'D000000000545', 'L00000134', 'P00000085', '85.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(546, 1, 0, 'D000000000546', 'L00000135', 'P00000099', '159.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(547, 1, 1, 'D000000000547', 'L00000135', 'P00000098', '159.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(548, 1, 0, 'D000000000548', 'L00000136', 'P00000155', '118.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(549, 1, 1, 'D000000000549', 'L00000136', 'P00000151', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(550, 1, 0, 'D000000000550', 'L00000137', 'P00000163', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(551, 1, 1, 'D000000000551', 'L00000137', 'P00000164', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(552, 1, 2, 'D000000000552', 'L00000137', 'P00000161', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(553, 1, 3, 'D000000000553', 'L00000137', 'P00000162', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(554, 1, 0, 'D000000000554', 'L00000138', 'P00000171', '745.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(555, 1, 0, 'D000000000555', 'L00000139', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(556, 1, 1, 'D000000000556', 'L00000139', 'P00000189', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(557, 1, 2, 'D000000000557', 'L00000139', 'P00000190', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(558, 1, 0, 'D000000000558', 'L00000140', 'P00000192', '79.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(559, 1, 1, 'D000000000559', 'L00000140', 'P00000191', '89.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(560, 1, 0, 'D000000000560', 'L00000141', 'P00000207', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(561, 1, 1, 'D000000000561', 'L00000141', 'P00000203', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(562, 1, 2, 'D000000000562', 'L00000141', 'P00000204', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(563, 1, 3, 'D000000000563', 'L00000141', 'P00000210', '84.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(564, 1, 0, 'D000000000564', 'L00000142', 'P00000216', '35.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(565, 1, 1, 'D000000000565', 'L00000142', 'P00000217', '37.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(566, 1, 0, 'D000000000566', 'L00000143', 'P00000221', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(567, 1, 1, 'D000000000567', 'L00000143', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(568, 1, 0, 'D000000000568', 'L00000144', 'P00000244', '166.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(569, 1, 1, 'D000000000569', 'L00000144', 'P00000245', '166.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(570, 1, 2, 'D000000000570', 'L00000144', 'P00000249', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(571, 1, 0, 'D000000000571', 'L00000145', 'P00000261', '38.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(572, 1, 1, 'D000000000572', 'L00000145', 'P00000264', '45.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(573, 0, 0, 'D000000000573', 'L00000146', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(574, 1, 1, 'D000000000574', 'L00000146', 'P00000238', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(575, 0, 2, 'D000000000575', 'L00000146', 'P00000005', '46.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(576, 0, 3, 'D000000000576', 'L00000146', 'P00000420', '47.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(577, 0, 4, 'D000000000577', 'L00000146', 'P00000047', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(578, 1, 5, 'D000000000578', 'L00000146', 'P00000197', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(579, 0, 6, 'D000000000579', 'L00000146', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(580, 1, 7, 'D000000000580', 'L00000146', 'P00000084', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(581, 1, 8, 'D000000000581', 'L00000146', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(582, 1, 9, 'D000000000582', 'L00000146', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(583, 0, 0, 'D000000000583', 'L00000147', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(584, 0, 1, 'D000000000584', 'L00000147', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(585, 0, 2, 'D000000000585', 'L00000147', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(586, 0, 3, 'D000000000586', 'L00000147', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(587, 1, 4, 'D000000000587', 'L00000147', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(588, 0, 5, 'D000000000588', 'L00000147', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(589, 1, 6, 'D000000000589', 'L00000147', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(590, 0, 7, 'D000000000590', 'L00000147', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(591, 0, 8, 'D000000000591', 'L00000147', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(592, 1, 9, 'D000000000592', 'L00000147', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(593, 0, 0, 'D000000000593', 'L00000148', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(594, 0, 1, 'D000000000594', 'L00000148', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(595, 0, 2, 'D000000000595', 'L00000148', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(596, 1, 3, 'D000000000596', 'L00000148', 'P00000216', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(597, 0, 4, 'D000000000597', 'L00000148', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(598, 0, 5, 'D000000000598', 'L00000148', 'P00000239', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(599, 1, 6, 'D000000000599', 'L00000148', 'P00000217', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(600, 1, 7, 'D000000000600', 'L00000148', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(601, 0, 8, 'D000000000601', 'L00000148', 'P00000087', '16.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(602, 0, 9, 'D000000000602', 'L00000148', 'P00000419', '16.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(603, 0, 0, 'D000000000603', 'L00000149', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(604, 0, 1, 'D000000000604', 'L00000149', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(605, 0, 2, 'D000000000605', 'L00000149', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(606, 0, 3, 'D000000000606', 'L00000149', 'P00000404', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(607, 0, 4, 'D000000000607', 'L00000149', 'P00000106', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(608, 0, 5, 'D000000000608', 'L00000149', 'P00000405', '73.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(609, 1, 6, 'D000000000609', 'L00000149', 'P00000103', '69.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(610, 0, 7, 'D000000000610', 'L00000149', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(611, 1, 8, 'D000000000611', 'L00000149', 'P00000255', '204.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(612, 1, 9, 'D000000000612', 'L00000149', 'P00000260', '210.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(613, 1, 0, 'D000000000613', 'L00000150', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(614, 0, 1, 'D000000000614', 'L00000150', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(615, 0, 2, 'D000000000615', 'L00000150', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(616, 0, 3, 'D000000000616', 'L00000150', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(617, 0, 4, 'D000000000617', 'L00000150', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(618, 1, 5, 'D000000000618', 'L00000150', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(619, 0, 6, 'D000000000619', 'L00000150', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(620, 0, 7, 'D000000000620', 'L00000150', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(621, 1, 8, 'D000000000621', 'L00000150', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(622, 1, 9, 'D000000000622', 'L00000150', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(623, 1, 0, 'D000000000623', 'L00000151', 'P00000008', '324.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(624, 1, 1, 'D000000000624', 'L00000151', 'P00000004', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(625, 1, 0, 'D000000000625', 'L00000152', 'P00000018', '75.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(626, 1, 1, 'D000000000626', 'L00000152', 'P00000019', '75.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(627, 0, 0, 'D000000000627', 'L00000153', 'P00000025', '2117.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(628, 1, 0, 'D000000000628', 'L00000154', 'P00000034', '38.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(629, 1, 1, 'D000000000629', 'L00000154', 'P00000039', '41.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(630, 1, 2, 'D000000000630', 'L00000154', 'P00000037', '11.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(631, 1, 0, 'D000000000631', 'L00000155', 'P00000049', '21.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(632, 1, 1, 'D000000000632', 'L00000155', 'P00000048', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(633, 1, 0, 'D000000000633', 'L00000156', 'P00000055', '66.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(634, 1, 1, 'D000000000634', 'L00000156', 'P00000057', '69.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(635, 1, 2, 'D000000000635', 'L00000156', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(636, 1, 0, 'D000000000636', 'L00000157', 'P00000061', '62.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(637, 1, 1, 'D000000000637', 'L00000157', 'P00000063', '32.95', 6, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(638, 1, 0, 'D000000000638', 'L00000158', 'P00000077', '18.50', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(639, 1, 1, 'D000000000639', 'L00000158', 'P00000078', '29.95', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(640, 1, 2, 'D000000000640', 'L00000158', 'P00000079', '50.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(641, 1, 0, 'D000000000641', 'L00000159', 'P00000090', '64.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(642, 1, 0, 'D000000000642', 'L00000160', 'P00000096', '149.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(643, 1, 0, 'D000000000643', 'L00000161', 'P00000402', '94.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(644, 1, 1, 'D000000000644', 'L00000161', 'P00000405', '73.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(645, 1, 2, 'D000000000645', 'L00000161', 'P00000410', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(646, 1, 0, 'D000000000646', 'L00000162', 'P00000419', '16.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(647, 1, 1, 'D000000000647', 'L00000162', 'P00000415', '29.75', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(648, 1, 2, 'D000000000648', 'L00000162', 'P00000418', '38.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(649, 1, 0, 'D000000000649', 'L00000163', 'P00000430', '131.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(650, 1, 1, 'D000000000650', 'L00000163', 'P00000425', '167.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(651, 1, 2, 'D000000000651', 'L00000163', 'P00000426', '189.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(652, 1, 0, 'D000000000652', 'L00000164', 'P00000431', '71.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(653, 1, 1, 'D000000000653', 'L00000164', 'P00000432', '165.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(654, 1, 2, 'D000000000654', 'L00000164', 'P00000433', '127.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(655, 1, 0, 'D000000000655', 'L00000165', 'P00000314', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(656, 1, 1, 'D000000000656', 'L00000165', 'P00000318', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(657, 1, 2, 'D000000000657', 'L00000165', 'P00000312', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(658, 1, 3, 'D000000000658', 'L00000165', 'P00000316', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(659, 1, 4, 'D000000000659', 'L00000165', 'P00000319', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(660, 1, 0, 'D000000000660', 'L00000166', 'P00000395', '95.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(661, 1, 1, 'D000000000661', 'L00000166', 'P00000393', '189.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(662, 1, 2, 'D000000000662', 'L00000166', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(663, 1, 3, 'D000000000663', 'L00000166', 'P00000400', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(664, 1, 0, 'D000000000664', 'L00000167', 'P00000442', '119.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(665, 1, 1, 'D000000000665', 'L00000167', 'P00000441', '189.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(666, 1, 0, 'D000000000666', 'L00000168', 'P00000359', '74.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(667, 1, 1, 'D000000000667', 'L00000168', 'P00000351', '74.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(668, 1, 2, 'D000000000668', 'L00000168', 'P00000352', '76.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(669, 1, 0, 'D000000000669', 'L00000169', 'P00000369', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(670, 1, 1, 'D000000000670', 'L00000169', 'P00000362', '58.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(671, 1, 0, 'D000000000671', 'L00000170', 'P00000376', '300.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(672, 1, 1, 'D000000000672', 'L00000170', 'P00000377', '322.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(673, 0, 0, 'D000000000673', 'L00000171', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(674, 0, 1, 'D000000000674', 'L00000171', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(675, 0, 2, 'D000000000675', 'L00000171', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(676, 0, 3, 'D000000000676', 'L00000171', 'P00000367', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(677, 0, 4, 'D000000000677', 'L00000171', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(678, 0, 5, 'D000000000678', 'L00000171', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(679, 0, 6, 'D000000000679', 'L00000171', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(680, 1, 7, 'D000000000680', 'L00000171', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(681, 1, 8, 'D000000000681', 'L00000171', 'P00000061', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(682, 1, 9, 'D000000000682', 'L00000171', 'P00000370', '63.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(683, 1, 0, 'D000000000683', 'L00000172', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(684, 0, 1, 'D000000000684', 'L00000172', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(685, 1, 2, 'D000000000685', 'L00000172', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(686, 0, 3, 'D000000000686', 'L00000172', 'P00000216', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(687, 0, 4, 'D000000000687', 'L00000172', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(688, 0, 5, 'D000000000688', 'L00000172', 'P00000239', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(689, 0, 6, 'D000000000689', 'L00000172', 'P00000217', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(690, 0, 7, 'D000000000690', 'L00000172', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(691, 1, 8, 'D000000000691', 'L00000172', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(692, 1, 9, 'D000000000692', 'L00000172', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(693, 1, 0, 'D000000000693', 'L00000173', 'P00000419', '16.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(694, 0, 1, 'D000000000694', 'L00000173', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(695, 0, 2, 'D000000000695', 'L00000173', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(696, 0, 3, 'D000000000696', 'L00000173', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(697, 1, 4, 'D000000000697', 'L00000173', 'P00000264', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(698, 0, 5, 'D000000000698', 'L00000173', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(699, 0, 6, 'D000000000699', 'L00000173', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(700, 0, 7, 'D000000000700', 'L00000173', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(701, 1, 8, 'D000000000701', 'L00000173', 'P00000268', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(702, 1, 9, 'D000000000702', 'L00000173', 'P00000262', '86.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(703, 1, 0, 'D000000000703', 'L00000174', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(704, 0, 1, 'D000000000704', 'L00000174', 'P00000385', '14.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(705, 1, 2, 'D000000000705', 'L00000174', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(706, 0, 3, 'D000000000706', 'L00000174', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(707, 0, 4, 'D000000000707', 'L00000174', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(708, 1, 5, 'D000000000708', 'L00000174', 'P00000089', '13.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(709, 1, 6, 'D000000000709', 'L00000174', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(710, 0, 7, 'D000000000710', 'L00000174', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(711, 0, 8, 'D000000000711', 'L00000174', 'P00000386', '21.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(712, 0, 9, 'D000000000712', 'L00000174', 'P00000086', '17.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(713, 0, 0, 'D000000000713', 'L00000175', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(714, 1, 1, 'D000000000714', 'L00000175', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(715, 1, 2, 'D000000000715', 'L00000175', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(716, 0, 3, 'D000000000716', 'L00000175', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(717, 0, 4, 'D000000000717', 'L00000175', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(718, 0, 5, 'D000000000718', 'L00000175', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(719, 0, 6, 'D000000000719', 'L00000175', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(720, 0, 7, 'D000000000720', 'L00000175', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(721, 1, 8, 'D000000000721', 'L00000175', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(722, 0, 9, 'D000000000722', 'L00000175', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(723, 1, 0, 'D000000000723', 'L00000176', 'P00000008', '324.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(724, 1, 1, 'D000000000724', 'L00000176', 'P00000004', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(725, 1, 0, 'D000000000725', 'L00000177', 'P00000018', '75.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(726, 1, 1, 'D000000000726', 'L00000177', 'P00000019', '75.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(727, 0, 0, 'D000000000727', 'L00000178', 'P00000025', '2117.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(728, 1, 0, 'D000000000728', 'L00000179', 'P00000034', '38.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(729, 1, 1, 'D000000000729', 'L00000179', 'P00000039', '41.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(730, 1, 2, 'D000000000730', 'L00000179', 'P00000037', '11.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(731, 1, 0, 'D000000000731', 'L00000180', 'P00000049', '21.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(732, 1, 1, 'D000000000732', 'L00000180', 'P00000048', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(733, 1, 0, 'D000000000733', 'L00000181', 'P00000055', '66.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(734, 1, 1, 'D000000000734', 'L00000181', 'P00000057', '69.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(735, 1, 2, 'D000000000735', 'L00000181', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(736, 1, 0, 'D000000000736', 'L00000182', 'P00000061', '62.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(737, 1, 1, 'D000000000737', 'L00000182', 'P00000063', '32.95', 6, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(738, 1, 0, 'D000000000738', 'L00000183', 'P00000077', '18.50', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(739, 1, 1, 'D000000000739', 'L00000183', 'P00000078', '29.95', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(740, 1, 2, 'D000000000740', 'L00000183', 'P00000079', '50.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(741, 1, 0, 'D000000000741', 'L00000184', 'P00000090', '64.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(742, 1, 0, 'D000000000742', 'L00000185', 'P00000096', '149.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(743, 1, 0, 'D000000000743', 'L00000186', 'P00000402', '94.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(744, 1, 1, 'D000000000744', 'L00000186', 'P00000405', '73.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(745, 1, 2, 'D000000000745', 'L00000186', 'P00000410', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(746, 1, 0, 'D000000000746', 'L00000187', 'P00000419', '16.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(747, 1, 1, 'D000000000747', 'L00000187', 'P00000415', '29.75', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(748, 1, 2, 'D000000000748', 'L00000187', 'P00000418', '38.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(749, 1, 0, 'D000000000749', 'L00000188', 'P00000430', '131.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(750, 1, 1, 'D000000000750', 'L00000188', 'P00000425', '167.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(751, 1, 2, 'D000000000751', 'L00000188', 'P00000426', '189.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(752, 1, 0, 'D000000000752', 'L00000189', 'P00000431', '71.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(753, 1, 1, 'D000000000753', 'L00000189', 'P00000432', '165.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(754, 1, 2, 'D000000000754', 'L00000189', 'P00000433', '127.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(755, 1, 0, 'D000000000755', 'L00000190', 'P00000314', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(756, 1, 1, 'D000000000756', 'L00000190', 'P00000318', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(757, 1, 2, 'D000000000757', 'L00000190', 'P00000312', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(758, 1, 3, 'D000000000758', 'L00000190', 'P00000316', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(759, 1, 4, 'D000000000759', 'L00000190', 'P00000319', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(760, 1, 0, 'D000000000760', 'L00000191', 'P00000395', '95.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(761, 1, 1, 'D000000000761', 'L00000191', 'P00000393', '189.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(762, 1, 2, 'D000000000762', 'L00000191', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(763, 1, 3, 'D000000000763', 'L00000191', 'P00000400', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(764, 1, 0, 'D000000000764', 'L00000192', 'P00000442', '119.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(765, 1, 1, 'D000000000765', 'L00000192', 'P00000441', '189.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(766, 1, 0, 'D000000000766', 'L00000193', 'P00000359', '74.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(767, 1, 1, 'D000000000767', 'L00000193', 'P00000351', '74.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(768, 1, 2, 'D000000000768', 'L00000193', 'P00000352', '76.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(769, 1, 0, 'D000000000769', 'L00000194', 'P00000369', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(770, 1, 1, 'D000000000770', 'L00000194', 'P00000362', '58.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(771, 1, 0, 'D000000000771', 'L00000195', 'P00000376', '300.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(772, 1, 1, 'D000000000772', 'L00000195', 'P00000377', '322.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(773, 0, 0, 'D000000000773', 'L00000196', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(774, 0, 1, 'D000000000774', 'L00000196', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(775, 0, 2, 'D000000000775', 'L00000196', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(776, 0, 3, 'D000000000776', 'L00000196', 'P00000367', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(777, 0, 4, 'D000000000777', 'L00000196', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(778, 0, 5, 'D000000000778', 'L00000196', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(779, 0, 6, 'D000000000779', 'L00000196', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(780, 1, 7, 'D000000000780', 'L00000196', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(781, 1, 8, 'D000000000781', 'L00000196', 'P00000061', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(782, 1, 9, 'D000000000782', 'L00000196', 'P00000370', '63.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(783, 1, 0, 'D000000000783', 'L00000197', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(784, 0, 1, 'D000000000784', 'L00000197', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(785, 1, 2, 'D000000000785', 'L00000197', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(786, 0, 3, 'D000000000786', 'L00000197', 'P00000216', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(787, 0, 4, 'D000000000787', 'L00000197', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(788, 0, 5, 'D000000000788', 'L00000197', 'P00000239', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(789, 0, 6, 'D000000000789', 'L00000197', 'P00000217', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(790, 0, 7, 'D000000000790', 'L00000197', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(791, 1, 8, 'D000000000791', 'L00000197', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(792, 1, 9, 'D000000000792', 'L00000197', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(793, 1, 0, 'D000000000793', 'L00000198', 'P00000419', '16.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(794, 0, 1, 'D000000000794', 'L00000198', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(795, 0, 2, 'D000000000795', 'L00000198', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(796, 0, 3, 'D000000000796', 'L00000198', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(797, 1, 4, 'D000000000797', 'L00000198', 'P00000264', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(798, 0, 5, 'D000000000798', 'L00000198', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(799, 0, 6, 'D000000000799', 'L00000198', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(800, 0, 7, 'D000000000800', 'L00000198', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(801, 1, 8, 'D000000000801', 'L00000198', 'P00000268', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(802, 1, 9, 'D000000000802', 'L00000198', 'P00000262', '86.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(803, 1, 0, 'D000000000803', 'L00000199', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(804, 0, 1, 'D000000000804', 'L00000199', 'P00000385', '14.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(805, 1, 2, 'D000000000805', 'L00000199', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(806, 0, 3, 'D000000000806', 'L00000199', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(807, 0, 4, 'D000000000807', 'L00000199', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(808, 1, 5, 'D000000000808', 'L00000199', 'P00000089', '13.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(809, 1, 6, 'D000000000809', 'L00000199', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(810, 0, 7, 'D000000000810', 'L00000199', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(811, 0, 8, 'D000000000811', 'L00000199', 'P00000386', '21.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(812, 0, 9, 'D000000000812', 'L00000199', 'P00000086', '17.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(813, 0, 0, 'D000000000813', 'L00000200', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(814, 1, 1, 'D000000000814', 'L00000200', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(815, 1, 2, 'D000000000815', 'L00000200', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(816, 0, 3, 'D000000000816', 'L00000200', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(817, 0, 4, 'D000000000817', 'L00000200', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(818, 0, 5, 'D000000000818', 'L00000200', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(819, 0, 6, 'D000000000819', 'L00000200', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(820, 0, 7, 'D000000000820', 'L00000200', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(821, 1, 8, 'D000000000821', 'L00000200', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(822, 0, 9, 'D000000000822', 'L00000200', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(823, 1, 0, 'D000000000823', 'L00000201', 'P00000154', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(824, 1, 1, 'D000000000824', 'L00000201', 'P00000151', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(825, 1, 0, 'D000000000825', 'L00000202', 'P00000168', '80.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(826, 1, 1, 'D000000000826', 'L00000202', 'P00000169', '80.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(827, 1, 0, 'D000000000827', 'L00000203', 'P00000180', '1050.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(828, 1, 0, 'D000000000828', 'L00000204', 'P00000182', '33.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(829, 1, 1, 'D000000000829', 'L00000204', 'P00000189', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(830, 1, 2, 'D000000000830', 'L00000204', 'P00000190', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(831, 1, 0, 'D000000000831', 'L00000205', 'P00000191', '89.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(832, 1, 1, 'D000000000832', 'L00000205', 'P00000192', '79.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(833, 1, 2, 'D000000000833', 'L00000205', 'P00000195', '56.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(834, 1, 0, 'D000000000834', 'L00000206', 'P00000207', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(835, 1, 1, 'D000000000835', 'L00000206', 'P00000203', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(836, 1, 2, 'D000000000836', 'L00000206', 'P00000204', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(837, 1, 3, 'D000000000837', 'L00000206', 'P00000210', '84.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(838, 1, 0, 'D000000000838', 'L00000207', 'P00000216', '35.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(839, 1, 1, 'D000000000839', 'L00000207', 'P00000217', '37.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(840, 1, 0, 'D000000000840', 'L00000208', 'P00000226', '218.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(841, 1, 1, 'D000000000841', 'L00000208', 'P00000229', '345.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(842, 1, 0, 'D000000000842', 'L00000209', 'P00000231', '66.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(843, 1, 1, 'D000000000843', 'L00000209', 'P00000233', '72.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(844, 1, 0, 'D000000000844', 'L00000210', 'P00000248', '105.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(845, 1, 1, 'D000000000845', 'L00000210', 'P00000246', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(846, 1, 2, 'D000000000846', 'L00000210', 'P00000247', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(847, 1, 0, 'D000000000847', 'L00000211', 'P00000031', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(848, 1, 1, 'D000000000848', 'L00000211', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(849, 1, 2, 'D000000000849', 'L00000211', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(850, 1, 3, 'D000000000850', 'L00000211', 'P00000038', '71.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(851, 1, 0, 'D000000000851', 'L00000212', 'P00000045', '41.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(852, 1, 1, 'D000000000852', 'L00000212', 'P00000044', '59.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(853, 1, 0, 'D000000000853', 'L00000213', 'P00000069', '34.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(854, 1, 1, 'D000000000854', 'L00000213', 'P00000063', '32.95', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(855, 1, 2, 'D000000000855', 'L00000213', 'P00000066', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(856, 1, 0, 'D000000000856', 'L00000214', 'P00000116', '63.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(857, 1, 1, 'D000000000857', 'L00000214', 'P00000114', '69.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(858, 1, 2, 'D000000000858', 'L00000214', 'P00000117', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(859, 1, 0, 'D000000000859', 'L00000215', 'P00000012', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(860, 1, 1, 'D000000000860', 'L00000215', 'P00000013', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(861, 1, 0, 'D000000000861', 'L00000216', 'P00000333', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(862, 1, 1, 'D000000000862', 'L00000216', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(863, 1, 2, 'D000000000863', 'L00000216', 'P00000339', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(864, 1, 0, 'D000000000864', 'L00000217', 'P00000301', '149.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(865, 1, 1, 'D000000000865', 'L00000217', 'P00000302', '325.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52');
INSERT INTO `list_details` (`id`, `is_checked`, `list_index`, `detail_id`, `list_id`, `product_id`, `current_price`, `quantity`, `is_deleted`, `created_at`, `updated_at`) VALUES
(866, 1, 0, 'D000000000866', 'L00000218', 'P00000323', '200.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(867, 1, 1, 'D000000000867', 'L00000218', 'P00000321', '140.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(868, 1, 0, 'D000000000868', 'L00000219', 'P00000380', '378.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(869, 1, 1, 'D000000000869', 'L00000219', 'P00000378', '322.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(870, 1, 0, 'D000000000870', 'L00000220', 'P00000403', '138.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(871, 1, 1, 'D000000000871', 'L00000220', 'P00000401', '137.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(872, 0, 0, 'D000000000872', 'L00000221', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(873, 0, 1, 'D000000000873', 'L00000221', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(874, 0, 2, 'D000000000874', 'L00000221', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(875, 0, 3, 'D000000000875', 'L00000221', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(876, 0, 4, 'D000000000876', 'L00000221', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(877, 0, 5, 'D000000000877', 'L00000221', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(878, 1, 6, 'D000000000878', 'L00000221', 'P00000219', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(879, 0, 7, 'D000000000879', 'L00000221', 'P00000214', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(880, 1, 8, 'D000000000880', 'L00000221', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(881, 1, 9, 'D000000000881', 'L00000221', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(882, 0, 0, 'D000000000882', 'L00000222', 'P00000194', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(883, 1, 1, 'D000000000883', 'L00000222', 'P00000191', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(884, 1, 2, 'D000000000884', 'L00000222', 'P00000192', '79.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(885, 0, 3, 'D000000000885', 'L00000222', 'P00000042', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(886, 0, 4, 'D000000000886', 'L00000222', 'P00000199', '109.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(887, 0, 5, 'D000000000887', 'L00000222', 'P00000196', '115.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(888, 0, 6, 'D000000000888', 'L00000222', 'P00000044', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(889, 0, 7, 'D000000000889', 'L00000222', 'P00000195', '56.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(890, 0, 8, 'D000000000890', 'L00000222', 'P00000046', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(891, 1, 9, 'D000000000891', 'L00000222', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(892, 1, 0, 'D000000000892', 'L00000223', 'P00000240', '27.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(893, 0, 1, 'D000000000893', 'L00000223', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(894, 0, 2, 'D000000000894', 'L00000223', 'P00000237', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(895, 1, 3, 'D000000000895', 'L00000223', 'P00000389', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(896, 1, 4, 'D000000000896', 'L00000223', 'P00000390', '23.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(897, 0, 5, 'D000000000897', 'L00000223', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(898, 0, 6, 'D000000000898', 'L00000223', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(899, 0, 7, 'D000000000899', 'L00000223', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(900, 1, 8, 'D000000000900', 'L00000223', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(901, 1, 9, 'D000000000901', 'L00000223', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(902, 1, 0, 'D000000000902', 'L00000224', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(903, 0, 1, 'D000000000903', 'L00000224', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(904, 0, 2, 'D000000000904', 'L00000224', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(905, 1, 3, 'D000000000905', 'L00000224', 'P00000390', '23.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(906, 1, 4, 'D000000000906', 'L00000224', 'P00000389', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(907, 0, 5, 'D000000000907', 'L00000224', 'P00000237', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(908, 0, 6, 'D000000000908', 'L00000224', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(909, 0, 7, 'D000000000909', 'L00000224', 'P00000240', '27.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(910, 0, 8, 'D000000000910', 'L00000224', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(911, 1, 9, 'D000000000911', 'L00000224', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(912, 1, 0, 'D000000000912', 'L00000225', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(913, 0, 1, 'D000000000913', 'L00000225', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(914, 0, 2, 'D000000000914', 'L00000225', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(915, 0, 3, 'D000000000915', 'L00000225', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(916, 0, 4, 'D000000000916', 'L00000225', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(917, 1, 5, 'D000000000917', 'L00000225', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(918, 0, 6, 'D000000000918', 'L00000225', 'P00000219', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(919, 0, 7, 'D000000000919', 'L00000225', 'P00000214', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(920, 1, 8, 'D000000000920', 'L00000225', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(921, 1, 9, 'D000000000921', 'L00000225', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(922, 1, 0, 'D000000000922', 'L00000226', 'P00000154', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(923, 1, 1, 'D000000000923', 'L00000226', 'P00000151', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(924, 1, 0, 'D000000000924', 'L00000227', 'P00000168', '80.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(925, 1, 1, 'D000000000925', 'L00000227', 'P00000169', '80.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(926, 1, 0, 'D000000000926', 'L00000228', 'P00000180', '1050.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(927, 1, 0, 'D000000000927', 'L00000229', 'P00000182', '33.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(928, 1, 1, 'D000000000928', 'L00000229', 'P00000189', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(929, 1, 2, 'D000000000929', 'L00000229', 'P00000190', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(930, 1, 0, 'D000000000930', 'L00000230', 'P00000191', '89.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(931, 1, 1, 'D000000000931', 'L00000230', 'P00000192', '79.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(932, 1, 2, 'D000000000932', 'L00000230', 'P00000195', '56.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(933, 1, 0, 'D000000000933', 'L00000231', 'P00000207', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(934, 1, 1, 'D000000000934', 'L00000231', 'P00000203', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(935, 1, 2, 'D000000000935', 'L00000231', 'P00000204', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(936, 1, 3, 'D000000000936', 'L00000231', 'P00000210', '84.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(937, 1, 0, 'D000000000937', 'L00000232', 'P00000216', '35.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(938, 1, 1, 'D000000000938', 'L00000232', 'P00000217', '37.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(939, 1, 0, 'D000000000939', 'L00000233', 'P00000226', '218.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(940, 1, 1, 'D000000000940', 'L00000233', 'P00000229', '345.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(941, 1, 0, 'D000000000941', 'L00000234', 'P00000231', '66.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(942, 1, 1, 'D000000000942', 'L00000234', 'P00000233', '72.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(943, 1, 0, 'D000000000943', 'L00000235', 'P00000248', '105.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(944, 1, 1, 'D000000000944', 'L00000235', 'P00000246', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(945, 1, 2, 'D000000000945', 'L00000235', 'P00000247', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(946, 1, 0, 'D000000000946', 'L00000236', 'P00000031', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(947, 1, 1, 'D000000000947', 'L00000236', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(948, 1, 2, 'D000000000948', 'L00000236', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(949, 1, 3, 'D000000000949', 'L00000236', 'P00000038', '71.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(950, 1, 0, 'D000000000950', 'L00000237', 'P00000045', '41.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(951, 1, 1, 'D000000000951', 'L00000237', 'P00000044', '59.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(952, 1, 0, 'D000000000952', 'L00000238', 'P00000069', '34.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(953, 1, 1, 'D000000000953', 'L00000238', 'P00000063', '32.95', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(954, 1, 2, 'D000000000954', 'L00000238', 'P00000066', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(955, 1, 0, 'D000000000955', 'L00000239', 'P00000116', '63.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(956, 1, 1, 'D000000000956', 'L00000239', 'P00000114', '69.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(957, 1, 2, 'D000000000957', 'L00000239', 'P00000117', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(958, 1, 0, 'D000000000958', 'L00000240', 'P00000012', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(959, 1, 1, 'D000000000959', 'L00000240', 'P00000013', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(960, 1, 0, 'D000000000960', 'L00000241', 'P00000333', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(961, 1, 1, 'D000000000961', 'L00000241', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(962, 1, 2, 'D000000000962', 'L00000241', 'P00000339', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(963, 1, 0, 'D000000000963', 'L00000242', 'P00000301', '149.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(964, 1, 1, 'D000000000964', 'L00000242', 'P00000302', '325.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(965, 1, 0, 'D000000000965', 'L00000243', 'P00000323', '200.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(966, 1, 1, 'D000000000966', 'L00000243', 'P00000321', '140.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(967, 1, 0, 'D000000000967', 'L00000244', 'P00000380', '378.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(968, 1, 1, 'D000000000968', 'L00000244', 'P00000378', '322.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(969, 1, 0, 'D000000000969', 'L00000245', 'P00000403', '138.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(970, 1, 1, 'D000000000970', 'L00000245', 'P00000401', '137.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(971, 0, 0, 'D000000000971', 'L00000246', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(972, 0, 1, 'D000000000972', 'L00000246', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(973, 0, 2, 'D000000000973', 'L00000246', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(974, 0, 3, 'D000000000974', 'L00000246', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(975, 0, 4, 'D000000000975', 'L00000246', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(976, 0, 5, 'D000000000976', 'L00000246', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(977, 1, 6, 'D000000000977', 'L00000246', 'P00000219', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(978, 0, 7, 'D000000000978', 'L00000246', 'P00000214', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(979, 1, 8, 'D000000000979', 'L00000246', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(980, 1, 9, 'D000000000980', 'L00000246', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(981, 0, 0, 'D000000000981', 'L00000247', 'P00000194', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(982, 1, 1, 'D000000000982', 'L00000247', 'P00000191', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(983, 1, 2, 'D000000000983', 'L00000247', 'P00000192', '79.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(984, 0, 3, 'D000000000984', 'L00000247', 'P00000042', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(985, 0, 4, 'D000000000985', 'L00000247', 'P00000199', '109.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(986, 0, 5, 'D000000000986', 'L00000247', 'P00000196', '115.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(987, 0, 6, 'D000000000987', 'L00000247', 'P00000044', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(988, 0, 7, 'D000000000988', 'L00000247', 'P00000195', '56.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(989, 0, 8, 'D000000000989', 'L00000247', 'P00000046', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(990, 1, 9, 'D000000000990', 'L00000247', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(991, 1, 0, 'D000000000991', 'L00000248', 'P00000240', '27.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(992, 0, 1, 'D000000000992', 'L00000248', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(993, 0, 2, 'D000000000993', 'L00000248', 'P00000237', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(994, 1, 3, 'D000000000994', 'L00000248', 'P00000389', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(995, 1, 4, 'D000000000995', 'L00000248', 'P00000390', '23.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(996, 0, 5, 'D000000000996', 'L00000248', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(997, 0, 6, 'D000000000997', 'L00000248', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(998, 0, 7, 'D000000000998', 'L00000248', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(999, 1, 8, 'D000000000999', 'L00000248', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1000, 1, 9, 'D000000001000', 'L00000248', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1001, 1, 0, 'D000000001001', 'L00000249', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1002, 0, 1, 'D000000001002', 'L00000249', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1003, 0, 2, 'D000000001003', 'L00000249', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1004, 1, 3, 'D000000001004', 'L00000249', 'P00000390', '23.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1005, 1, 4, 'D000000001005', 'L00000249', 'P00000389', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1006, 0, 5, 'D000000001006', 'L00000249', 'P00000237', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1007, 0, 6, 'D000000001007', 'L00000249', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1008, 0, 7, 'D000000001008', 'L00000249', 'P00000240', '27.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1009, 0, 8, 'D000000001009', 'L00000249', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1010, 1, 9, 'D000000001010', 'L00000249', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1011, 1, 0, 'D000000001011', 'L00000250', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1012, 0, 1, 'D000000001012', 'L00000250', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1013, 0, 2, 'D000000001013', 'L00000250', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1014, 0, 3, 'D000000001014', 'L00000250', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1015, 0, 4, 'D000000001015', 'L00000250', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1016, 1, 5, 'D000000001016', 'L00000250', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1017, 0, 6, 'D000000001017', 'L00000250', 'P00000219', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1018, 0, 7, 'D000000001018', 'L00000250', 'P00000214', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1019, 1, 8, 'D000000001019', 'L00000250', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1020, 1, 9, 'D000000001020', 'L00000250', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1021, 1, 0, 'D000000001021', 'L00000251', 'P00000151', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(1022, 1, 1, 'D000000001022', 'L00000251', 'P00000152', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:47'),
(1023, 1, 2, 'D000000001023', 'L00000251', 'P00000153', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:47'),
(1024, 1, 0, 'D000000001024', 'L00000252', 'P00000161', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1025, 1, 1, 'D000000001025', 'L00000252', 'P00000162', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1026, 1, 2, 'D000000001026', 'L00000252', 'P00000163', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1027, 1, 3, 'D000000001027', 'L00000252', 'P00000164', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1028, 1, 0, 'D000000001028', 'L00000253', 'P00000178', '1320.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:48'),
(1029, 1, 0, 'D000000001029', 'L00000254', 'P00000184', '92.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:48'),
(1030, 1, 1, 'D000000001030', 'L00000254', 'P00000183', '94.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1031, 1, 2, 'D000000001031', 'L00000254', 'P00000181', '101.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:48'),
(1032, 1, 0, 'D000000001032', 'L00000255', 'P00000200', '65.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1033, 1, 1, 'D000000001033', 'L00000255', 'P00000194', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(1034, 1, 2, 'D000000001034', 'L00000255', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1035, 1, 0, 'D000000001035', 'L00000256', 'P00000201', '87.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1036, 1, 1, 'D000000001036', 'L00000256', 'P00000202', '87.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1037, 1, 2, 'D000000001037', 'L00000256', 'P00000205', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1038, 1, 0, 'D000000001038', 'L00000257', 'P00000211', '39.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1039, 1, 1, 'D000000001039', 'L00000257', 'P00000214', '39.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1040, 1, 2, 'D000000001040', 'L00000257', 'P00000212', '66.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:48'),
(1041, 1, 0, 'D000000001041', 'L00000258', 'P00000225', '114.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:48'),
(1042, 1, 1, 'D000000001042', 'L00000258', 'P00000229', '345.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1043, 1, 0, 'D000000001043', 'L00000259', 'P00000246', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1044, 1, 1, 'D000000001044', 'L00000259', 'P00000247', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1045, 1, 2, 'D000000001045', 'L00000259', 'P00000243', '211.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:48'),
(1046, 1, 0, 'D000000001046', 'L00000260', 'P00000255', '204.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1047, 1, 1, 'D000000001047', 'L00000260', 'P00000260', '210.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1048, 1, 0, 'D000000001048', 'L00000261', 'P00000031', '9.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1049, 1, 1, 'D000000001049', 'L00000261', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1050, 1, 2, 'D000000001050', 'L00000261', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1051, 1, 3, 'D000000001051', 'L00000261', 'P00000034', '38.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1052, 1, 0, 'D000000001052', 'L00000262', 'P00000049', '21.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1053, 1, 1, 'D000000001053', 'L00000262', 'P00000048', '59.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1054, 1, 2, 'D000000001054', 'L00000262', 'P00000043', '67.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(1055, 1, 0, 'D000000001055', 'L00000263', 'P00000125', '124.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1056, 1, 1, 'D000000001056', 'L00000263', 'P00000130', '126.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1057, 1, 2, 'D000000001057', 'L00000263', 'P00000121', '153.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1058, 1, 0, 'D000000001058', 'L00000264', 'P00000135', '87.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(1059, 1, 1, 'D000000001059', 'L00000264', 'P00000134', '87.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:11'),
(1060, 1, 2, 'D000000001060', 'L00000264', 'P00000132', '87.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1061, 1, 0, 'D000000001061', 'L00000265', 'P00000141', '367.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:49'),
(1062, 1, 1, 'D000000001062', 'L00000265', 'P00000150', '249.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1063, 1, 0, 'D000000001063', 'L00000266', 'P00000371', '8.35', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1064, 1, 1, 'D000000001064', 'L00000266', 'P00000372', '8.35', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1065, 1, 2, 'D000000001065', 'L00000266', 'P00000397', '11.25', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1066, 1, 0, 'D000000001066', 'L00000267', 'P00000419', '16.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1067, 1, 1, 'D000000001067', 'L00000267', 'P00000373', '20.25', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1068, 1, 2, 'D000000001068', 'L00000267', 'P00000408', '26.60', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1069, 1, 0, 'D000000001069', 'L00000268', 'P00000367', '32.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1070, 1, 1, 'D000000001070', 'L00000268', 'P00000364', '28.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1071, 1, 0, 'D000000001071', 'L00000269', 'P00000329', '914.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1072, 1, 0, 'D000000001072', 'L00000270', 'P00000342', '42.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1073, 1, 1, 'D000000001073', 'L00000270', 'P00000348', '42.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1074, 1, 2, 'D000000001074', 'L00000270', 'P00000343', '40.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1075, 1, 3, 'D000000001075', 'L00000270', 'P00000344', '45.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1076, 1, 0, 'D000000001076', 'L00000271', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1077, 1, 1, 'D000000001077', 'L00000271', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1078, 0, 2, 'D000000001078', 'L00000271', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1079, 0, 3, 'D000000001079', 'L00000271', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1080, 0, 4, 'D000000001080', 'L00000271', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1081, 0, 5, 'D000000001081', 'L00000271', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1082, 0, 6, 'D000000001082', 'L00000271', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1083, 0, 7, 'D000000001083', 'L00000271', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1084, 0, 8, 'D000000001084', 'L00000271', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1085, 0, 9, 'D000000001085', 'L00000271', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1086, 1, 0, 'D000000001086', 'L00000272', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1087, 0, 1, 'D000000001087', 'L00000272', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1088, 0, 2, 'D000000001088', 'L00000272', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1089, 0, 3, 'D000000001089', 'L00000272', 'P00000404', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1090, 0, 4, 'D000000001090', 'L00000272', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1091, 1, 5, 'D000000001091', 'L00000272', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1092, 0, 6, 'D000000001092', 'L00000272', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1093, 0, 7, 'D000000001093', 'L00000272', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1094, 0, 8, 'D000000001094', 'L00000272', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1095, 1, 9, 'D000000001095', 'L00000272', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1096, 0, 0, 'D000000001096', 'L00000273', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1097, 0, 1, 'D000000001097', 'L00000273', 'P00000396', '50.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1098, 1, 2, 'D000000001098', 'L00000273', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1099, 1, 3, 'D000000001099', 'L00000273', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1100, 0, 4, 'D000000001100', 'L00000273', 'P00000430', '131.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1101, 0, 5, 'D000000001101', 'L00000273', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1102, 0, 6, 'D000000001102', 'L00000273', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1103, 0, 7, 'D000000001103', 'L00000273', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1104, 1, 8, 'D000000001104', 'L00000273', 'P00000348', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1105, 1, 9, 'D000000001105', 'L00000273', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1106, 0, 0, 'D000000001106', 'L00000274', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1107, 0, 1, 'D000000001107', 'L00000274', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1108, 0, 2, 'D000000001108', 'L00000274', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1109, 1, 3, 'D000000001109', 'L00000274', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1110, 1, 4, 'D000000001110', 'L00000274', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1111, 0, 5, 'D000000001111', 'L00000274', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1112, 0, 6, 'D000000001112', 'L00000274', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1113, 0, 7, 'D000000001113', 'L00000274', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1114, 0, 8, 'D000000001114', 'L00000274', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1115, 0, 9, 'D000000001115', 'L00000274', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1116, 0, 0, 'D000000001116', 'L00000275', 'P00000371', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1117, 0, 1, 'D000000001117', 'L00000275', 'P00000372', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1118, 0, 2, 'D000000001118', 'L00000275', 'P00000077', '18.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1119, 0, 3, 'D000000001119', 'L00000275', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1120, 0, 4, 'D000000001120', 'L00000275', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1121, 0, 5, 'D000000001121', 'L00000275', 'P00000074', '40.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1122, 0, 6, 'D000000001122', 'L00000275', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1123, 1, 7, 'D000000001123', 'L00000275', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1124, 1, 8, 'D000000001124', 'L00000275', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1125, 1, 9, 'D000000001125', 'L00000275', 'P00000223', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1126, 1, 0, 'D000000001126', 'L00000276', 'P00000031', '9.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1127, 1, 1, 'D000000001127', 'L00000276', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1128, 1, 2, 'D000000001128', 'L00000276', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1129, 1, 3, 'D000000001129', 'L00000276', 'P00000034', '38.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1130, 1, 0, 'D000000001130', 'L00000277', 'P00000094', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:52'),
(1131, 1, 1, 'D000000001131', 'L00000277', 'P00000104', '180.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:52'),
(1132, 1, 2, 'D000000001132', 'L00000277', 'P00000122', '153.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1133, 1, 3, 'D000000001133', 'L00000277', 'P00000042', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1134, 1, 0, 'D000000001134', 'L00000278', 'P00000135', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(1135, 1, 1, 'D000000001135', 'L00000278', 'P00000037', '11.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1136, 1, 2, 'D000000001136', 'L00000278', 'P00000117', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1137, 1, 3, 'D000000001137', 'L00000278', 'P00000132', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1138, 1, 0, 'D000000001138', 'L00000279', 'P00000076', '399.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1139, 1, 1, 'D000000001139', 'L00000279', 'P00000072', '77.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1140, 1, 0, 'D000000001140', 'L00000280', 'P00000056', '89.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1141, 1, 1, 'D000000001141', 'L00000280', 'P00000054', '94.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1142, 1, 2, 'D000000001142', 'L00000280', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1143, 1, 0, 'D000000001143', 'L00000281', 'P00000122', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1144, 1, 1, 'D000000001144', 'L00000281', 'P00000129', '221.10', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1145, 1, 0, 'D000000001145', 'L00000282', 'P00000122', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1146, 1, 1, 'D000000001146', 'L00000282', 'P00000121', '153.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1147, 1, 2, 'D000000001147', 'L00000282', 'P00000135', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(1148, 1, 3, 'D000000001148', 'L00000282', 'P00000132', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1149, 1, 0, 'D000000001149', 'L00000283', 'P00000070', '29.50', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1150, 1, 0, 'D000000001150', 'L00000284', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1151, 1, 1, 'D000000001151', 'L00000284', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1152, 1, 2, 'D000000001152', 'L00000284', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1153, 1, 3, 'D000000001153', 'L00000284', 'P00000083', '8.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1154, 1, 0, 'D000000001154', 'L00000285', 'P00000143', '174.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1155, 1, 1, 'D000000001155', 'L00000285', 'P00000150', '249.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1156, 1, 0, 'D000000001156', 'L00000286', 'P00000165', '65.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1157, 1, 1, 'D000000001157', 'L00000286', 'P00000166', '65.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1158, 0, 0, 'D000000001158', 'L00000287', 'P00000173', '759.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1159, 1, 0, 'D000000001159', 'L00000287', 'P00000289', '110.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(1160, 0, 1, 'D000000001160', 'L00000288', 'P00000290', '110.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(1161, 1, 0, 'D000000001161', 'L00000289', 'P00000258', '183.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1162, 1, 1, 'D000000001162', 'L00000289', 'P00000191', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(1163, 1, 2, 'D000000001163', 'L00000289', 'P00000280', '288.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1164, 1, 0, 'D000000001164', 'L00000290', 'P00000261', '38.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1165, 1, 1, 'D000000001165', 'L00000290', 'P00000264', '45.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1166, 1, 2, 'D000000001166', 'L00000290', 'P00000265', '85.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:54'),
(1167, 1, 0, 'D000000001167', 'L00000291', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1168, 1, 1, 'D000000001168', 'L00000291', 'P00000339', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1169, 1, 2, 'D000000001169', 'L00000291', 'P00000338', '190.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1170, 1, 3, 'D000000001170', 'L00000291', 'P00000333', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1171, 1, 0, 'D000000001171', 'L00000292', 'P00000312', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1172, 1, 1, 'D000000001172', 'L00000292', 'P00000316', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1173, 1, 2, 'D000000001173', 'L00000292', 'P00000319', '70.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1174, 1, 0, 'D000000001174', 'L00000293', 'P00000384', '12.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1175, 1, 1, 'D000000001175', 'L00000293', 'P00000387', '12.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(1176, 1, 2, 'D000000001176', 'L00000293', 'P00000383', '13.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1177, 1, 0, 'D000000001177', 'L00000294', 'P00000431', '71.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1178, 1, 1, 'D000000001178', 'L00000294', 'P00000433', '127.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1179, 1, 2, 'D000000001179', 'L00000294', 'P00000438', '205.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(1180, 1, 0, 'D000000001180', 'L00000295', 'P00000445', '262.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(1181, 1, 1, 'D000000001181', 'L00000295', 'P00000447', '318.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:55'),
(1182, 1, 0, 'D000000001182', 'L00000296', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1183, 1, 1, 'D000000001183', 'L00000296', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1184, 0, 2, 'D000000001184', 'L00000296', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1185, 0, 3, 'D000000001185', 'L00000296', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1186, 0, 4, 'D000000001186', 'L00000296', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1187, 0, 5, 'D000000001187', 'L00000296', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1188, 0, 6, 'D000000001188', 'L00000296', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1189, 0, 7, 'D000000001189', 'L00000296', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1190, 0, 8, 'D000000001190', 'L00000296', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1191, 0, 9, 'D000000001191', 'L00000296', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1192, 1, 0, 'D000000001192', 'L00000297', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1193, 0, 1, 'D000000001193', 'L00000297', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1194, 0, 2, 'D000000001194', 'L00000297', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1195, 0, 3, 'D000000001195', 'L00000297', 'P00000404', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1196, 0, 4, 'D000000001196', 'L00000297', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1197, 1, 5, 'D000000001197', 'L00000297', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1198, 0, 6, 'D000000001198', 'L00000297', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1199, 0, 7, 'D000000001199', 'L00000297', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1200, 0, 8, 'D000000001200', 'L00000297', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1201, 1, 9, 'D000000001201', 'L00000297', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1202, 0, 0, 'D000000001202', 'L00000298', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1203, 0, 1, 'D000000001203', 'L00000298', 'P00000396', '50.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1204, 1, 2, 'D000000001204', 'L00000298', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1205, 1, 3, 'D000000001205', 'L00000298', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1206, 0, 4, 'D000000001206', 'L00000298', 'P00000430', '131.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1207, 0, 5, 'D000000001207', 'L00000298', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1208, 0, 6, 'D000000001208', 'L00000298', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1209, 0, 7, 'D000000001209', 'L00000298', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1210, 1, 8, 'D000000001210', 'L00000298', 'P00000348', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1211, 1, 9, 'D000000001211', 'L00000298', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1212, 0, 0, 'D000000001212', 'L00000299', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1213, 0, 1, 'D000000001213', 'L00000299', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1214, 0, 2, 'D000000001214', 'L00000299', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1215, 1, 3, 'D000000001215', 'L00000299', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1216, 1, 4, 'D000000001216', 'L00000299', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1217, 0, 5, 'D000000001217', 'L00000299', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1218, 0, 6, 'D000000001218', 'L00000299', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1219, 0, 7, 'D000000001219', 'L00000299', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1220, 0, 8, 'D000000001220', 'L00000299', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1221, 0, 9, 'D000000001221', 'L00000299', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1222, 0, 0, 'D000000001222', 'L00000300', 'P00000371', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1223, 0, 1, 'D000000001223', 'L00000300', 'P00000372', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1224, 0, 2, 'D000000001224', 'L00000300', 'P00000077', '18.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1225, 0, 3, 'D000000001225', 'L00000300', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1226, 0, 4, 'D000000001226', 'L00000300', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1227, 0, 5, 'D000000001227', 'L00000300', 'P00000074', '40.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1228, 0, 6, 'D000000001228', 'L00000300', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1229, 1, 7, 'D000000001229', 'L00000300', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1230, 1, 8, 'D000000001230', 'L00000300', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1231, 1, 9, 'D000000001231', 'L00000300', 'P00000223', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1232, 1, 0, 'D000000001232', 'L00000301', 'P00000158', '372.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1233, 1, 1, 'D000000001233', 'L00000301', 'P00000160', '372.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1234, 1, 0, 'D000000001234', 'L00000302', 'P00000167', '155.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1235, 1, 1, 'D000000001235', 'L00000302', 'P00000170', '155.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1236, 1, 0, 'D000000001236', 'L00000303', 'P00000171', '745.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1237, 1, 0, 'D000000001237', 'L00000304', 'P00000187', '103.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1238, 1, 1, 'D000000001238', 'L00000304', 'P00000188', '142.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1239, 1, 2, 'D000000001239', 'L00000304', 'P00000186', '271.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1240, 1, 0, 'D000000001240', 'L00000305', 'P00000196', '115.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1241, 1, 1, 'D000000001241', 'L00000305', 'P00000199', '109.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1242, 1, 0, 'D000000001242', 'L00000306', 'P00000207', '78.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1243, 1, 1, 'D000000001243', 'L00000306', 'P00000210', '84.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1244, 1, 0, 'D000000001244', 'L00000307', 'P00000213', '90.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1245, 1, 1, 'D000000001245', 'L00000307', 'P00000220', '78.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1246, 1, 0, 'D000000001246', 'L00000308', 'P00000224', '21.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1247, 1, 1, 'D000000001247', 'L00000308', 'P00000221', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1248, 1, 2, 'D000000001248', 'L00000308', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1249, 1, 0, 'D000000001249', 'L00000309', 'P00000249', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1250, 1, 1, 'D000000001250', 'L00000309', 'P00000250', '97.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1251, 1, 2, 'D000000001251', 'L00000309', 'P00000248', '105.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1252, 1, 0, 'D000000001252', 'L00000310', 'P00000270', '111.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:58'),
(1253, 1, 1, 'D000000001253', 'L00000310', 'P00000264', '45.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1254, 1, 0, 'D000000001254', 'L00000311', 'P00000005', '46.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1255, 1, 1, 'D000000001255', 'L00000311', 'P00000004', '56.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(1256, 1, 0, 'D000000001256', 'L00000312', 'P00000015', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1257, 1, 1, 'D000000001257', 'L00000312', 'P00000016', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1258, 1, 2, 'D000000001258', 'L00000312', 'P00000014', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1259, 1, 3, 'D000000001259', 'L00000312', 'P00000017', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1260, 1, 0, 'D000000001260', 'L00000313', 'P00000030', '2617.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(1261, 1, 0, 'D000000001261', 'L00000314', 'P00000040', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1262, 1, 1, 'D000000001262', 'L00000314', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1263, 1, 2, 'D000000001263', 'L00000314', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1264, 1, 0, 'D000000001264', 'L00000315', 'P00000135', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:59'),
(1265, 1, 1, 'D000000001265', 'L00000315', 'P00000132', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:02:53'),
(1266, 1, 2, 'D000000001266', 'L00000315', 'P00000137', '83.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1267, 1, 0, 'D000000001267', 'L00000316', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1268, 1, 1, 'D000000001268', 'L00000316', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1269, 1, 2, 'D000000001269', 'L00000316', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1270, 1, 3, 'D000000001270', 'L00000316', 'P00000348', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1271, 1, 4, 'D000000001271', 'L00000316', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1272, 1, 5, 'D000000001272', 'L00000316', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1273, 1, 6, 'D000000001273', 'L00000316', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1274, 1, 7, 'D000000001274', 'L00000316', 'P00000345', '60.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1275, 1, 0, 'D000000001275', 'L00000317', 'P00000354', '72.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:01'),
(1276, 1, 1, 'D000000001276', 'L00000317', 'P00000357', '72.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:01'),
(1277, 1, 2, 'D000000001277', 'L00000317', 'P00000355', '68.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1278, 1, 3, 'D000000001278', 'L00000317', 'P00000360', '68.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1279, 1, 0, 'D000000001279', 'L00000318', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1280, 1, 1, 'D000000001280', 'L00000318', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1281, 1, 2, 'D000000001281', 'L00000318', 'P00000400', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1282, 1, 0, 'D000000001282', 'L00000319', 'P00000412', '28.25', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1283, 1, 1, 'D000000001283', 'L00000319', 'P00000417', '32.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1284, 1, 2, 'D000000001284', 'L00000319', 'P00000415', '29.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1285, 1, 0, 'D000000001285', 'L00000320', 'P00000431', '71.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1286, 1, 1, 'D000000001286', 'L00000320', 'P00000433', '127.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1287, 1, 2, 'D000000001287', 'L00000320', 'P00000435', '197.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:02'),
(1288, 0, 0, 'D000000001288', 'L00000321', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1289, 0, 1, 'D000000001289', 'L00000321', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1290, 0, 2, 'D000000001290', 'L00000321', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1291, 0, 3, 'D000000001291', 'L00000321', 'P00000037', '11.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1292, 0, 4, 'D000000001292', 'L00000321', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1293, 0, 5, 'D000000001293', 'L00000321', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1294, 0, 6, 'D000000001294', 'L00000321', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1295, 0, 7, 'D000000001295', 'L00000321', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42');
INSERT INTO `list_details` (`id`, `is_checked`, `list_index`, `detail_id`, `list_id`, `product_id`, `current_price`, `quantity`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1296, 1, 8, 'D000000001296', 'L00000321', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1297, 1, 9, 'D000000001297', 'L00000321', 'P00000040', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1298, 1, 0, 'D000000001298', 'L00000322', 'P00000358', '51.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1299, 0, 1, 'D000000001299', 'L00000322', 'P00000051', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1300, 1, 2, 'D000000001300', 'L00000322', 'P00000052', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1301, 1, 3, 'D000000001301', 'L00000322', 'P00000055', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1302, 1, 4, 'D000000001302', 'L00000322', 'P00000058', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(1303, 1, 5, 'D000000001303', 'L00000322', 'P00000057', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1304, 0, 6, 'D000000001304', 'L00000322', 'P00000355', '68.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1305, 1, 7, 'D000000001305', 'L00000322', 'P00000360', '68.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1306, 1, 8, 'D000000001306', 'L00000322', 'P00000059', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1307, 0, 9, 'D000000001307', 'L00000322', 'P00000060', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1308, 1, 0, 'D000000001308', 'L00000323', 'P00000249', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1309, 1, 1, 'D000000001309', 'L00000323', 'P00000396', '50.25', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1310, 0, 2, 'D000000001310', 'L00000323', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1311, 0, 3, 'D000000001311', 'L00000323', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1312, 0, 4, 'D000000001312', 'L00000323', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1313, 0, 5, 'D000000001313', 'L00000323', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1314, 0, 6, 'D000000001314', 'L00000323', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1315, 1, 7, 'D000000001315', 'L00000323', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1316, 0, 8, 'D000000001316', 'L00000323', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1317, 0, 9, 'D000000001317', 'L00000323', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1318, 1, 0, 'D000000001318', 'L00000324', 'P00000089', '13.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1319, 1, 1, 'D000000001319', 'L00000324', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1320, 1, 2, 'D000000001320', 'L00000324', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1321, 1, 3, 'D000000001321', 'L00000324', 'P00000385', '14.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1322, 0, 4, 'D000000001322', 'L00000324', 'P00000387', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(1323, 0, 5, 'D000000001323', 'L00000324', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1324, 1, 6, 'D000000001324', 'L00000324', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1325, 0, 7, 'D000000001325', 'L00000324', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1326, 0, 8, 'D000000001326', 'L00000324', 'P00000088', '15.40', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(1327, 1, 9, 'D000000001327', 'L00000324', 'P00000087', '16.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1328, 0, 0, 'D000000001328', 'L00000325', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1329, 0, 1, 'D000000001329', 'L00000325', 'P00000037', '11.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1330, 0, 2, 'D000000001330', 'L00000325', 'P00000372', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1331, 0, 3, 'D000000001331', 'L00000325', 'P00000371', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1332, 1, 4, 'D000000001332', 'L00000325', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1333, 1, 5, 'D000000001333', 'L00000325', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1334, 0, 6, 'D000000001334', 'L00000325', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1335, 0, 7, 'D000000001335', 'L00000325', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1336, 1, 8, 'D000000001336', 'L00000325', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1337, 1, 9, 'D000000001337', 'L00000325', 'P00000045', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1338, 1, 0, 'D000000001338', 'L00000326', 'P00000010', '264.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(1339, 1, 1, 'D000000001339', 'L00000326', 'P00000009', '296.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(1340, 1, 2, 'D000000001340', 'L00000326', 'P00000008', '324.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(1341, 1, 0, 'D000000001341', 'L00000327', 'P00000011', '88.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(1342, 1, 1, 'D000000001342', 'L00000327', 'P00000012', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1343, 1, 2, 'D000000001343', 'L00000327', 'P00000013', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1344, 1, 0, 'D000000001344', 'L00000328', 'P00000027', '1194.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(1345, 1, 0, 'D000000001345', 'L00000329', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1346, 1, 1, 'D000000001346', 'L00000329', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1347, 1, 2, 'D000000001347', 'L00000329', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1348, 1, 3, 'D000000001348', 'L00000329', 'P00000036', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1349, 1, 4, 'D000000001349', 'L00000329', 'P00000038', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1350, 1, 0, 'D000000001350', 'L00000330', 'P00000043', '67.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:04'),
(1351, 1, 1, 'D000000001351', 'L00000330', 'P00000048', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1352, 1, 2, 'D000000001352', 'L00000331', 'P00000044', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1353, 1, 0, 'D000000001353', 'L00000331', 'P00000052', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1354, 1, 1, 'D000000001354', 'L00000331', 'P00000060', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1355, 1, 2, 'D000000001355', 'L00000331', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1356, 1, 0, 'D000000001356', 'L00000332', 'P00000070', '29.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1357, 1, 1, 'D000000001357', 'L00000332', 'P00000369', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1358, 1, 0, 'D000000001358', 'L00000333', 'P00000078', '29.95', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1359, 1, 1, 'D000000001359', 'L00000333', 'P00000079', '50.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1360, 1, 2, 'D000000001360', 'L00000333', 'P00000072', '77.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1361, 1, 0, 'D000000001361', 'L00000334', 'P00000090', '64.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1362, 1, 1, 'D000000001362', 'L00000334', 'P00000084', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1363, 1, 2, 'D000000001363', 'L00000334', 'P00000088', '15.40', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(1364, 1, 0, 'D000000001364', 'L00000335', 'P00000120', '91.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1365, 1, 1, 'D000000001365', 'L00000335', 'P00000117', '71.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1366, 1, 0, 'D000000001366', 'L00000336', 'P00000280', '288.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1367, 1, 1, 'D000000001367', 'L00000336', 'P00000277', '325.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1368, 1, 0, 'D000000001368', 'L00000337', 'P00000249', '43.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1369, 1, 1, 'D000000001369', 'L00000337', 'P00000250', '97.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1370, 1, 2, 'D000000001370', 'L00000337', 'P00000248', '105.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1371, 1, 0, 'D000000001371', 'L00000338', 'P00000197', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1372, 1, 1, 'D000000001372', 'L00000338', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1373, 1, 2, 'D000000001373', 'L00000338', 'P00000195', '56.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1374, 1, 0, 'D000000001374', 'L00000339', 'P00000252', '114.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1375, 1, 1, 'D000000001375', 'L00000339', 'P00000258', '183.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1376, 1, 2, 'D000000001376', 'L00000339', 'P00000256', '188.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1377, 1, 0, 'D000000001377', 'L00000340', 'P00000285', '219.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1378, 1, 1, 'D000000001378', 'L00000340', 'P00000286', '165.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:05'),
(1379, 1, 0, 'D000000001379', 'L00000341', 'P00000446', '168.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:06'),
(1380, 1, 1, 'D000000001380', 'L00000341', 'P00000449', '235.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:06'),
(1381, 1, 0, 'D000000001381', 'L00000342', 'P00000338', '190.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1382, 1, 1, 'D000000001382', 'L00000342', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1383, 1, 2, 'D000000001383', 'L00000342', 'P00000332', '64.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1384, 1, 0, 'D000000001384', 'L00000343', 'P00000371', '8.35', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1385, 1, 1, 'D000000001385', 'L00000343', 'P00000372', '8.35', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1386, 1, 2, 'D000000001386', 'L00000343', 'P00000379', '81.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:09'),
(1387, 1, 0, 'D000000001387', 'L00000344', 'P00000314', '56.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1388, 1, 1, 'D000000001388', 'L00000344', 'P00000318', '56.75', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1389, 1, 0, 'D000000001389', 'L00000345', 'P00000358', '51.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1390, 1, 1, 'D000000001390', 'L00000345', 'P00000360', '68.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1391, 1, 2, 'D000000001391', 'L00000345', 'P00000355', '68.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1392, 0, 0, 'D000000001392', 'L00000346', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1393, 0, 1, 'D000000001393', 'L00000346', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1394, 0, 2, 'D000000001394', 'L00000346', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1395, 0, 3, 'D000000001395', 'L00000346', 'P00000037', '11.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1396, 0, 4, 'D000000001396', 'L00000346', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1397, 0, 5, 'D000000001397', 'L00000346', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1398, 0, 6, 'D000000001398', 'L00000346', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1399, 0, 7, 'D000000001399', 'L00000346', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1400, 1, 8, 'D000000001400', 'L00000346', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1401, 1, 9, 'D000000001401', 'L00000346', 'P00000040', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1402, 1, 0, 'D000000001402', 'L00000347', 'P00000358', '51.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1403, 0, 1, 'D000000001403', 'L00000347', 'P00000051', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1404, 1, 2, 'D000000001404', 'L00000347', 'P00000052', '61.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1405, 1, 3, 'D000000001405', 'L00000347', 'P00000055', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1406, 1, 4, 'D000000001406', 'L00000347', 'P00000058', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(1407, 1, 5, 'D000000001407', 'L00000347', 'P00000057', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1408, 0, 6, 'D000000001408', 'L00000347', 'P00000355', '68.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1409, 1, 7, 'D000000001409', 'L00000347', 'P00000360', '68.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1410, 1, 8, 'D000000001410', 'L00000347', 'P00000059', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1411, 0, 9, 'D000000001411', 'L00000347', 'P00000060', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:07'),
(1412, 1, 0, 'D000000001412', 'L00000348', 'P00000249', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1413, 1, 1, 'D000000001413', 'L00000348', 'P00000396', '50.25', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1414, 0, 2, 'D000000001414', 'L00000348', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1415, 0, 3, 'D000000001415', 'L00000348', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1416, 0, 4, 'D000000001416', 'L00000348', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1417, 0, 5, 'D000000001417', 'L00000348', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1418, 0, 6, 'D000000001418', 'L00000348', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1419, 1, 7, 'D000000001419', 'L00000348', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1420, 0, 8, 'D000000001420', 'L00000348', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1421, 0, 9, 'D000000001421', 'L00000348', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1422, 1, 0, 'D000000001422', 'L00000349', 'P00000089', '13.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1423, 1, 1, 'D000000001423', 'L00000349', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1424, 1, 2, 'D000000001424', 'L00000349', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1425, 1, 3, 'D000000001425', 'L00000349', 'P00000385', '14.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1426, 0, 4, 'D000000001426', 'L00000349', 'P00000387', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(1427, 0, 5, 'D000000001427', 'L00000349', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1428, 1, 6, 'D000000001428', 'L00000349', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1429, 0, 7, 'D000000001429', 'L00000349', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1430, 0, 8, 'D000000001430', 'L00000349', 'P00000088', '15.40', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:08'),
(1431, 1, 9, 'D000000001431', 'L00000349', 'P00000087', '16.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1432, 0, 0, 'D000000001432', 'L00000350', 'P00000033', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1433, 0, 1, 'D000000001433', 'L00000350', 'P00000037', '11.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1434, 0, 2, 'D000000001434', 'L00000350', 'P00000372', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1435, 0, 3, 'D000000001435', 'L00000350', 'P00000371', '8.35', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1436, 1, 4, 'D000000001436', 'L00000350', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1437, 1, 5, 'D000000001437', 'L00000350', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1438, 0, 6, 'D000000001438', 'L00000350', 'P00000031', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1439, 0, 7, 'D000000001439', 'L00000350', 'P00000032', '9.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1440, 1, 8, 'D000000001440', 'L00000350', 'P00000039', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1441, 1, 9, 'D000000001441', 'L00000350', 'P00000045', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1442, 1, 0, 'D000000001442', 'L00000351', 'P00000301', '149.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1443, 1, 1, 'D000000001443', 'L00000351', 'P00000310', '294.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1444, 1, 0, 'D000000001444', 'L00000352', 'P00000314', '56.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1445, 1, 1, 'D000000001445', 'L00000352', 'P00000318', '56.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1446, 1, 2, 'D000000001446', 'L00000352', 'P00000311', '65.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1447, 1, 0, 'D000000001447', 'L00000353', 'P00000321', '140.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1448, 1, 1, 'D000000001448', 'L00000353', 'P00000323', '200.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1449, 1, 0, 'D000000001449', 'L00000354', 'P00000334', '59.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1450, 1, 1, 'D000000001450', 'L00000354', 'P00000332', '64.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1451, 1, 2, 'D000000001451', 'L00000354', 'P00000339', '74.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1452, 1, 0, 'D000000001452', 'L00000355', 'P00000347', '28.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1453, 1, 1, 'D000000001453', 'L00000355', 'P00000344', '45.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1454, 1, 2, 'D000000001454', 'L00000355', 'P00000346', '50.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1455, 1, 3, 'D000000001455', 'L00000355', 'P00000350', '50.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1456, 1, 0, 'D000000001456', 'L00000356', 'P00000358', '51.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1457, 1, 1, 'D000000001457', 'L00000356', 'P00000360', '68.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1458, 1, 2, 'D000000001458', 'L00000356', 'P00000355', '68.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1459, 1, 0, 'D000000001459', 'L00000357', 'P00000364', '28.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1460, 1, 1, 'D000000001460', 'L00000357', 'P00000361', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1461, 1, 2, 'D000000001461', 'L00000357', 'P00000367', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1462, 1, 0, 'D000000001462', 'L00000358', 'P00000371', '8.35', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1463, 1, 1, 'D000000001463', 'L00000358', 'P00000372', '8.35', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1464, 1, 2, 'D000000001464', 'L00000358', 'P00000379', '81.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:09'),
(1465, 1, 0, 'D000000001465', 'L00000359', 'P00000386', '21.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1466, 1, 1, 'D000000001466', 'L00000359', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1467, 1, 2, 'D000000001467', 'L00000359', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1468, 1, 0, 'D000000001468', 'L00000360', 'P00000395', '95.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1469, 1, 1, 'D000000001469', 'L00000360', 'P00000396', '50.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1470, 1, 2, 'D000000001470', 'L00000360', 'P00000393', '189.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1471, 1, 0, 'D000000001471', 'L00000361', 'P00000155', '118.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1472, 1, 1, 'D000000001472', 'L00000361', 'P00000151', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(1473, 1, 0, 'D000000001473', 'L00000362', 'P00000161', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1474, 1, 1, 'D000000001474', 'L00000362', 'P00000162', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1475, 1, 2, 'D000000001475', 'L00000362', 'P00000163', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1476, 1, 3, 'D000000001476', 'L00000362', 'P00000164', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1477, 1, 0, 'D000000001477', 'L00000363', 'P00000216', '35.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1478, 1, 1, 'D000000001478', 'L00000363', 'P00000217', '37.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1479, 1, 0, 'D000000001479', 'L00000364', 'P00000185', '299.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1480, 1, 1, 'D000000001480', 'L00000364', 'P00000182', '33.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1481, 1, 2, 'D000000001481', 'L00000364', 'P00000189', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1482, 1, 0, 'D000000001482', 'L00000365', 'P00000221', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1483, 1, 1, 'D000000001483', 'L00000365', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1484, 1, 2, 'D000000001484', 'L00000365', 'P00000223', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1485, 1, 0, 'D000000001485', 'L00000366', 'P00000031', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1486, 1, 1, 'D000000001486', 'L00000366', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1487, 1, 2, 'D000000001487', 'L00000366', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1488, 1, 3, 'D000000001488', 'L00000366', 'P00000036', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1489, 1, 0, 'D000000001489', 'L00000367', 'P00000041', '72.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1490, 1, 1, 'D000000001490', 'L00000367', 'P00000042', '78.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1491, 1, 0, 'D000000001491', 'L00000368', 'P00000080', '202.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:10'),
(1492, 1, 1, 'D000000001492', 'L00000368', 'P00000075', '93.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:11'),
(1493, 1, 0, 'D000000001493', 'L00000369', 'P00000126', '155.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:11'),
(1494, 1, 1, 'D000000001494', 'L00000369', 'P00000128', '155.10', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:11'),
(1495, 1, 2, 'D000000001495', 'L00000369', 'P00000127', '163.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:11'),
(1496, 1, 0, 'D000000001496', 'L00000370', 'P00000133', '74.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1497, 1, 1, 'D000000001497', 'L00000370', 'P00000139', '83.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1498, 1, 2, 'D000000001498', 'L00000370', 'P00000134', '87.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:11'),
(1499, 0, 0, 'D000000001499', 'L00000371', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1500, 1, 1, 'D000000001500', 'L00000371', 'P00000238', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1501, 0, 2, 'D000000001501', 'L00000371', 'P00000005', '46.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1502, 0, 3, 'D000000001502', 'L00000371', 'P00000420', '47.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1503, 0, 4, 'D000000001503', 'L00000371', 'P00000047', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1504, 1, 5, 'D000000001504', 'L00000371', 'P00000197', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1505, 0, 6, 'D000000001505', 'L00000371', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1506, 1, 7, 'D000000001506', 'L00000371', 'P00000084', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1507, 1, 8, 'D000000001507', 'L00000371', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1508, 1, 9, 'D000000001508', 'L00000371', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1509, 0, 0, 'D000000001509', 'L00000372', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1510, 0, 1, 'D000000001510', 'L00000372', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1511, 0, 2, 'D000000001511', 'L00000372', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1512, 0, 3, 'D000000001512', 'L00000372', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1513, 1, 4, 'D000000001513', 'L00000372', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1514, 0, 5, 'D000000001514', 'L00000372', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1515, 1, 6, 'D000000001515', 'L00000372', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1516, 0, 7, 'D000000001516', 'L00000372', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1517, 0, 8, 'D000000001517', 'L00000372', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1518, 1, 9, 'D000000001518', 'L00000372', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1519, 0, 0, 'D000000001519', 'L00000373', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1520, 0, 1, 'D000000001520', 'L00000373', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1521, 0, 2, 'D000000001521', 'L00000373', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1522, 1, 3, 'D000000001522', 'L00000373', 'P00000216', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1523, 0, 4, 'D000000001523', 'L00000373', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1524, 0, 5, 'D000000001524', 'L00000373', 'P00000239', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1525, 1, 6, 'D000000001525', 'L00000373', 'P00000217', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1526, 1, 7, 'D000000001526', 'L00000373', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1527, 0, 8, 'D000000001527', 'L00000373', 'P00000087', '16.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1528, 0, 9, 'D000000001528', 'L00000373', 'P00000419', '16.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1529, 0, 0, 'D000000001529', 'L00000374', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1530, 0, 1, 'D000000001530', 'L00000374', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1531, 0, 2, 'D000000001531', 'L00000374', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1532, 0, 3, 'D000000001532', 'L00000374', 'P00000404', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1533, 0, 4, 'D000000001533', 'L00000374', 'P00000106', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(1534, 0, 5, 'D000000001534', 'L00000374', 'P00000405', '73.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1535, 1, 6, 'D000000001535', 'L00000374', 'P00000103', '69.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(1536, 0, 7, 'D000000001536', 'L00000374', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1537, 1, 8, 'D000000001537', 'L00000374', 'P00000255', '204.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1538, 1, 9, 'D000000001538', 'L00000374', 'P00000260', '210.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1539, 1, 0, 'D000000001539', 'L00000375', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1540, 0, 1, 'D000000001540', 'L00000375', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1541, 0, 2, 'D000000001541', 'L00000375', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1542, 0, 3, 'D000000001542', 'L00000375', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1543, 0, 4, 'D000000001543', 'L00000375', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1544, 1, 5, 'D000000001544', 'L00000375', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1545, 0, 6, 'D000000001545', 'L00000375', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1546, 0, 7, 'D000000001546', 'L00000375', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1547, 1, 8, 'D000000001547', 'L00000375', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1548, 1, 9, 'D000000001548', 'L00000375', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1549, 1, 0, 'D000000001549', 'L00000376', 'P00000005', '46.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1550, 1, 1, 'D000000001550', 'L00000376', 'P00000004', '56.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(1551, 1, 2, 'D000000001551', 'L00000376', 'P00000003', '72.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1552, 1, 0, 'D000000001552', 'L00000377', 'P00000015', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1553, 1, 1, 'D000000001553', 'L00000377', 'P00000016', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1554, 1, 2, 'D000000001554', 'L00000377', 'P00000014', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1555, 1, 3, 'D000000001555', 'L00000377', 'P00000017', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1556, 0, 0, 'D000000001556', 'L00000378', 'P00000027', '1194.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(1557, 1, 0, 'D000000001557', 'L00000379', 'P00000031', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1558, 1, 1, 'D000000001558', 'L00000379', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1559, 1, 2, 'D000000001559', 'L00000379', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1560, 1, 0, 'D000000001560', 'L00000380', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1561, 1, 1, 'D000000001561', 'L00000380', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1562, 1, 2, 'D000000001562', 'L00000380', 'P00000045', '41.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1563, 1, 0, 'D000000001563', 'L00000381', 'P00000058', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:15'),
(1564, 1, 1, 'D000000001564', 'L00000381', 'P00000057', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1565, 1, 2, 'D000000001565', 'L00000381', 'P00000055', '66.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1566, 1, 3, 'D000000001566', 'L00000381', 'P00000059', '69.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1567, 1, 0, 'D000000001567', 'L00000382', 'P00000066', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1568, 1, 1, 'D000000001568', 'L00000382', 'P00000067', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1569, 1, 0, 'D000000001569', 'L00000383', 'P00000073', '104.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1570, 1, 1, 'D000000001570', 'L00000383', 'P00000074', '40.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1571, 1, 2, 'D000000001571', 'L00000383', 'P00000077', '18.50', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1572, 1, 0, 'D000000001572', 'L00000384', 'P00000085', '85.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1573, 1, 0, 'D000000001573', 'L00000385', 'P00000099', '159.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1574, 1, 1, 'D000000001574', 'L00000385', 'P00000098', '159.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1575, 1, 0, 'D000000001575', 'L00000386', 'P00000155', '118.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1576, 1, 1, 'D000000001576', 'L00000386', 'P00000151', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(1577, 1, 0, 'D000000001577', 'L00000387', 'P00000163', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1578, 1, 1, 'D000000001578', 'L00000387', 'P00000164', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1579, 1, 2, 'D000000001579', 'L00000387', 'P00000161', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1580, 1, 3, 'D000000001580', 'L00000387', 'P00000162', '80.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1581, 1, 0, 'D000000001581', 'L00000388', 'P00000171', '745.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:16'),
(1582, 1, 0, 'D000000001582', 'L00000389', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1583, 1, 1, 'D000000001583', 'L00000389', 'P00000189', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1584, 1, 2, 'D000000001584', 'L00000389', 'P00000190', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1585, 1, 0, 'D000000001585', 'L00000390', 'P00000192', '79.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1586, 1, 1, 'D000000001586', 'L00000390', 'P00000191', '89.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(1587, 1, 0, 'D000000001587', 'L00000391', 'P00000207', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1588, 1, 1, 'D000000001588', 'L00000391', 'P00000203', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1589, 1, 2, 'D000000001589', 'L00000391', 'P00000204', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1590, 1, 3, 'D000000001590', 'L00000391', 'P00000210', '84.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1591, 1, 0, 'D000000001591', 'L00000392', 'P00000216', '35.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1592, 1, 1, 'D000000001592', 'L00000392', 'P00000217', '37.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1593, 1, 0, 'D000000001593', 'L00000393', 'P00000221', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1594, 1, 1, 'D000000001594', 'L00000393', 'P00000222', '215.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1595, 1, 0, 'D000000001595', 'L00000394', 'P00000244', '166.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1596, 1, 1, 'D000000001596', 'L00000394', 'P00000245', '166.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1597, 1, 2, 'D000000001597', 'L00000394', 'P00000249', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1598, 1, 0, 'D000000001598', 'L00000395', 'P00000261', '38.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1599, 1, 1, 'D000000001599', 'L00000395', 'P00000264', '45.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1600, 0, 0, 'D000000001600', 'L00000396', 'P00000344', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1601, 1, 1, 'D000000001601', 'L00000396', 'P00000238', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:17'),
(1602, 0, 2, 'D000000001602', 'L00000396', 'P00000005', '46.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1603, 0, 3, 'D000000001603', 'L00000396', 'P00000420', '47.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1604, 0, 4, 'D000000001604', 'L00000396', 'P00000047', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1605, 1, 5, 'D000000001605', 'L00000396', 'P00000197', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1606, 0, 6, 'D000000001606', 'L00000396', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1607, 1, 7, 'D000000001607', 'L00000396', 'P00000084', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1608, 1, 8, 'D000000001608', 'L00000396', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1609, 1, 9, 'D000000001609', 'L00000396', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1610, 0, 0, 'D000000001610', 'L00000397', 'P00000082', '6.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1611, 0, 1, 'D000000001611', 'L00000397', 'P00000083', '8.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:18'),
(1612, 0, 2, 'D000000001612', 'L00000397', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1613, 0, 3, 'D000000001613', 'L00000397', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1614, 1, 4, 'D000000001614', 'L00000397', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1615, 0, 5, 'D000000001615', 'L00000397', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1616, 1, 6, 'D000000001616', 'L00000397', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1617, 0, 7, 'D000000001617', 'L00000397', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1618, 0, 8, 'D000000001618', 'L00000397', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1619, 1, 9, 'D000000001619', 'L00000397', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1620, 0, 0, 'D000000001620', 'L00000398', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1621, 0, 1, 'D000000001621', 'L00000398', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1622, 0, 2, 'D000000001622', 'L00000398', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1623, 1, 3, 'D000000001623', 'L00000398', 'P00000216', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1624, 0, 4, 'D000000001624', 'L00000398', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1625, 0, 5, 'D000000001625', 'L00000398', 'P00000239', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1626, 1, 6, 'D000000001626', 'L00000398', 'P00000217', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1627, 1, 7, 'D000000001627', 'L00000398', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1628, 0, 8, 'D000000001628', 'L00000398', 'P00000087', '16.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1629, 0, 9, 'D000000001629', 'L00000398', 'P00000419', '16.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1630, 0, 0, 'D000000001630', 'L00000399', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1631, 0, 1, 'D000000001631', 'L00000399', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1632, 0, 2, 'D000000001632', 'L00000399', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1633, 0, 3, 'D000000001633', 'L00000399', 'P00000404', '43.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1634, 0, 4, 'D000000001634', 'L00000399', 'P00000106', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(1635, 0, 5, 'D000000001635', 'L00000399', 'P00000405', '73.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1636, 1, 6, 'D000000001636', 'L00000399', 'P00000103', '69.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(1637, 0, 7, 'D000000001637', 'L00000399', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1638, 1, 8, 'D000000001638', 'L00000399', 'P00000255', '204.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1639, 1, 9, 'D000000001639', 'L00000399', 'P00000260', '210.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:19'),
(1640, 1, 0, 'D000000001640', 'L00000400', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1641, 0, 1, 'D000000001641', 'L00000400', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1642, 0, 2, 'D000000001642', 'L00000400', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1643, 0, 3, 'D000000001643', 'L00000400', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1644, 0, 4, 'D000000001644', 'L00000400', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1645, 1, 5, 'D000000001645', 'L00000400', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1646, 0, 6, 'D000000001646', 'L00000400', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1647, 0, 7, 'D000000001647', 'L00000400', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1648, 1, 8, 'D000000001648', 'L00000400', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1649, 1, 9, 'D000000001649', 'L00000400', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1650, 1, 0, 'D000000001650', 'L00000401', 'P00000304', '321.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:04:20'),
(1651, 1, 1, 'D000000001651', 'L00000401', 'P00000307', '340.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1652, 1, 0, 'D000000001652', 'L00000402', 'P00000312', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1653, 1, 1, 'D000000001653', 'L00000402', 'P00000316', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1654, 1, 2, 'D000000001654', 'L00000402', 'P00000319', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1655, 1, 3, 'D000000001655', 'L00000402', 'P00000313', '93.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1656, 1, 0, 'D000000001656', 'L00000403', 'P00000322', '1214.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1657, 1, 1, 'D000000001657', 'L00000403', 'P00000329', '914.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1658, 1, 0, 'D000000001658', 'L00000404', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1659, 1, 1, 'D000000001659', 'L00000404', 'P00000338', '190.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1660, 1, 2, 'D000000001660', 'L00000404', 'P00000333', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1661, 1, 0, 'D000000001661', 'L00000405', 'P00000349', '60.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1662, 1, 1, 'D000000001662', 'L00000405', 'P00000341', '68.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:36'),
(1663, 1, 2, 'D000000001663', 'L00000405', 'P00000345', '60.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1664, 1, 3, 'D000000001664', 'L00000405', 'P00000350', '50.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1665, 1, 0, 'D000000001665', 'L00000406', 'P00000356', '76.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1666, 1, 1, 'D000000001666', 'L00000406', 'P00000353', '87.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1667, 1, 2, 'D000000001667', 'L00000406', 'P00000352', '76.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1668, 1, 0, 'D000000001668', 'L00000407', 'P00000070', '29.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1669, 1, 1, 'D000000001669', 'L00000407', 'P00000364', '28.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1670, 1, 0, 'D000000001670', 'L00000408', 'P00000374', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1671, 1, 1, 'D000000001671', 'L00000408', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1672, 1, 2, 'D000000001672', 'L00000408', 'P00000375', '201.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1673, 1, 0, 'D000000001673', 'L00000409', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1674, 1, 1, 'D000000001674', 'L00000409', 'P00000391', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1675, 1, 2, 'D000000001675', 'L00000409', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1676, 1, 3, 'D000000001676', 'L00000409', 'P00000400', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1677, 1, 0, 'D000000001677', 'L00000410', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1678, 1, 1, 'D000000001678', 'L00000410', 'P00000406', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1679, 1, 2, 'D000000001679', 'L00000410', 'P00000405', '73.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1680, 1, 0, 'D000000001680', 'L00000411', 'P00000165', '65.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1681, 1, 1, 'D000000001681', 'L00000411', 'P00000166', '65.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1682, 1, 0, 'D000000001682', 'L00000412', 'P00000176', '1875.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:37'),
(1683, 1, 0, 'D000000001683', 'L00000413', 'P00000182', '33.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1684, 1, 1, 'D000000001684', 'L00000413', 'P00000189', '87.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1685, 1, 2, 'D000000001685', 'L00000413', 'P00000190', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1686, 1, 0, 'D000000001686', 'L00000414', 'P00000264', '45.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1687, 1, 1, 'D000000001687', 'L00000414', 'P00000261', '38.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1688, 1, 2, 'D000000001688', 'L00000414', 'P00000266', '103.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1689, 1, 0, 'D000000001689', 'L00000415', 'P00000216', '35.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1690, 1, 1, 'D000000001690', 'L00000415', 'P00000217', '37.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1691, 1, 2, 'D000000001691', 'L00000415', 'P00000220', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1692, 1, 0, 'D000000001692', 'L00000416', 'P00000144', '112.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1693, 1, 1, 'D000000001693', 'L00000416', 'P00000142', '148.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1694, 1, 2, 'D000000001694', 'L00000416', 'P00000145', '178.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1695, 1, 0, 'D000000001695', 'L00000417', 'P00000133', '74.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1696, 1, 1, 'D000000001696', 'L00000417', 'P00000137', '83.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1697, 1, 2, 'D000000001697', 'L00000417', 'P00000139', '83.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1698, 1, 3, 'D000000001698', 'L00000417', 'P00000131', '87.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1699, 1, 0, 'D000000001699', 'L00000418', 'P00000125', '124.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1700, 1, 1, 'D000000001700', 'L00000418', 'P00000130', '126.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1701, 1, 2, 'D000000001701', 'L00000418', 'P00000121', '153.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:38'),
(1702, 1, 0, 'D000000001702', 'L00000419', 'P00000120', '91.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1703, 1, 1, 'D000000001703', 'L00000419', 'P00000116', '63.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1704, 1, 2, 'D000000001704', 'L00000419', 'P00000117', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1705, 1, 0, 'D000000001705', 'L00000420', 'P00000107', '30.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1706, 1, 1, 'D000000001706', 'L00000420', 'P00000103', '69.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(1707, 1, 2, 'D000000001707', 'L00000420', 'P00000106', '74.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:39'),
(1708, 0, 0, 'D000000001708', 'L00000421', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1709, 0, 1, 'D000000001709', 'L00000421', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1710, 0, 2, 'D000000001710', 'L00000421', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1711, 0, 3, 'D000000001711', 'L00000421', 'P00000367', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1712, 0, 4, 'D000000001712', 'L00000421', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1713, 0, 5, 'D000000001713', 'L00000421', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1714, 0, 6, 'D000000001714', 'L00000421', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1715, 1, 7, 'D000000001715', 'L00000421', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1716, 1, 8, 'D000000001716', 'L00000421', 'P00000061', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1717, 1, 9, 'D000000001717', 'L00000421', 'P00000370', '63.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1718, 1, 0, 'D000000001718', 'L00000422', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1719, 0, 1, 'D000000001719', 'L00000422', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1720, 1, 2, 'D000000001720', 'L00000422', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1721, 0, 3, 'D000000001721', 'L00000422', 'P00000216', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1722, 0, 4, 'D000000001722', 'L00000422', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1723, 0, 5, 'D000000001723', 'L00000422', 'P00000239', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1724, 0, 6, 'D000000001724', 'L00000422', 'P00000217', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51');
INSERT INTO `list_details` (`id`, `is_checked`, `list_index`, `detail_id`, `list_id`, `product_id`, `current_price`, `quantity`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1725, 0, 7, 'D000000001725', 'L00000422', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1726, 1, 8, 'D000000001726', 'L00000422', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1727, 1, 9, 'D000000001727', 'L00000422', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1728, 1, 0, 'D000000001728', 'L00000423', 'P00000419', '16.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1729, 0, 1, 'D000000001729', 'L00000423', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1730, 0, 2, 'D000000001730', 'L00000423', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1731, 0, 3, 'D000000001731', 'L00000423', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1732, 1, 4, 'D000000001732', 'L00000423', 'P00000264', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1733, 0, 5, 'D000000001733', 'L00000423', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1734, 0, 6, 'D000000001734', 'L00000423', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1735, 0, 7, 'D000000001735', 'L00000423', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1736, 1, 8, 'D000000001736', 'L00000423', 'P00000268', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1737, 1, 9, 'D000000001737', 'L00000423', 'P00000262', '86.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1738, 1, 0, 'D000000001738', 'L00000424', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1739, 0, 1, 'D000000001739', 'L00000424', 'P00000385', '14.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1740, 1, 2, 'D000000001740', 'L00000424', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1741, 0, 3, 'D000000001741', 'L00000424', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1742, 0, 4, 'D000000001742', 'L00000424', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1743, 1, 5, 'D000000001743', 'L00000424', 'P00000089', '13.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1744, 1, 6, 'D000000001744', 'L00000424', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1745, 0, 7, 'D000000001745', 'L00000424', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1746, 0, 8, 'D000000001746', 'L00000424', 'P00000386', '21.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1747, 0, 9, 'D000000001747', 'L00000424', 'P00000086', '17.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1748, 0, 0, 'D000000001748', 'L00000425', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1749, 1, 1, 'D000000001749', 'L00000425', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1750, 1, 2, 'D000000001750', 'L00000425', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1751, 0, 3, 'D000000001751', 'L00000425', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1752, 0, 4, 'D000000001752', 'L00000425', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1753, 0, 5, 'D000000001753', 'L00000425', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1754, 0, 6, 'D000000001754', 'L00000425', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1755, 0, 7, 'D000000001755', 'L00000425', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1756, 1, 8, 'D000000001756', 'L00000425', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1757, 0, 9, 'D000000001757', 'L00000425', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1758, 1, 0, 'D000000001758', 'L00000426', 'P00000008', '324.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(1759, 1, 1, 'D000000001759', 'L00000426', 'P00000004', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(1760, 1, 0, 'D000000001760', 'L00000427', 'P00000018', '75.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(1761, 1, 1, 'D000000001761', 'L00000427', 'P00000019', '75.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(1762, 0, 0, 'D000000001762', 'L00000428', 'P00000025', '2117.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:41'),
(1763, 1, 0, 'D000000001763', 'L00000429', 'P00000034', '38.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1764, 1, 1, 'D000000001764', 'L00000429', 'P00000039', '41.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1765, 1, 2, 'D000000001765', 'L00000429', 'P00000037', '11.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1766, 1, 0, 'D000000001766', 'L00000430', 'P00000049', '21.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1767, 1, 1, 'D000000001767', 'L00000430', 'P00000048', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1768, 1, 0, 'D000000001768', 'L00000431', 'P00000055', '66.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1769, 1, 1, 'D000000001769', 'L00000431', 'P00000057', '69.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1770, 1, 2, 'D000000001770', 'L00000431', 'P00000053', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1771, 1, 0, 'D000000001771', 'L00000432', 'P00000061', '62.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1772, 1, 1, 'D000000001772', 'L00000432', 'P00000063', '32.95', 6, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1773, 1, 0, 'D000000001773', 'L00000433', 'P00000077', '18.50', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1774, 1, 1, 'D000000001774', 'L00000433', 'P00000078', '29.95', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1775, 1, 2, 'D000000001775', 'L00000433', 'P00000079', '50.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1776, 1, 0, 'D000000001776', 'L00000434', 'P00000090', '64.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1777, 1, 0, 'D000000001777', 'L00000435', 'P00000096', '149.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1778, 1, 0, 'D000000001778', 'L00000436', 'P00000402', '94.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1779, 1, 1, 'D000000001779', 'L00000436', 'P00000405', '73.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1780, 1, 2, 'D000000001780', 'L00000436', 'P00000410', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1781, 1, 0, 'D000000001781', 'L00000437', 'P00000419', '16.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1782, 1, 1, 'D000000001782', 'L00000437', 'P00000415', '29.75', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1783, 1, 2, 'D000000001783', 'L00000437', 'P00000418', '38.00', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1784, 1, 0, 'D000000001784', 'L00000438', 'P00000430', '131.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1785, 1, 1, 'D000000001785', 'L00000438', 'P00000425', '167.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1786, 1, 2, 'D000000001786', 'L00000438', 'P00000426', '189.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1787, 1, 0, 'D000000001787', 'L00000439', 'P00000431', '71.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1788, 1, 1, 'D000000001788', 'L00000439', 'P00000432', '165.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1789, 1, 2, 'D000000001789', 'L00000439', 'P00000433', '127.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:42'),
(1790, 1, 0, 'D000000001790', 'L00000440', 'P00000314', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1791, 1, 1, 'D000000001791', 'L00000440', 'P00000318', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1792, 1, 2, 'D000000001792', 'L00000440', 'P00000312', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1793, 1, 3, 'D000000001793', 'L00000440', 'P00000316', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1794, 1, 4, 'D000000001794', 'L00000440', 'P00000319', '70.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1795, 1, 0, 'D000000001795', 'L00000441', 'P00000395', '95.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1796, 1, 1, 'D000000001796', 'L00000441', 'P00000393', '189.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1797, 1, 2, 'D000000001797', 'L00000441', 'P00000399', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1798, 1, 3, 'D000000001798', 'L00000441', 'P00000400', '84.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1799, 1, 0, 'D000000001799', 'L00000442', 'P00000442', '119.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1800, 1, 1, 'D000000001800', 'L00000442', 'P00000441', '189.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1801, 1, 0, 'D000000001801', 'L00000443', 'P00000359', '74.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1802, 1, 1, 'D000000001802', 'L00000443', 'P00000351', '74.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1803, 1, 2, 'D000000001803', 'L00000443', 'P00000352', '76.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1804, 1, 0, 'D000000001804', 'L00000444', 'P00000369', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1805, 1, 1, 'D000000001805', 'L00000444', 'P00000362', '58.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1806, 1, 0, 'D000000001806', 'L00000445', 'P00000376', '300.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:43'),
(1807, 1, 1, 'D000000001807', 'L00000445', 'P00000377', '322.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1808, 0, 0, 'D000000001808', 'L00000446', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1809, 0, 1, 'D000000001809', 'L00000446', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1810, 0, 2, 'D000000001810', 'L00000446', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1811, 0, 3, 'D000000001811', 'L00000446', 'P00000367', '32.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1812, 0, 4, 'D000000001812', 'L00000446', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1813, 0, 5, 'D000000001813', 'L00000446', 'P00000063', '32.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1814, 0, 6, 'D000000001814', 'L00000446', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1815, 1, 7, 'D000000001815', 'L00000446', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1816, 1, 8, 'D000000001816', 'L00000446', 'P00000061', '62.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1817, 1, 9, 'D000000001817', 'L00000446', 'P00000370', '63.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1818, 1, 0, 'D000000001818', 'L00000447', 'P00000050', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1819, 0, 1, 'D000000001819', 'L00000447', 'P00000092', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1820, 1, 2, 'D000000001820', 'L00000447', 'P00000069', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1821, 0, 3, 'D000000001821', 'L00000447', 'P00000216', '35.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1822, 0, 4, 'D000000001822', 'L00000447', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1823, 0, 5, 'D000000001823', 'L00000447', 'P00000239', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1824, 0, 6, 'D000000001824', 'L00000447', 'P00000217', '37.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1825, 0, 7, 'D000000001825', 'L00000447', 'P00000093', '36.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1826, 1, 8, 'D000000001826', 'L00000447', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1827, 1, 9, 'D000000001827', 'L00000447', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1828, 1, 0, 'D000000001828', 'L00000448', 'P00000419', '16.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:44'),
(1829, 0, 1, 'D000000001829', 'L00000448', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1830, 0, 2, 'D000000001830', 'L00000448', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1831, 0, 3, 'D000000001831', 'L00000448', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1832, 1, 4, 'D000000001832', 'L00000448', 'P00000264', '45.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1833, 0, 5, 'D000000001833', 'L00000448', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1834, 0, 6, 'D000000001834', 'L00000448', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1835, 0, 7, 'D000000001835', 'L00000448', 'P00000261', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1836, 1, 8, 'D000000001836', 'L00000448', 'P00000268', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1837, 1, 9, 'D000000001837', 'L00000448', 'P00000262', '86.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1838, 1, 0, 'D000000001838', 'L00000449', 'P00000388', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1839, 0, 1, 'D000000001839', 'L00000449', 'P00000385', '14.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1840, 1, 2, 'D000000001840', 'L00000449', 'P00000409', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1841, 0, 3, 'D000000001841', 'L00000449', 'P00000384', '12.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1842, 0, 4, 'D000000001842', 'L00000449', 'P00000397', '11.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1843, 1, 5, 'D000000001843', 'L00000449', 'P00000089', '13.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1844, 1, 6, 'D000000001844', 'L00000449', 'P00000383', '13.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1845, 0, 7, 'D000000001845', 'L00000449', 'P00000373', '20.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1846, 0, 8, 'D000000001846', 'L00000449', 'P00000386', '21.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1847, 0, 9, 'D000000001847', 'L00000449', 'P00000086', '17.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1848, 0, 0, 'D000000001848', 'L00000450', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1849, 1, 1, 'D000000001849', 'L00000450', 'P00000412', '28.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1850, 1, 2, 'D000000001850', 'L00000450', 'P00000364', '28.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1851, 0, 3, 'D000000001851', 'L00000450', 'P00000070', '29.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1852, 0, 4, 'D000000001852', 'L00000450', 'P00000417', '32.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1853, 0, 5, 'D000000001853', 'L00000450', 'P00000107', '30.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1854, 0, 6, 'D000000001854', 'L00000450', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1855, 0, 7, 'D000000001855', 'L00000450', 'P00000415', '29.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1856, 1, 8, 'D000000001856', 'L00000450', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1857, 0, 9, 'D000000001857', 'L00000450', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1858, 1, 0, 'D000000001858', 'L00000451', 'P00000301', '149.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1859, 1, 1, 'D000000001859', 'L00000451', 'P00000310', '294.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:45'),
(1860, 1, 0, 'D000000001860', 'L00000452', 'P00000314', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1861, 1, 1, 'D000000001861', 'L00000452', 'P00000318', '56.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1862, 1, 2, 'D000000001862', 'L00000452', 'P00000315', '61.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1863, 1, 3, 'D000000001863', 'L00000452', 'P00000311', '65.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1864, 1, 0, 'D000000001864', 'L00000453', 'P00000321', '140.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1865, 1, 1, 'D000000001865', 'L00000453', 'P00000323', '200.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1866, 1, 0, 'D000000001866', 'L00000454', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1867, 1, 1, 'D000000001867', 'L00000454', 'P00000332', '64.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1868, 1, 2, 'D000000001868', 'L00000454', 'P00000339', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1869, 1, 0, 'D000000001869', 'L00000455', 'P00000347', '28.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1870, 1, 1, 'D000000001870', 'L00000455', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1871, 1, 2, 'D000000001871', 'L00000455', 'P00000342', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1872, 1, 3, 'D000000001872', 'L00000455', 'P00000348', '42.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1873, 1, 0, 'D000000001873', 'L00000456', 'P00000358', '51.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1874, 1, 1, 'D000000001874', 'L00000456', 'P00000360', '68.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1875, 1, 2, 'D000000001875', 'L00000456', 'P00000355', '68.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:46'),
(1876, 1, 0, 'D000000001876', 'L00000457', 'P00000364', '28.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1877, 1, 1, 'D000000001877', 'L00000457', 'P00000361', '32.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1878, 1, 2, 'D000000001878', 'L00000457', 'P00000367', '32.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1879, 1, 0, 'D000000001879', 'L00000458', 'P00000371', '8.35', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1880, 1, 1, 'D000000001880', 'L00000458', 'P00000372', '8.35', 10, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1881, 1, 2, 'D000000001881', 'L00000458', 'P00000374', '74.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1882, 1, 0, 'D000000001882', 'L00000459', 'P00000382', '129.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1883, 1, 1, 'D000000001883', 'L00000459', 'P00000381', '89.75', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1884, 1, 0, 'D000000001884', 'L00000460', 'P00000395', '95.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1885, 1, 1, 'D000000001885', 'L00000460', 'P00000398', '437.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1886, 1, 0, 'D000000001886', 'L00000461', 'P00000190', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1887, 1, 1, 'D000000001887', 'L00000461', 'P00000183', '94.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1888, 1, 2, 'D000000001888', 'L00000461', 'P00000189', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1889, 1, 0, 'D000000001889', 'L00000462', 'P00000197', '49.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1890, 1, 1, 'D000000001890', 'L00000462', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1891, 1, 2, 'D000000001891', 'L00000462', 'P00000195', '56.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1892, 1, 3, 'D000000001892', 'L00000462', 'P00000200', '65.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1893, 1, 0, 'D000000001893', 'L00000463', 'P00000201', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1894, 1, 1, 'D000000001894', 'L00000463', 'P00000202', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1895, 1, 2, 'D000000001895', 'L00000463', 'P00000205', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1896, 1, 3, 'D000000001896', 'L00000463', 'P00000206', '91.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:47'),
(1897, 1, 0, 'D000000001897', 'L00000464', 'P00000364', '28.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1898, 1, 1, 'D000000001898', 'L00000464', 'P00000362', '58.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1899, 1, 2, 'D000000001899', 'L00000464', 'P00000363', '70.75', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1900, 1, 0, 'D000000001900', 'L00000465', 'P00000246', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1901, 1, 1, 'D000000001901', 'L00000465', 'P00000247', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1902, 1, 0, 'D000000001902', 'L00000466', 'P00000001', '85.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1903, 1, 1, 'D000000001903', 'L00000466', 'P00000002', '76.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1904, 1, 2, 'D000000001904', 'L00000466', 'P00000003', '72.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1905, 1, 0, 'D000000001905', 'L00000467', 'P00000015', '66.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1906, 1, 1, 'D000000001906', 'L00000467', 'P00000016', '66.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1907, 1, 2, 'D000000001907', 'L00000467', 'P00000014', '71.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1908, 1, 3, 'D000000001908', 'L00000467', 'P00000017', '71.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1909, 1, 0, 'D000000001909', 'L00000468', 'P00000026', '2419.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1910, 1, 0, 'D000000001910', 'L00000469', 'P00000077', '18.50', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1911, 1, 1, 'D000000001911', 'L00000469', 'P00000078', '29.95', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1912, 1, 2, 'D000000001912', 'L00000469', 'P00000079', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1913, 1, 0, 'D000000001913', 'L00000470', 'P00000116', '63.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1914, 1, 1, 'D000000001914', 'L00000470', 'P00000114', '69.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1915, 1, 2, 'D000000001915', 'L00000470', 'P00000120', '91.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:48'),
(1916, 0, 0, 'D000000001916', 'L00000471', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1917, 0, 1, 'D000000001917', 'L00000471', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1918, 0, 2, 'D000000001918', 'L00000471', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1919, 0, 3, 'D000000001919', 'L00000471', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1920, 0, 4, 'D000000001920', 'L00000471', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1921, 0, 5, 'D000000001921', 'L00000471', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1922, 1, 6, 'D000000001922', 'L00000471', 'P00000219', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1923, 0, 7, 'D000000001923', 'L00000471', 'P00000214', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1924, 1, 8, 'D000000001924', 'L00000471', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1925, 1, 9, 'D000000001925', 'L00000471', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1926, 0, 0, 'D000000001926', 'L00000472', 'P00000194', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(1927, 1, 1, 'D000000001927', 'L00000472', 'P00000191', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(1928, 1, 2, 'D000000001928', 'L00000472', 'P00000192', '79.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1929, 0, 3, 'D000000001929', 'L00000472', 'P00000042', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1930, 0, 4, 'D000000001930', 'L00000472', 'P00000199', '109.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1931, 0, 5, 'D000000001931', 'L00000472', 'P00000196', '115.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1932, 0, 6, 'D000000001932', 'L00000472', 'P00000044', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1933, 0, 7, 'D000000001933', 'L00000472', 'P00000195', '56.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1934, 0, 8, 'D000000001934', 'L00000472', 'P00000046', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1935, 1, 9, 'D000000001935', 'L00000472', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1936, 1, 0, 'D000000001936', 'L00000473', 'P00000240', '27.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1937, 0, 1, 'D000000001937', 'L00000473', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1938, 0, 2, 'D000000001938', 'L00000473', 'P00000237', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1939, 1, 3, 'D000000001939', 'L00000473', 'P00000389', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1940, 1, 4, 'D000000001940', 'L00000473', 'P00000390', '23.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1941, 0, 5, 'D000000001941', 'L00000473', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1942, 0, 6, 'D000000001942', 'L00000473', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1943, 0, 7, 'D000000001943', 'L00000473', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1944, 1, 8, 'D000000001944', 'L00000473', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1945, 1, 9, 'D000000001945', 'L00000473', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1946, 1, 0, 'D000000001946', 'L00000474', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1947, 0, 1, 'D000000001947', 'L00000474', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1948, 0, 2, 'D000000001948', 'L00000474', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1949, 1, 3, 'D000000001949', 'L00000474', 'P00000390', '23.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1950, 1, 4, 'D000000001950', 'L00000474', 'P00000389', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1951, 0, 5, 'D000000001951', 'L00000474', 'P00000237', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1952, 0, 6, 'D000000001952', 'L00000474', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1953, 0, 7, 'D000000001953', 'L00000474', 'P00000240', '27.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1954, 0, 8, 'D000000001954', 'L00000474', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1955, 1, 9, 'D000000001955', 'L00000474', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1956, 1, 0, 'D000000001956', 'L00000475', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1957, 0, 1, 'D000000001957', 'L00000475', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1958, 0, 2, 'D000000001958', 'L00000475', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1959, 0, 3, 'D000000001959', 'L00000475', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1960, 0, 4, 'D000000001960', 'L00000475', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1961, 1, 5, 'D000000001961', 'L00000475', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1962, 0, 6, 'D000000001962', 'L00000475', 'P00000219', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1963, 0, 7, 'D000000001963', 'L00000475', 'P00000214', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1964, 1, 8, 'D000000001964', 'L00000475', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1965, 1, 9, 'D000000001965', 'L00000475', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(1966, 1, 0, 'D000000001966', 'L00000476', 'P00000154', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(1967, 1, 1, 'D000000001967', 'L00000476', 'P00000151', '260.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:50'),
(1968, 1, 0, 'D000000001968', 'L00000477', 'P00000168', '80.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1969, 1, 1, 'D000000001969', 'L00000477', 'P00000169', '80.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1970, 1, 0, 'D000000001970', 'L00000478', 'P00000180', '1050.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1971, 1, 0, 'D000000001971', 'L00000479', 'P00000182', '33.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1972, 1, 1, 'D000000001972', 'L00000479', 'P00000189', '87.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1973, 1, 2, 'D000000001973', 'L00000479', 'P00000190', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1974, 1, 0, 'D000000001974', 'L00000480', 'P00000191', '89.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(1975, 1, 1, 'D000000001975', 'L00000480', 'P00000192', '79.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1976, 1, 2, 'D000000001976', 'L00000480', 'P00000195', '56.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1977, 1, 0, 'D000000001977', 'L00000481', 'P00000207', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1978, 1, 1, 'D000000001978', 'L00000481', 'P00000203', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1979, 1, 2, 'D000000001979', 'L00000481', 'P00000204', '82.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1980, 1, 3, 'D000000001980', 'L00000481', 'P00000210', '84.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1981, 1, 0, 'D000000001981', 'L00000482', 'P00000216', '35.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1982, 1, 1, 'D000000001982', 'L00000482', 'P00000217', '37.00', 5, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1983, 1, 0, 'D000000001983', 'L00000483', 'P00000226', '218.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1984, 1, 1, 'D000000001984', 'L00000483', 'P00000229', '345.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1985, 1, 0, 'D000000001985', 'L00000484', 'P00000231', '66.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1986, 1, 1, 'D000000001986', 'L00000484', 'P00000233', '72.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1987, 1, 0, 'D000000001987', 'L00000485', 'P00000248', '105.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1988, 1, 1, 'D000000001988', 'L00000485', 'P00000246', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1989, 1, 2, 'D000000001989', 'L00000485', 'P00000247', '173.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1990, 1, 0, 'D000000001990', 'L00000486', 'P00000031', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1991, 1, 1, 'D000000001991', 'L00000486', 'P00000032', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1992, 1, 2, 'D000000001992', 'L00000486', 'P00000033', '9.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1993, 1, 3, 'D000000001993', 'L00000486', 'P00000038', '71.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1994, 1, 0, 'D000000001994', 'L00000487', 'P00000045', '41.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:51'),
(1995, 1, 1, 'D000000001995', 'L00000487', 'P00000044', '59.00', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(1996, 1, 0, 'D000000001996', 'L00000488', 'P00000069', '34.50', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1997, 1, 1, 'D000000001997', 'L00000488', 'P00000063', '32.95', 3, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(1998, 1, 2, 'D000000001998', 'L00000488', 'P00000066', '34.50', 4, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(1999, 1, 0, 'D000000001999', 'L00000489', 'P00000116', '63.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2000, 1, 1, 'D000000002000', 'L00000489', 'P00000114', '69.50', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2001, 1, 2, 'D000000002001', 'L00000489', 'P00000117', '71.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2002, 1, 0, 'D000000002002', 'L00000490', 'P00000012', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2003, 1, 1, 'D000000002003', 'L00000490', 'P00000013', '211.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2004, 1, 0, 'D000000002004', 'L00000491', 'P00000333', '263.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2005, 1, 1, 'D000000002005', 'L00000491', 'P00000334', '59.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2006, 1, 2, 'D000000002006', 'L00000491', 'P00000339', '74.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2007, 1, 0, 'D000000002007', 'L00000492', 'P00000301', '149.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2008, 1, 1, 'D000000002008', 'L00000492', 'P00000302', '325.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2009, 1, 0, 'D000000002009', 'L00000493', 'P00000323', '200.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2010, 1, 1, 'D000000002010', 'L00000493', 'P00000321', '140.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2011, 1, 0, 'D000000002011', 'L00000494', 'P00000380', '378.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2012, 1, 1, 'D000000002012', 'L00000494', 'P00000378', '322.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2013, 1, 0, 'D000000002013', 'L00000495', 'P00000403', '138.00', 2, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:52'),
(2014, 1, 1, 'D000000002014', 'L00000495', 'P00000401', '137.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(2015, 0, 0, 'D000000002015', 'L00000496', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2016, 0, 1, 'D000000002016', 'L00000496', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2017, 0, 2, 'D000000002017', 'L00000496', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2018, 0, 3, 'D000000002018', 'L00000496', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2019, 0, 4, 'D000000002019', 'L00000496', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2020, 0, 5, 'D000000002020', 'L00000496', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2021, 1, 6, 'D000000002021', 'L00000496', 'P00000219', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2022, 0, 7, 'D000000002022', 'L00000496', 'P00000214', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(2023, 1, 8, 'D000000002023', 'L00000496', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(2024, 1, 9, 'D000000002024', 'L00000496', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(2025, 0, 0, 'D000000002025', 'L00000497', 'P00000194', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(2026, 1, 1, 'D000000002026', 'L00000497', 'P00000191', '89.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:53'),
(2027, 1, 2, 'D000000002027', 'L00000497', 'P00000192', '79.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2028, 0, 3, 'D000000002028', 'L00000497', 'P00000042', '78.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2029, 0, 4, 'D000000002029', 'L00000497', 'P00000199', '109.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2030, 0, 5, 'D000000002030', 'L00000497', 'P00000196', '115.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2031, 0, 6, 'D000000002031', 'L00000497', 'P00000044', '59.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2032, 0, 7, 'D000000002032', 'L00000497', 'P00000195', '56.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2033, 0, 8, 'D000000002033', 'L00000497', 'P00000046', '55.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2034, 1, 9, 'D000000002034', 'L00000497', 'P00000198', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2035, 1, 0, 'D000000002035', 'L00000498', 'P00000240', '27.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2036, 0, 1, 'D000000002036', 'L00000498', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2037, 0, 2, 'D000000002037', 'L00000498', 'P00000237', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2038, 1, 3, 'D000000002038', 'L00000498', 'P00000389', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2039, 1, 4, 'D000000002039', 'L00000498', 'P00000390', '23.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2040, 0, 5, 'D000000002040', 'L00000498', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2041, 0, 6, 'D000000002041', 'L00000498', 'P00000067', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:54'),
(2042, 0, 7, 'D000000002042', 'L00000498', 'P00000066', '34.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2043, 1, 8, 'D000000002043', 'L00000498', 'P00000369', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2044, 1, 9, 'D000000002044', 'L00000498', 'P00000368', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2045, 1, 0, 'D000000002045', 'L00000499', 'P00000035', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2046, 0, 1, 'D000000002046', 'L00000499', 'P00000049', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2047, 0, 2, 'D000000002047', 'L00000499', 'P00000224', '21.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2048, 1, 3, 'D000000002048', 'L00000499', 'P00000390', '23.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2049, 1, 4, 'D000000002049', 'L00000499', 'P00000389', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2050, 0, 5, 'D000000002050', 'L00000499', 'P00000237', '25.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2051, 0, 6, 'D000000002051', 'L00000499', 'P00000408', '26.60', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2052, 0, 7, 'D000000002052', 'L00000499', 'P00000240', '27.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2053, 0, 8, 'D000000002053', 'L00000499', 'P00000361', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2054, 1, 9, 'D000000002054', 'L00000499', 'P00000367', '32.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2055, 1, 0, 'D000000002055', 'L00000500', 'P00000418', '38.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2056, 0, 1, 'D000000002056', 'L00000500', 'P00000034', '38.50', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2057, 0, 2, 'D000000002057', 'L00000500', 'P00000413', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2058, 0, 3, 'D000000002058', 'L00000500', 'P00000211', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2059, 0, 4, 'D000000002059', 'L00000500', 'P00000394', '40.25', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2060, 1, 5, 'D000000002060', 'L00000500', 'P00000343', '40.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2061, 0, 6, 'D000000002061', 'L00000500', 'P00000219', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:55'),
(2062, 0, 7, 'D000000002062', 'L00000500', 'P00000214', '39.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(2063, 1, 8, 'D000000002063', 'L00000500', 'P00000346', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(2064, 1, 9, 'D000000002064', 'L00000500', 'P00000350', '50.00', 1, 0, '2022-09-17 16:00:00', '2022-11-03 01:05:56'),
(2065, 1, 0, 'D000000002065', 'L00000501', 'P00000372', '8.35', 1, 1, '2022-11-14 20:38:52', '2022-11-14 20:39:37'),
(2066, 0, 1, 'D000000002066', 'L00000501', 'P00000371', '8.35', 1, 1, '2022-11-14 20:38:52', '2022-11-14 20:39:37'),
(2067, 1, 0, 'D000000002067', 'L00000502', 'P00000082', '6.00', 1, 0, '2022-11-15 22:53:36', '2022-11-15 22:56:53'),
(2068, 1, 1, 'D000000002068', 'L00000502', 'P00000083', '8.00', 1, 0, '2022-11-15 22:53:37', '2022-11-15 22:56:53'),
(2069, 1, 2, 'D000000002069', 'L00000502', 'P00000373', '20.25', 1, 0, '2022-11-15 22:53:37', '2022-11-15 22:56:53'),
(2070, 0, 3, 'D000000002070', 'L00000502', 'P00000075', '93.50', 1, 0, '2022-11-15 22:53:37', '2022-11-15 22:56:53'),
(2071, 0, 4, 'D000000002071', 'L00000502', 'P00000073', '104.50', 1, 0, '2022-11-15 22:53:37', '2022-11-15 22:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `market_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `market_id`, `market_name`, `email`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'M000001', 'SM Supermarket Bacolod', 'sm_bacolod@shopculator.com', 0, '2022-07-07 19:48:20', '2022-09-25 01:50:50'),
(2, 'M000002', 'AllDay Supermarket Bacolod', 'allday_bacolod@shopculator.com', 0, '2022-07-07 19:48:20', '2022-09-25 01:49:30'),
(3, 'M000003', 'Robinsons Supermarket Bacolod', 'rob_bacolod@shopculator.com', 0, '2022-07-07 19:48:20', '2022-09-25 01:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_08_032101_create_sessions_table', 1),
(7, '2022_07_21_004611_create_shopping_lists_table', 2),
(8, '2022_07_21_004703_create_list_details_table', 2),
(9, '2022_07_21_004803_create_products_table', 2),
(10, '2022_07_21_004825_create_categories_table', 2),
(11, '2022_07_21_004841_create_markets_table', 2),
(12, '2022_08_22_162122_create_cache_table', 3),
(13, '2022_09_12_155622_create_subcategories_table', 4),
(14, '2022_09_13_150707_create_roles_table', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `market_id`, `subcategory_id`, `product_name`, `price`, `image_path`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'P00000001', 'M000001', 'S000001', 'SM Bonus Baby Diapers XL | 10pcs', '85.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20145786.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(2, 'P00000002', 'M000001', 'S000001', 'SM Bonus Baby Diapers L | 10pcs', '76.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwyglostnfound220145787_-_sm_bonus_dry_baby_diaper_travel_pack_l-10s.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(3, 'P00000003', 'M000001', 'S000001', 'SM Bonus Baby Diapers M | 10pcs', '72.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052020145788_diaper.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(4, 'P00000004', 'M000001', 'S000001', 'SM Bonus Baby Pants Diaper XL | 5pcs', '56.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052020178535_bonus.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(5, 'P00000005', 'M000001', 'S000001', 'SM Bonus Baby Pants Mini Pack L | 5pcs', '46.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20178533_sm_bonus_baby_pants_mini_pack_l_5pcs_copy__1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(6, 'P00000006', 'M000001', 'S000001', 'EQ Pants Jumbo Pack XXXL | 40pcs', '421.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20439886_eq_pants_jumbo_pack_xxxl40_1.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(7, 'P00000007', 'M000001', 'S000001', 'EQ Pants Baby Diaper Jumbo Pack XXL | 40pcs', '334.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20395285_eq_pants_jumbo_pack_xxl40.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(8, 'P00000008', 'M000001', 'S000001', 'EQ Pants Baby Diaper Jumbo Pack XL | 40pcs', '324.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20395302_eq_pants_jumbo_pack_xl_40.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(9, 'P00000009', 'M000001', 'S000001', 'EQ Pants Baby Diaper Jumbo Pack Large | 40pcs', '296.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20395303_eq_pants_jumbo_pack_l40.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(10, 'P00000010', 'M000001', 'S000001', 'EQ Pants Jumbo Pack Medium | 40pcs', '264.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20395304_eq_pants_jumbo_pack_m40.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(11, 'P00000011', 'M000001', 'S000002', 'Coles Beef With Vegetables | 120g', '88.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20527010.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(12, 'P00000012', 'M000001', 'S000002', 'Nestle Cerelac Porridge Veggies | 200g', '211.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20512950_1.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(13, 'P00000013', 'M000001', 'S000002', 'Nestle Cerelac Porridge Chicken | 200g', '211.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20512951_nestle_cerelac_porridge_chicken_300g.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(14, 'P00000014', 'M000001', 'S000002', 'Milna Baby Biscuits Banana | 130g', '71.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20338666_milna_baby_biscuits_banana_130g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(15, 'P00000015', 'M000001', 'S000002', 'Milna Chicken Soup Sweetcorn | 120g', '66.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20338659_milna_chicken_soup_sweetcorn_120g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(16, 'P00000016', 'M000001', 'S000002', 'Milna Brown Rice Banana | 120g', '66.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20338662_milna_brown_rice_banana_120g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(17, 'P00000017', 'M000001', 'S000002', 'Milna Baby Biscuits Original | 130g', '71.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20338667_milna_baby_biscuits_original_130g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(18, 'P00000018', 'M000001', 'S000002', 'Nestle Cerelac Brown Rice | 120g', '75.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10192435_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(19, 'P00000019', 'M000001', 'S000002', 'Nestle Cerelac Soya Rice | 120g', '75.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10192375_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(20, 'P00000020', 'M000001', 'S000002', 'Gerber 1st Foods Apple | 80g', '78.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20147346_applesauce_80g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(21, 'P00000021', 'M000001', 'S000003', 'S26 Gold One Infant Formula Milk | 1.8kg', '2844.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20340191.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(22, 'P00000022', 'M000001', 'S000003', 'S26 One Infant Formula Milk | 1.8kg', '2267.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20340195.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(23, 'P00000023', 'M000001', 'S000003', 'Similac | 1.8kg', '2692.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20393649_similac_1.8kg_1.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(24, 'P00000024', 'M000001', 'S000003', 'Enfamil One A+ Infant Formula Powder 0-6 months | 1.8kg', '2847.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/5/7/57-20318290-enfamil-one-a_-infant-formula-powder-0to6-months-1.8kg.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(25, 'P00000025', 'M000001', 'S000003', 'Enfamil One A+ Infant Formula Powder 0-6 months | 1.2kg', '2117.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11102020318288_enfamil-a__one-_1.2kg.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(26, 'P00000026', 'M000001', 'S000003', 'Nan Optipro HW One Infant Formula 0-6 months | 1.4kg', '2419.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20302443.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(27, 'P00000027', 'M000001', 'S000003', 'Bonna Infant Formula Milk 0-6 months | 2kg', '1194.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/6/0/60-20349070-bonna-infant-milk-2kg.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(28, 'P00000028', 'M000001', 'S000003', 'S26 Gold Two Milk Supplement | 1.8kg', '2684.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20370707.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(29, 'P00000029', 'M000001', 'S000003', 'S26 Two Milk Supplement | 1.8kg', '2148.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20370708.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(30, 'P00000030', 'M000001', 'S000003', 'Similac Gain Two Milk Supplement | 1.8kg', '2617.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052020393648-1.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(31, 'P00000031', 'M000001', 'S000004', 'SM Bonus Gulaman Powder Red | 24g', '9.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts220377699_-_sm_bonus_gulaman_powder_red_24g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(32, 'P00000032', 'M000001', 'S000004', 'SM Bonus Gulaman Powder Green | 24g', '9.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts220377700_-_sm_bonus_gulaman_powder_green_24g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(33, 'P00000033', 'M000001', 'S000004', 'SM Bonus Gulaman Powder Crystal | 24g', '9.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts220377698_-_sm_bonus_gulaman_powder_crystal.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(34, 'P00000034', 'M000001', 'S000004', 'SM Bonus All Purpose Flour | 400g', '38.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20005714-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(35, 'P00000035', 'M000001', 'S000004', 'SM Bonus All Purpose Flour | 200g', '21.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/s/m/sm_bonus_all_purpose_flour_200g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(36, 'P00000036', 'M000001', 'S000004', 'SM Bonus All Purpose Flour | 1kg', '84.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/s/m/sm_bonus_all_purpose_flour_1kg.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(37, 'P00000037', 'M000001', 'S000004', 'Tasty Boy All Purpose Breading Mix | 67g', '11.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwyg20191015-4k_front_photo_update20070354-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(38, 'P00000038', 'M000001', 'S000004', 'Peotraco Glutinous Rice Flour | 500g', '71.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts20021927_-_peotraco_glutinous_rice_flour_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(39, 'P00000039', 'M000001', 'S000004', 'MY San Crushed Graham | 200g', '41.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts10094579_-_m.y._san_crushed_graham_200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(40, 'P00000040', 'M000001', 'S000004', 'Maya The Original Hot Cake Mix | 500g', '62.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10007283_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(41, 'P00000041', 'M000001', 'S000005', 'Ichipan White Bread | 600g', '72.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20455633_ichipan_white_bread_600g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(42, 'P00000042', 'M000001', 'S000005', 'Ichipan Wheat Bread | 600g', '78.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20455632_ichipan_wheat_bread_600g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(43, 'P00000043', 'M000001', 'S000005', 'Marby Whole Wheat Raisin Bread | 410g', '67.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20422415_marby_whole_wheat_raisin_bread_410g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(44, 'P00000044', 'M000001', 'S000005', 'Conching Pullman | 630g', '59.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2022050_conching_pullman_630g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(45, 'P00000045', 'M000001', 'S000005', 'Conching High Grade Cream Bread | 410g', '41.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2022036_conching_high_grade_cream_bread_410gm.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(46, 'P00000046', 'M000001', 'S000005', 'Fountain Head Tasty Bread | 500g', '55.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2021399_fountain_head_tasty_bread_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(47, 'P00000047', 'M000001', 'S000005', 'Gardenia Cheese Buns | 250g 10pcs', '49.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20334955_gardenia_cheesebuns_250g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(48, 'P00000048', 'M000001', 'S000005', 'Marby Cheese Buns | 250g 10pcs', '59.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10051832001_marby_cheese_buns_250g_10_pcs_.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(49, 'P00000049', 'M000001', 'S000005', 'Marby Pinoy Pandesal | 250g', '21.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20169616_pinoy_pandesal_250g_b.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(50, 'P00000050', 'M000001', 'S000005', 'SM Bonus White Bread | 450g', '35.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20193718_sm_bonus_white_bread_450g_b.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(51, 'P00000051', 'M000001', 'S000006', 'Lemon Square Cheese Cake | 30g 10pcs', '61.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2063002_lemon_square_cake_cheese_30g_10_pcs__1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(52, 'P00000052', 'M000001', 'S000006', 'Lemon Square Cake Assorted | 10pcs', '61.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2063238.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(53, 'P00000053', 'M000001', 'S000006', 'Monde Special Mamon Classic | 40g 6pcs', '85.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20166978.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(54, 'P00000054', 'M000001', 'S000006', 'Monde Special Mamon Mocha | 40g 6pcs', '94.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20166977-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(55, 'P00000055', 'M000001', 'S000006', 'Fudgee Bar Chocolate Cream-Filled Cake Bar | 42g 10pcs', '66.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20107732_fudgee_bar_chocolate_42g_10_pcs__1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(56, 'P00000056', 'M000001', 'S000006', 'Suncrest Doowee Donuts | 40g 10pcs', '89.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20192799_suncrest_doowee_donuts_40g_10s_copy_1_.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(57, 'P00000057', 'M000001', 'S000006', 'Quake Overload Mocha | 33g 10pcs', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/1/2152305_quake_overload_mocha_33gx10s.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(58, 'P00000058', 'M000001', 'S000006', 'Quake Overload Black Forest | 330g 10pcs', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20274171-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(59, 'P00000059', 'M000001', 'S000006', 'Quake Choco Bar Choco Filing | 38g 10pcs', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20172325-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(60, 'P00000060', 'M000001', 'S000006', 'Quake Mallow Overload Vanilla | 280g 10pcs', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts20274072-quake_mallow_overload_vanilla_10s_28g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(61, 'P00000061', 'M000001', 'S000007', 'Coca Cola Coke  PET | 1.5L', '62.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010031781_softdrinks.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(62, 'P00000062', 'M000001', 'S000007', 'Coca Cola Coke Zero | 1.5L', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20013162_coke_zero_1.5l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(63, 'P00000063', 'M000001', 'S000007', 'Coke Zero | 320ml', '32.95', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20013160.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(64, 'P00000064', 'M000001', 'S000007', 'Coca Cola Coke Light PET | 1.5L PET', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10070745-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(65, 'P00000065', 'M000001', 'S000007', 'Sprite | 1.5L PET', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010031783_softdrinks.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(66, 'P00000066', 'M000001', 'S000007', 'Sprite Can| 320ml', '34.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006460_sprite_can_320ml.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(67, 'P00000067', 'M000001', 'S000007', 'Sprite Zero | 320ml', '34.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10067454_1.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(68, 'P00000068', 'M000001', 'S000007', 'Royal Tru Orange | 1.5L PET', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010031782_softdrinks.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(69, 'P00000069', 'M000001', 'S000007', 'Royal Can Tru Orange | 320ml', '34.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006461_royal_can_tru_orange_320ml.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(70, 'P00000070', 'M000001', 'S000007', 'Mug Rootbeer | 330ml can', '29.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwyg20191015-4k_front_photo_update10006438-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(71, 'P00000071', 'M000001', 'S000008', 'Nescafe Refill Classic | 200g', '156.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos10262020335454_nescafe_classic_instant_coffee_200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(72, 'P00000072', 'M000001', 'S000008', 'Nescafe Refill Classic | 100g', '77.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10009368_nescafe_classic_instant_coffee_100g_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(73, 'P00000073', 'M000001', 'S000008', 'Nescafe Sticks Classic | 2g 48pcs', '104.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20246999-1.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(74, 'P00000074', 'M000001', 'S000008', 'Nescafe Refill Resealable Classic | 50g', '40.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10009360-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(75, 'P00000075', 'M000001', 'S000008', 'Nescafe Refill Decaf | 80g', '93.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20130787-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(76, 'P00000076', 'M000001', 'S000008', 'Lipton Green Tea 50 bags | 1.5g 50teabags', '399.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10187511_copy_.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(77, 'P00000077', 'M000001', 'S000008', 'Nestea Iced Tea Lemon Blend Litro Pack | 25g', '18.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052020168987_juice.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(78, 'P00000078', 'M000001', 'S000008', 'C2 Green Tea Apple | 500ml', '29.95', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos10262020099025_c2_apple_green_tea_500ml.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(79, 'P00000079', 'M000001', 'S000008', 'C2 Green Tea Lemon | 1L', '50.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20099148-c2_green_tea_lemon_1l_front.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(80, 'P00000080', 'M000001', 'S000008', 'Aldi Turmeric Tea Calamansi | 320g', '202.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11102020335598_aldi_turmeric_tea_wt_clmnsi_bttle_-_320g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(81, 'P00000081', 'M000001', 'S000009', 'SM Bonus Distilled Water | 10L', '75.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts220064590_-_sm_bonus_distilled_water_10l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(82, 'P00000082', 'M000001', 'S000009', 'SM Bonus Distilled Water | 325ml', '6.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010006433_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(83, 'P00000083', 'M000001', 'S000009', 'SM Bonus Distilled Water | 500ml', '8.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010039254_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(84, 'P00000084', 'M000001', 'S000009', 'SM Bonus Distilled Water | 6.6L', '50.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010026618_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(85, 'P00000085', 'M000001', 'S000009', 'Wilkins Distilled Water | 6L', '85.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010020910_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(86, 'P00000086', 'M000001', 'S000009', 'Wilkins Distilled Water | 500ml', '17.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010193170_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(87, 'P00000087', 'M000001', 'S000009', 'Absolute Distilled Water | 500ml', '16.25', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos10262010006425_absolute_distilledwater_500ml.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(88, 'P00000088', 'M000001', 'S000009', 'Natures Spring Mineral Water | 1L', '15.40', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006431_natures_spring_mineral_water_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(89, 'P00000089', 'M000001', 'S000009', 'Summit Natural Drinking Water | 500ml', '13.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006422_-_summit_natural_drinking_water_500ml.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(90, 'P00000090', 'M000001', 'S000009', 'Natures Spring Mineral Water | 6.6L', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006432_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(91, 'P00000091', 'M000001', 'S000010', 'Star Margarine Regular | 1kg', '255.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10009607_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(92, 'P00000092', 'M000001', 'S000010', 'Star Margarine Sweet Blend | 100g', '34.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20099450.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(93, 'P00000093', 'M000001', 'S000010', 'Star Margarine Regular | 100g', '36.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygreplace10041295_-_star_margarine_classic_100g_2_.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(94, 'P00000094', 'M000001', 'S000010', 'Elle & Vire Marquis Butter Unsalted | 200g', '89.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20129147_elle_vire-marquis__unsalte_butter-200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(95, 'P00000095', 'M000001', 'S000010', 'Emborg Cook and Bake Butter | 200g', '90.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygnro_photosv320436458_emborg-cook___bake_butter-200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(96, 'P00000096', 'M000001', 'S000010', 'Emborg Spreadable Butter Salted | 225g', '149.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(97, 'P00000097', 'M000001', 'S000010', 'Elle & Vire Butter Regular Unsalted | 200g', '199.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(98, 'P00000098', 'M000001', 'S000010', 'Emborg Butter Unsalted | 200g', '159.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(99, 'P00000099', 'M000001', 'S000010', 'Emborg Butter Salted | 200g', '159.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(100, 'P00000100', 'M000001', 'S000010', 'Elle & Vire Butter Regular Salted | 200g', '199.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20119684.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(101, 'P00000101', 'M000001', 'S000011', 'Emborg Perfect Slices Cheese | 200g', '99.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(102, 'P00000102', 'M000001', 'S000011', 'Kesorap Express Melt Cheese | 470g', '186.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20437387_kesorap_express_melt_cheese_470g_4_.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(103, 'P00000103', 'M000001', 'S000011', 'CDO Danes Quickmelt Cheese | 165g', '69.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20465206_cdo_danes_quickmelt_cheese_165g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(104, 'P00000104', 'M000001', 'S000011', 'American Heritage Singles | 227g 12pcs', '180.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20200652_american_heritage_singles_227g_12pcs.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(105, 'P00000105', 'M000001', 'S000011', 'Ques-O Cheese Slices | 250g', '76.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10005692005_ques-o_cheese_slices_250g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(106, 'P00000106', 'M000001', 'S000011', 'Che-Vital Cheddar Cheese | 200g', '74.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(107, 'P00000107', 'M000001', 'S000011', 'CDO Bigtime Negosyo Cheese | 165g', '30.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20501585_cdo_bigtime_negosyo_cheese_165g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(108, 'P00000108', 'M000001', 'S000011', 'Emborg Cream Cheese | 200g', '115.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20279192_emborg_cream_cheese_200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(109, 'P00000109', 'M000001', 'S000011', 'Emborg Shredded Parmesan Cheese | 200g', '227.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(110, 'P00000110', 'M000001', 'S000011', 'Chiz Boy Grated Mozzarella Cheese | 200g', '134.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygnro_photosv320358000_chiz_boy_grated_cheese_mozzarella_350g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(111, 'P00000111', 'M000001', 'S000012', 'Nestle Low Fat Milk | 1L', '89.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10093346_nestle_low-fat_milk.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(112, 'P00000112', 'M000001', 'S000012', 'Cowhead Lite Milk | 1L', '99.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2077934-cowhead_lit_milk_1l_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(113, 'P00000113', 'M000001', 'S000012', 'Alaska Fortified Milk | 1L', '74.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygnro_photosv320488746_alaska_fortified_uht_1l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(114, 'P00000114', 'M000001', 'S000012', 'Nestle Fortified | 1L', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20496784_nestle_fortified_milk_1l_full__1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(115, 'P00000115', 'M000001', 'S000012', 'Alaska Slim Low-Fat Milk | 1L', '91.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10024746-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(116, 'P00000116', 'M000001', 'S000012', 'Selecta Sterilized | 1L', '63.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20077990_selecta_full_cream_milk_sterilized_1l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(117, 'P00000117', 'M000001', 'S000012', 'Selecta Fortified Milk | 1L', '71.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10201634_selecta_fortified_milk_1l_full_copy_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(118, 'P00000118', 'M000001', 'S000012', 'Selecta Fortified Low Fat Milk | 1L', '94.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20008134-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(119, 'P00000119', 'M000001', 'S000012', 'Nestle Non-Fat Milk | 1L', '94.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20209532_-_nestle_non_fat_uht_milk_1l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(120, 'P00000120', 'M000001', 'S000012', 'Nestle Fresh Milk | 1L', '91.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10009486_nestle_fresh_uht_milk_1l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(121, 'P00000121', 'M000001', 'S000013', 'SM Bonus C Beef Brisket | 500g', '153.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481846_sm_bonus_c_beef_brisket_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(122, 'P00000122', 'M000001', 'S000013', 'SM Bonus C Beef Cubes | 500g', '153.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481843_sm_bonus_c_beef_cubes_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(123, 'P00000123', 'M000001', 'S000013', 'SM Bonus Sukiyaki Cut | 500g', '192.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481483_sm_bonus_beef_sukiyaki_cut_500g_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(124, 'P00000124', 'M000001', 'S000013', 'SM Bonus Breakfast Steak | 500g', '175.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481886_sm_bonus_breakfast_steak_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(125, 'P00000125', 'M000001', 'S000013', 'SM Bonus Caldereta Cut | 500g', '124.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481889-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(126, 'P00000126', 'M000001', 'S000013', 'SM Bonus Pork Cubes | 500g-550g', '155.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20505165.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(127, 'P00000127', 'M000001', 'S000013', 'SM Bonus Pork Steak | 400g-500g', '163.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20505168.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(128, 'P00000128', 'M000001', 'S000013', 'SM Bonus Pigue | 500g-550g', '155.10', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20505171.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(129, 'P00000129', 'M000001', 'S000013', 'SM Bonus Bacon Slice | 500g-550g', '221.10', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481723_sm_bonus_c-bacon_slice_500g_-_copy_10.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(130, 'P00000130', 'M000001', 'S000013', 'SM Bonus Pata Slice | 400g-500g', '126.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481835_sm_bonus_c_pata_slice__500g_-_copy_10.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(131, 'P00000131', 'M000001', 'S000014', 'SM Bonus Chicken Breast | 500g', '87.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481796_-_sm_bonus_packed_chicken_breast_500g_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(132, 'P00000132', 'M000001', 'S000014', 'SM Bonus Chicken Drumstick | 500g', '87.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481804_-_sm_bonus_packed_chicken_drumstick_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(133, 'P00000133', 'M000001', 'S000014', 'SM Bonus Chicken Liver | 500g', '74.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481809_sm_bonus_chicken_liver_500g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(134, 'P00000134', 'M000001', 'S000014', 'SM Bonus Chicken Thigh | 500g', '87.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481801_-_sm_bonus_packed_chicken_thigh_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(135, 'P00000135', 'M000001', 'S000014', 'SM Bonus Chicken Wings | 500g', '87.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481798_sm_bonus_chicken_wings_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(136, 'P00000136', 'M000001', 'S000014', 'Magnolia Chicken Fillet Breast | 500g pack', '125.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481718_-magnolia-packed-chicken-breast-fillet-500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(137, 'P00000137', 'M000001', 'S000014', 'Magnolia Packed Chicken Breast | 500g', '83.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481786_-_magnolia_packed_chicken_breast_500g_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(138, 'P00000138', 'M000001', 'S000014', 'Magnolia Packed Chicken Wings | 500g', '88.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481787_magnolia_chicken_wings_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(139, 'P00000139', 'M000001', 'S000014', 'Magnolia Packed Chicken Drumstick | 500g', '83.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481789_-_magnolia_packed_chicken_drumstick_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(140, 'P00000140', 'M000001', 'S000014', 'Magnolia Chicken Station Chicken Giniling | 500g Packed', '116.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481793_-_magnolia_packed_chicken_giniling_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(141, 'P00000141', 'M000001', 'S000015', 'Ocean Fresh Tuna Sashimi | 500g', '367.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20430864-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(142, 'P00000142', 'M000001', 'S000015', 'JSL Dagupan Daing na Bangus Boneless | 2pcs', '148.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(143, 'P00000143', 'M000001', 'S000015', 'JSL Dagupan Bangus Belly Boneless | 400g 2pcs', '174.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20151394_jsl_dagupan_boneless_bangus_belly_2s.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(144, 'P00000144', 'M000001', 'S000015', 'PSJ Galunggong Large | 450g-500g', '112.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20400286_-_galunggong.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(145, 'P00000145', 'M000001', 'S000015', 'PSJ Tilapia | 350g-438g', '178.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20400270_-_tilapia.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(146, 'P00000146', 'M000001', 'S000015', 'Fisher Farm\'s Shrimp Kurin Peeled | 500g', '285.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20420065_fisherfarms_kurin_raw_peeled_shrimp_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(147, 'P00000147', 'M000001', 'S000015', 'ISC Lucos Squid Large | 800g-1000g', '450.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2027674_isc_locus_squid_large_.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(148, 'P00000148', 'M000001', 'S000015', 'ISC Kasag Cooked | 800g-1000g', '550.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(149, 'P00000149', 'M000001', 'S000015', 'PSJ Pasayan Putian | 450g-500g', '489.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20400283_-_pasayan.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(150, 'P00000150', 'M000001', 'S000015', 'SMI Shrimp | 450g-500g', '249.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20364033.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-10-29 11:32:16'),
(151, 'P00000151', 'M000002', 'S000001', 'Eq Colors Big Pack 34\'S LARGE', '260.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-big-pack-34s-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(152, 'P00000152', 'M000002', 'S000001', 'Eq Colors Big Pack 38\'S MEDIUM', '260.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-big-pack-38s-medium_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(153, 'P00000153', 'M000002', 'S000001', 'Eq Colors Big Pack 42\'S SMALL', '260.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-big-pack-42s-small_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(154, 'P00000154', 'M000002', 'S000001', 'Eq Colors Big Pack 30\'S EXTRA LARGE', '260.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-big-pack-30s-extra-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(155, 'P00000155', 'M000002', 'S000001', 'Eq Colors Budget Pck 18\'S SMALL', '118.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-budget-pck-18s-small_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(156, 'P00000156', 'M000002', 'S000001', 'Eq Colors Jumbo Pck 54+4\'S LARGE', '378.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-jumbo-pck-544s-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(157, 'P00000157', 'M000002', 'S000001', 'Eq Colors Jumbo Pck 60+4\'S MEDIUM', '378.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-jumbo-pck-604s-medium_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(158, 'P00000158', 'M000002', 'S000001', 'Eq Dry Disposable Econo Pack 32\'S LARGE', '372.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-dry-disposable-econo-pack-32s-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00');
INSERT INTO `products` (`id`, `product_id`, `market_id`, `subcategory_id`, `product_name`, `price`, `image_path`, `is_deleted`, `created_at`, `updated_at`) VALUES
(159, 'P00000159', 'M000002', 'S000001', 'Eq Dry Disposable Econo Pack40\'S SMALL', '372.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-dry-disposable-econo-pack40s-small_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(160, 'P00000160', 'M000002', 'S000001', 'Eq Dry Disposable Econo Pack 28\'S EXTRA LARGE', '372.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-dry-disposable-econo-pack-28s-extra-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(161, 'P00000161', 'M000002', 'S000002', 'Gerber First Food Apple 80G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/e/gerber-first-food-apple-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(162, 'P00000162', 'M000002', 'S000002', 'Gerber First Food Carrots 80G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/e/gerber-first-food-carrots-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(163, 'P00000163', 'M000002', 'S000002', 'Gerber First Food Squash 80G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/e/gerber-first-food-squash-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(164, 'P00000164', 'M000002', 'S000002', 'Gerber First Food Banana 80G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/e/gerber-first-food-banana-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(165, 'P00000165', 'M000002', 'S000002', 'Milna Baby Cereal Brown Rice&Banana 120G', '65.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/i/milna-baby-cereal-brown-ricebanana-120g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(166, 'P00000166', 'M000002', 'S000002', 'Milna Baby Cereal Chicken Soup & Sweet Corn 130G', '65.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/i/milna-baby-cereal-chick-soupsweet-corn-130g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(167, 'P00000167', 'M000002', 'S000002', 'CERELAC WHEAT BANANA W/ MILK 250G P15 OFF', '155.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10040913---cerelac-wheat-banana-with--milk-250g-p15-off.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(168, 'P00000168', 'M000002', 'S000002', 'CERELAC WHEAT BANANA W/ MILK 120G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10040912---cerelac-wheat-banana-with-milk-120g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(169, 'P00000169', 'M000002', 'S000002', 'CERELAC WHEAT WITH MILK 120G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10040911-cerelac-wheat-with-milk-120g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(170, 'P00000170', 'M000002', 'S000002', 'CERELAC MIXED FRUITS SOYA 250G', '155.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10040916-cerelac-mixed-fruits-soya-250g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(171, 'P00000171', 'M000002', 'S000003', 'Bonakid 400 G', '745.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/o/bonakid-400-g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(172, 'P00000172', 'M000002', 'S000003', 'Bonakid 1.6 KG', '940.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/o/bonakid-16-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(173, 'P00000173', 'M000002', 'S000003', 'Bonamil 1.2 KG', '759.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/o/bonamil-12-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(174, 'P00000174', 'M000002', 'S000003', 'Bonna Box 1.2 KG', '776.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/o/bonna-box-12-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(175, 'P00000175', 'M000002', 'S000003', 'Enfagrow A+ Lactose Free Three 1.8 KG', '2985.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10116467_enfagrow_a_lactose_free_three_1.8_kg.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(176, 'P00000176', 'M000002', 'S000003', 'Enfagrow A+ Three 1.2Kg 1.5 KG', '1875.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/n/enfagrow-a-three-12kg-15-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(177, 'P00000177', 'M000002', 'S000003', 'Enfamil A+ One 2.4 KG', '3880.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/n/enfamil-a-one-24-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(178, 'P00000178', 'M000002', 'S000003', 'Lactum 0-6 Months 2Kg 2 KG', '1320.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/a/lactum-06-months-2kg-2-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(179, 'P00000179', 'M000002', 'S000003', 'Lactum 1+ Plain 1.2 KG', '812.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/a/lactum-1-plain-12-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(180, 'P00000180', 'M000002', 'S000003', 'Lactum 3+ Plain 1.6 KG', '1050.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/a/lactum-3-plain-16-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(181, 'P00000181', 'M000002', 'S000004', 'MAGNOLIA ALL PURPOSE FLOUR 800G', '101.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10048057_magnolia_all_purpose_flour_800g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(182, 'P00000182', 'M000002', 'S000004', 'MAGNOLIA ALL PURPOSE FLOUR 200G', '33.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10044945_magnolia_all_purpose_flour_200g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(183, 'P00000183', 'M000002', 'S000004', 'Magnolia Pancake Plus W/ Maple Syrup 480G', '94.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia_pancake_plus_w_maple_syrup480g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(184, 'P00000184', 'M000002', 'S000004', 'Ellie Unbleached Flour 1Kg', '92.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10380296_ellie_unbleached_flour_1kg.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(185, 'P00000185', 'M000002', 'S000004', 'HERSHEY\'S COCOA POWDER 226G FR SUGAR', '299.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10318517-hershey_s-cocoa-powder-226g-fr-sugar.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(186, 'P00000186', 'M000002', 'S000004', 'HERSHEYS MILK CHOCOLATE CHIPS 326G', '271.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10102891-hersheys-milk-chocolate-chips-326g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(187, 'P00000187', 'M000002', 'S000004', 'White King All Purpose Flour 800G', '103.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/w/h/white-king-all-purpose-flour-800g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(188, 'P00000188', 'M000002', 'S000004', 'ARM & HAMMER PURE BAKING SODA 32OZ', '142.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10106723-arm--hammer-pure-baking-soda-32oz_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(189, 'P00000189', 'M000002', 'S000004', 'ARM & HAMMER PURE BAKING SODA 16OZ', '87.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10049896armhamerbkingsoda16oz.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(190, 'P00000190', 'M000002', 'S000004', 'HERSHEYS STRAWBERRY SYRUP BOTTLE 623G', '263.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10042394-hersheys-stawberry-syrup-bottle-623g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(191, 'P00000191', 'M000002', 'S000005', 'MAISON ICHIPAN WHOLE WHEAT BREAD 600G', '89.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10304976-maison-ichipan-whole-wheat-bread-600g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(192, 'P00000192', 'M000002', 'S000005', 'MAISON ICHIPAN WHITE BREAD 600G', '79.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10304975-maison-ichipan-white-bread-600g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(193, 'P00000193', 'M000002', 'S000005', 'Neubake Wheaten Bread 480G', '69.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/e/neubake-wheaten-bread-480g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(194, 'P00000194', 'M000002', 'S000005', 'Gardenia High Fiber Wheat Rsn Loaf 400g', '89.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/h/ghigh-fiber-wht-raisin-lof-400g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(195, 'P00000195', 'M000002', 'S000005', 'Gardenia Cheese Buns 250G', '56.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-cheese-buns-250g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(196, 'P00000196', 'M000002', 'S000005', 'Gardenia High Fiber Wheat Raisin Loaf 600g', '115.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-high-fiber-wheat-raisin-loaf-600g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(197, 'P00000197', 'M000002', 'S000005', 'Gardenia Neu Bake White Bread Cholesterol Free 450G', '49.50', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-neu-bake-white-bread-cholesterol-free-450g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(198, 'P00000198', 'M000002', 'S000005', 'Gardenia Soft Delight Pandesal 300G', '50.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-soft-delight-pandesal-300g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(199, 'P00000199', 'M000002', 'S000005', 'Gardenia Black Forest Loaf 400G', '109.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-black-forest-loaf-400g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(200, 'P00000200', 'M000002', 'S000005', 'Gardenia High Fiber Wheat Bread 400G', '65.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-high-fiber-wheat-bread-400g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(201, 'P00000201', 'M000002', 'S000006', 'Quake Overload Wht Choc 10s 30G', '87.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/q/u/quake-overload-wht-choc-10s-30g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(202, 'P00000202', 'M000002', 'S000006', 'Quake Overload Mocha Butter 10s 30G', '87.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/q/u/quake-overload-mocha-butter-10s-30g_1.jpeg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(203, 'P00000203', 'M000002', 'S000006', 'Quake Bars W/ Vanilla Filling 38G', '82.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/q/u/quake-bars-w-vanilla-filling-38g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(204, 'P00000204', 'M000002', 'S000006', 'Quake Bars W/ Chocolate Filling 38G', '82.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/q/u/quake-bars-w-chocolate-filling-38g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(205, 'P00000205', 'M000002', 'S000006', 'QUAKE OVERLOAD BLACKFOREST CAKE 38G 10\'S', '87.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10043282_quake_overload_blackforest_cake_38g_10_s.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(206, 'P00000206', 'M000002', 'S000006', 'JJ QUAKE LOAD CHOCO STRAWBRY 30G 10\'S', '91.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10043281_jj_quake_load_choco_strawbry_30g_10_s.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(207, 'P00000207', 'M000002', 'S000006', 'Orion Custard Softcake 6 4.87oz', '78.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/o/r/orion-custard-softcake-6-487oz_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(208, 'P00000208', 'M000002', 'S000006', 'Orion Custard Milk Cream 12 9.747oz', '161.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/o/r/orion-custard-milk-cream-12-9747oz_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(209, 'P00000209', 'M000002', 'S000006', 'Orion Custard Cheeseberry 12\'s 282G', '161.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/o/r/orion-custard-cheeseberry-12s-282g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(210, 'P00000210', 'M000002', 'S000006', 'Orion Custard Cheeseberry 12\'s 141G', '84.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/o/r/orion-custard-cheeseberry-12s-141g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(211, 'P00000211', 'M000002', 'S000007', 'MOUNTAIN DEW ICE 600ML', '39.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10285283_mountain_dew_ice_600ml.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(212, 'P00000212', 'M000002', 'S000007', 'Zesto Squiz Orange 1.5L', '66.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/z/e/zesto_squiz_orange_1_5l.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(213, 'P00000213', 'M000002', 'S000007', 'Coke Regular Pet 2L', '90.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/c/o/coke-regular-pet-2l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(214, 'P00000214', 'M000002', 'S000007', '7up Regular Pet 600ML', '39.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/7/u/7up-regular-pet-600ml_3.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(215, 'P00000215', 'M000002', 'S000007', 'Mug Root Beer 2L', '90.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/u/mug-root-beer-2l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(216, 'P00000216', 'M000002', 'S000007', 'CALI CAN ICE 330ML', '35.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10042162_cali_can_ice_330ml.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(217, 'P00000217', 'M000002', 'S000007', 'CALI CAN 330ML', '37.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10042161_cali_can_330ml.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(218, 'P00000218', 'M000002', 'S000007', 'Royal Tru-Orange 2L', '90.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/r/o/royal-truorange-2l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(219, 'P00000219', 'M000002', 'S000007', 'Pepsi Regular Pet 600ML', '39.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/p/e/pepsi-regular-pet-600ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(220, 'P00000220', 'M000002', 'S000007', 'Sprite Pet 1.5L', '78.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/p/sprite-pet-15l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(221, 'P00000221', 'M000002', 'S000008', 'Great Taste White Crema 30g x 25 Polybag', '215.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10327746-great-taste-white-crema-polybag-30g-25s.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(222, 'P00000222', 'M000002', 'S000008', 'Great Taste White Caramel Polybag 30G 25S', '215.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10327745-great-taste-white-caramel-polybag30g-25s.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(223, 'P00000223', 'M000002', 'S000008', 'Great Taste White Polybag 30G 25\'S', '215.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10327744-great-taste-white-polybag-30g-25_s.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(224, 'P00000224', 'M000002', 'S000008', 'Nescafe Classic Double Filter 25G', '21.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/e/nescafe-classic-double-filter-25g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(225, 'P00000225', 'M000002', 'S000008', 'Nescafe Decaf Refill 80G', '114.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/e/nescafe-decaf-refill-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(226, 'P00000226', 'M000002', 'S000008', 'Lipton Yellow Label Tea 50 Bags', '218.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/i/lipton-yellow-label-100g-50s_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(227, 'P00000227', 'M000002', 'S000008', 'Lipton Green Tea 50 Bags', '440.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/i/lipton-green-tea-bags-original-15g-50sheet_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(228, 'P00000228', 'M000002', 'S000008', 'Twinings Green Tea Pure 2GX25S', '355.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/t/w/twinings-green-tea-pure-2gx25s_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(229, 'P00000229', 'M000002', 'S000008', 'Twinings Green Tea Earl Grey 2GX25S', '345.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/t/w/twinings-green-tea-earl-grey-2gx25s_1.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(230, 'P00000230', 'M000002', 'S000008', 'Twinings English Breakfast 2GX25S', '345.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/t/w/twinings-english-breakfast-2gx25s_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(231, 'P00000231', 'M000002', 'S000009', 'Summit Natural Water 5000ML', '66.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/u/summit-natural-water-5000ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(232, 'P00000232', 'M000002', 'S000009', 'Summit Natural Water 6000ML', '75.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/u/summit-natural-water-6000ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(233, 'P00000233', 'M000002', 'S000009', 'Nature Spring Distilled Water 6.6L', '72.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/a/nature-spring-distilled-water-66l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(234, 'P00000234', 'M000002', 'S000009', 'Nature Spring Distilled Water 10L', '97.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/a/nature_spring_distilled_water_10l.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(235, 'P00000235', 'M000002', 'S000009', 'Le Mineral Water 600ML', '18.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/e/le-mineral-water-600ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(236, 'P00000236', 'M000002', 'S000009', 'Evian Natural Mineral Water 500ML', '68.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/v/evian-natural-mineral-water-500ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(237, 'P00000237', 'M000002', 'S000009', 'Aquafina Purified Water 1L', '25.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/a/q/aquafina-purified-water-1l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(238, 'P00000238', 'M000002', 'S000009', 'Absolute Distilled Water 2000ML', '45.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/a/b/absolute-distilled-water-2000ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(239, 'P00000239', 'M000002', 'S000009', 'Absolute Distilled Water 1500ML', '37.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/a/b/absolute-distilled-water-1500ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(240, 'P00000240', 'M000002', 'S000009', 'Absolute Distilled Water 1000ML', '27.50', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/a/b/absolute-distilled-water-1000ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(241, 'P00000241', 'M000002', 'S000010', 'Pauls Butter Unsalted 227G', '252.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10372203_pauls_butter_unsalted_227g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(242, 'P00000242', 'M000002', 'S000010', 'Pauls Butter Salted 227G', '252.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10372202_pauls_butter_salted_227g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(243, 'P00000243', 'M000002', 'S000010', 'Emborg Salted Butter 200G', '211.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/m/emborg-salted-butter-200g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(244, 'P00000244', 'M000002', 'S000010', 'MAVEN BUTTER SALTED 225G', '166.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/maven-butter-salted-225g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(245, 'P00000245', 'M000002', 'S000010', 'MAVEN BUTTER UNSALTED 225G', '166.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/maven-butter-unsalted-225g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(246, 'P00000246', 'M000002', 'S000010', 'Magnolia Gold Unsalted Butter 225G', '173.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia-gold-unsalted-butter-225g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(247, 'P00000247', 'M000002', 'S000010', 'Magnolia Gold Salted 225G', '173.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia-gold-salted-225g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(248, 'P00000248', 'M000002', 'S000010', 'Magnolia Butterlicious 200G For Sale', '105.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia-butterlicious-200g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(249, 'P00000249', 'M000002', 'S000010', 'Dari Creme Classic 100G', '43.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/d/a/dari-creme-classic-100g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(250, 'P00000250', 'M000002', 'S000010', 'Dari Creme Lite 200G', '97.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/d/a/dari-creme-lite-200g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(251, 'P00000251', 'M000002', 'S000011', 'Pauls Cheddar Cheese Reg 12S', '192.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10372205_pauls_cheddar_cheese_reg_12s.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(252, 'P00000252', 'M000002', 'S000011', 'ARLA ORGANIC CREAMCHEESE 150G', '114.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10308733-arla-organic-creamcheese-150g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(253, 'P00000253', 'M000002', 'S000011', 'PARMESAN CHEESE SHREDDED 150G', '269.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10099380_parmesan_cheese_shredded_150g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(254, 'P00000254', 'M000002', 'S000011', 'ANCHOR CHEESE SINGLES 100G', '107.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10202846-anchor-cheese-singles-100g_1.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(255, 'P00000255', 'M000002', 'S000011', 'EMBORG DANISH CHEESE BRIE 125G', '204.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10051916-emborg-danish-cheese-brie-125g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(256, 'P00000256', 'M000002', 'S000011', 'CHIZBOY SHREDDED CHEDDAR 350G', '188.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10199147_chizboy_shredded_cheddar_350g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(257, 'P00000257', 'M000002', 'S000011', 'ARLA NATURAL GOUDA SLICES 14X150G', '214.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10050133_arla_natural_gouda_slices_14x150g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(258, 'P00000258', 'M000002', 'S000011', 'Emborg Euro Cheese Edam Sliced 150G', '183.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/m/emborg-euro-cheese-edam-sliced-150g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(259, 'P00000259', 'M000002', 'S000011', 'Emborg Danish Mozzarella Cheese 200G', '248.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/m/emborg-danish-mozzarella-cheese-200g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(260, 'P00000260', 'M000002', 'S000011', 'EMBORG DANISH CHEESE CAMEMBERT 125G', '210.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/m/emborg-danish-cheese-camemert-125g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(261, 'P00000261', 'M000002', 'S000012', 'SELECTA FORTIFIED FILLED LOW FAT MILK 24', '38.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10041692-selecta-fortified-filled-low-fat-milk-24_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(262, 'P00000262', 'M000002', 'S000012', 'NESTLE FORTIFIED 1L', '86.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10287865---nestle-fortified-1l.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(263, 'P00000263', 'M000002', 'S000012', 'SOYFRESH SOYA MILK NATURAL 1L', '92.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10048506---soyfresh-soya-milk-natural-1l.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(264, 'P00000264', 'M000002', 'S000012', 'Yakult X5S 80ML', '45.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/y/a/yakult-x5s-80ml_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(265, 'P00000265', 'M000002', 'S000012', 'Selecta Fortified Filled Milk 1L', '85.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/e/selecta-fortified-filled-milk-1l_1.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(266, 'P00000266', 'M000002', 'S000012', 'Selecta Fortified Filled Low Fat Milk 1L', '103.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/e/selecta-fortified-filled-low-fat-milk-1l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(267, 'P00000267', 'M000002', 'S000012', 'Nestle Fresh Milk 1L', '112.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/e/nestle-fresh-milk-1l_1.jpeg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(268, 'P00000268', 'M000002', 'S000012', 'Milk Magic Sterilized 1L', '85.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/i/milk-magic-sterilized-1l_1.jpeg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(269, 'P00000269', 'M000002', 'S000012', 'Magnolia Fresh Milk 1L', '119.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia-fresh-milk-1l_1.jpeg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(270, 'P00000270', 'M000002', 'S000012', 'Cowhead Pure Uht Milk 1L', '111.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/c/o/cowhead-pure-uht-milk-1l_3.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(271, 'P00000271', 'M000002', 'S000013', 'JDC BEEF STEAK CUT', '569.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/e/beef-steak-cut-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(272, 'P00000272', 'M000002', 'S000013', 'JDC BEEF TENDERLOIN', '899.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/e/beef-tenderloin-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(273, 'P00000273', 'M000002', 'S000013', 'JDC BEEF BRISKET', '509.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/e/beef-brisket-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(274, 'P00000274', 'M000002', 'S000013', 'JDC BEEF GROUND REGULAR', '399.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/r/ground-beef-regular-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(275, 'P00000275', 'M000002', 'S000013', 'JDC BEEF TERIYAKI', '529.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/e/beef-teriyaki-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(276, 'P00000276', 'M000002', 'S000013', 'JDC PORK MECHADO CUT', '338.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80552591-jdc-pork-mechado-cut.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(277, 'P00000277', 'M000002', 'S000013', 'JDC PORK DICED', '325.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80552590-jdc-pork-diced.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(278, 'P00000278', 'M000002', 'S000013', 'JDC PORK CUBES', '372.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/p/o/pork-cubes-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(279, 'P00000279', 'M000002', 'S000013', 'JDC PORK MENUDO CUT', '335.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/p/o/pork-menudo-cut-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(280, 'P00000280', 'M000002', 'S000013', 'JDC PORK GROUND REGULAR', '288.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/r/ground-pork-regular-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(281, 'P00000281', 'M000002', 'S000014', 'MAGNOLIA READY TO COOK ROASTER SMOKED PEPPER', '263.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80576650_magnolia_rtc_rooster_smoked_pepper.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(282, 'P00000282', 'M000002', 'S000014', 'GEFI CHICKEN DRUMSTICK FROZEN', '212.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80548202_gefi_chicken_drumstick_frozen.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(283, 'P00000283', 'M000002', 'S000014', 'GEFI CHICKEN LEG FROZEN', '209.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80548201_gefi_chicken_leg_frozen.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(284, 'P00000284', 'M000002', 'S000014', 'GEFI CHICKEN ADOBO CUT FROZEN', '205.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80548200_gefi_chicken_adobo_cut_frozen.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(285, 'P00000285', 'M000002', 'S000014', 'BF CHICKEN TINOLA CUT', '219.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80281792_bf_chicken_tinola_cut.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(286, 'P00000286', 'M000002', 'S000014', 'BF CHICKEN SKIN', '165.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80272977_bf_chicken_skin.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(287, 'P00000287', 'M000002', 'S000014', 'BF CHICKEN SOUP PACK', '175.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80272976_bf_chicken_soup_pack.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(288, 'P00000288', 'M000002', 'S000014', 'BF CHICKEN ADOBO CUT', '219.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80272973_bf_chicken_adobo_cut.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(289, 'P00000289', 'M000002', 'S000014', 'BF SC 5H THIGH FILLET (0.450-0.500)', '110.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80266507_bf_sc_5h_thigh_fillet_0.450-0.500_.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(290, 'P00000290', 'M000002', 'S000014', 'BF SC 5H BREAST FILLET (0.450-0.500)', '110.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80266506_bf_sc_5h_breast_fillet_0.450-0.500_.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(291, 'P00000291', 'M000002', 'S000015', 'Boneless Bangus Mikisa KG', '358.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113217_mikisa_boneless_bangus_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(292, 'P00000292', 'M000002', 'S000015', 'Tilapia Live Mikisa KG', '359.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113202_mikisa_tilapia_live.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(293, 'P00000293', 'M000002', 'S000015', 'Tanigue Steak Mikisa KG', '798.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113199_mikisa_tanigue_steak.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(294, 'P00000294', 'M000002', 'S000015', 'Tawilis Mikisa KG', '178.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113200_mikisa_tawilis.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(295, 'P00000295', 'M000002', 'S000015', 'Tulingan Mikisa KG', '359.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113206_mikisa_tulingan.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(296, 'P00000296', 'M000002', 'S000015', 'MK VANNAMEI SHRIMP PD 71/90 1KG', '649.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80308337_mk_vannamei_shrimp_pd_7190_1kg.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(297, 'P00000297', 'M000002', 'S000015', 'HSW ROBOCRAB CRAB STICKS 500G', '191.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10086488_hsw_robocrab_crab_sticks_500g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(298, 'P00000298', 'M000002', 'S000015', 'Pusit Bisaya Mikisa KG', '648.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113165_mikisa_pusit_bisaya.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(299, 'P00000299', 'M000002', 'S000015', 'Tahong Blanched Mikisa KG', '238.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113191_mikisa_tahong_blanched.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(300, 'P00000300', 'M000002', 'S000015', 'Scallop Meat Mikisa KG', '438.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113178_mikisa_scallop_meat.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(301, 'P00000301', 'M000003', 'S000001', 'Pampers Dry Baby Diaper Pants Large 14s', '149.00', 'https://static.go-cery.ph/t/e2bgBY98Rkr7zxp0rxPjPq6ZlKJXG3An.jpg', 0, '2022-07-07 19:48:00', '2022-09-25 10:45:05'),
(302, 'P00000302', 'M000003', 'S000001', 'Pampers Baby Dry Diaper Large 30s', '325.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/506099_448c0114-dfeb-4c19-b683-0ae9214bed3b_236x236.jpg?v=1645661269', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(303, 'P00000303', 'M000003', 'S000001', 'EQ Dry Baby Diaper Jumbo Pack Large 48 diapers', '468.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/161096_ab1ebf66-b6f0-43ae-b090-1d360e76f446_236x236.jpg?v=1656493407', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(304, 'P00000304', 'M000003', 'S000001', 'EQ Baby Diaper Pants Jumbo Pack Large 40s', '321.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/556495_1c7b2f74-13d2-4c1e-89c7-f34ac2d1d144_236x236.jpg?v=1645653481', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(305, 'P00000305', 'M000003', 'S000001', 'EQ Dry Baby Diaper Mega Pack XL 60s', '652.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/354497_3e5f133e-8b08-4323-bc75-d63f92fabf67_236x236.jpg?v=1661533503', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(306, 'P00000306', 'M000003', 'S000001', 'Mamypoko Baby Diaper Extra Soft Large 40s', '629.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/179323_3fceca77-0da8-448c-aa3b-2ad0f3d97421_236x236.jpg?v=1645657356', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(307, 'P00000307', 'M000003', 'S000001', 'EQ Plus Baby Diaper XL 36 Pads', '340.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/451294_a266b16d-2b92-4496-b835-91a8861c5dc4_236x236.jpg?v=1656063940', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(308, 'P00000308', 'M000003', 'S000001', 'EQ Dry Baby Diaper Econo Pack XXL 24s', '313.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/364199_628c96ea-0fbb-4d18-bcee-62845b7c6fad_236x236.jpg?v=1645658620', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(309, 'P00000309', 'M000003', 'S000001', 'EQ Plus Baby Diaper Large 42 Pads', '340.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/451289_57116d19-ee54-46da-9d73-834dfa59bba0_236x236.jpg?v=1656063955', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(310, 'P00000310', 'M000003', 'S000001', 'Happy Baby Diaper Medium 30s', '294.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/560375_742255c2-b084-4e9b-943c-d20ea5ce96b5_236x236.jpg?v=1645652255', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(311, 'P00000311', 'M000003', 'S000002', 'Milna Rusks for Infants Banana 130g', '65.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/526578_268f5581-1229-4a5b-b652-3b4b3c0cf660_236x236.jpg?v=1645637464', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(312, 'P00000312', 'M000003', 'S000002', 'NESTLE CERELAC Baby Food Wheat and Milk 120g', '70.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/329823_661f9f9a-0dd5-40d3-b34e-287a0d82d0ca_236x236.jpg?v=1645632542', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(313, 'P00000313', 'M000003', 'S000002', 'Nestle Cerelac Nutripuffs Cereal-based Snack Orange 50g', '93.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/550496_df8c130b-c6bb-488d-80c2-faca0634ba3d_236x236.jpg?v=1645634921', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(314, 'P00000314', 'M000003', 'S000002', 'Nutridel Infant Cereal Apple Squash and Malunggay 120g', '56.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/439299_a1a58360-2838-447e-ba7b-3457c0a0dd2c_236x236.jpg?v=1645627015', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(315, 'P00000315', 'M000003', 'S000002', 'Milna Dry Cereal for Infants Brown Rice and Banana 120g', '61.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/527437_9c89c869-1d4f-48e3-b4cd-2d83d17f9e9c_236x236.jpg?v=1645622861', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(316, 'P00000316', 'M000003', 'S000002', 'NESTLE CERELAC Baby Food Mixed Vegetables and Soya 120g', '70.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/329822_1decfa7c-b6f3-416b-89d0-ed186eae9472_236x236.jpg?v=1645614037', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(317, 'P00000317', 'M000003', 'S000002', 'GERBER Baby Food Applesauce 80g', '68.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/366583_2128f043-0cf7-4d33-a4e1-1d4df475d03e_236x236.jpg?v=1645611941', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(318, 'P00000318', 'M000003', 'S000002', 'Nutridel Infant Cereal Carrot Green Bean and Sweet Potato 120g', '56.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/439295_c742364c-a6bb-4d3c-a6e1-cede5bea378d_236x236.jpg?v=1645611145', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(319, 'P00000319', 'M000003', 'S000002', 'NESTLE CERELAC Baby Food Rice and Soya 120g', '70.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/329820_e4bdacda-1000-4623-8684-802aac5515e1_236x236.jpg?v=1645611194', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(320, 'P00000320', 'M000003', 'S000002', 'Gerber Baby Food After 6 Months Peas Broccoli Zucchini 125g', '148.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/596937_53be9628-239e-4226-ba2e-77f038e9469c_236x236.jpg?v=1645651760', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(321, 'P00000321', 'M000003', 'S000003', 'Similac Gain School Liquid Milk Drink Vanilla 110ml x 4s', '140.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/676515_5cac93d2-db7a-4206-a7e6-b89343ab7408_236x236.jpg?v=1655980362', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(322, 'P00000322', 'M000003', 'S000003', 'Bonakid Pre-School 3+ for Children Over 3 Years Old Powdered Milk Drink 2.4kg', '1214.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674113_217f7579-9032-4f97-b46e-e03cfeef5dcc_236x236.jpg?v=1651718103', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(323, 'P00000323', 'M000003', 'S000003', 'PediaSure Plus for 3 Years Old and Above Liquid Milk Vanilla 110ml x 4s', '200.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/662100_7d23b63e-1b68-4a62-97f5-0637a1808b5f_236x236.jpg?v=1645659600', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(324, 'P00000324', 'M000003', 'S000003', 'Enfagrow A+ NuraPro Three for 1 to 3 Years Old Powdered Milk 1.8kg', '2336.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/447576_3bd72310-30d7-4a44-b674-620fbe652a42_236x236.jpg?v=1645661082', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(325, 'P00000325', 'M000003', 'S000003', 'Similac Tummicare HW Two for 1 to 3 Years Powdered Milk 1.6kg', '2544.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/585738_17e8bb85-18bb-474c-b01d-2d0e65026d48_236x236.jpg?v=1645660732', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(326, 'P00000326', 'M000003', 'S000003', 'Nestle NAN InfiniPro HW One for 0 to 6 Months Powdered Milk Infant Formula 2.1kg', '3330.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/635878_206188cd-81e8-489d-8c5f-5e97b64a68c2_236x236.jpg?v=1645659711', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(327, 'P00000327', 'M000003', 'S000003', 'Nestle NAN OptiPro Three for 1 to 3 Years Old Powdered Milk 1.8kg', '1945.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/514427_13e088a9-b62d-401c-889a-945c58a8372f_236x236.jpg?v=1645659762', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(328, 'P00000328', 'M000003', 'S000003', 'S-26 Promil Gold Three for 1 to 3 Years Old Powdered Milk 2.4kg', '2841.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/593070_8b0073c7-9fc0-4efd-8f95-45da5595fe47_236x236.jpg?v=1645653746', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(329, 'P00000329', 'M000003', 'S000003', 'Bonakid for 1 to 3 Years Old Powdered Milk 1.6kg', '914.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/400366_67a9a070-3cdb-48d8-affa-a0cc56259b6f_236x236.jpg?v=1645659089', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(330, 'P00000330', 'M000003', 'S000003', 'PediaSure Plus 3+ for 3 Years Old and Above Powdered Milk Chocolate 900g', '1344.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/599722_0b6b6944-43e5-4c43-8f0b-3def5a28ad34_236x236.jpg?v=1645654069', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(331, 'P00000331', 'M000003', 'S000004', 'Naturals Monk Fruit Sweetener 200g', '335.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/667537_a766d842-18a9-4831-867e-846d4e5fca1e_236x236.jpg?v=1648223743', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(332, 'P00000332', 'M000003', 'S000004', 'Magnolia Pancake Waffle Mix 400g', '64.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/335069_2a163393-e28f-44ef-85f3-6776fc29f348_236x236.jpg?v=1645659546', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(333, 'P00000333', 'M000003', 'S000004', 'Comstock Blueberry Pie Filling 21oz', '263.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/138572_4bf55c7f-bb7a-4983-80ab-4f6bc39e1caa_236x236.jpg?v=1645660559', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(334, 'P00000334', 'M000003', 'S000004', 'Maya Hotcake Mix Original 500g', '59.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/110229_c8af36b6-f32c-4b0a-aed4-82849a2081c4_236x236.jpg?v=1645659626', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(335, 'P00000335', 'M000003', 'S000004', 'Healthy You Original Coco Sweetener 1kg', '400.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/388887_7ce5efb9-8c0f-4f33-adb0-d083bb66d4ef_236x236.jpg?v=1645659643', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(336, 'P00000336', 'M000003', 'S000004', 'Langnese Pure Bee Honey Golden Clear 500g', '454.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/543161_693f5d30-974c-4c10-b8ce-4120a50abd66_236x236.jpg?v=1645660982', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(337, 'P00000337', 'M000003', 'S000004', 'Diabetasol Zero Calorie Sweetener 50g', '119.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/437526_9d8cdd28-46f1-4f37-8718-7ef71ef4fc6e_236x236.jpg?v=1645661063', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(338, 'P00000338', 'M000003', 'S000004', 'Maya All Purpose Flour 2KG', '190.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/399055_d6aecc67-3370-4824-bad1-5569499c4c98_236x236.jpg?v=1645660197', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(339, 'P00000339', 'M000003', 'S000004', 'Hermano Brown Sugar 1kg', '74.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/469622_f3b7fd61-b45d-4eef-84d6-68edec22132f_236x236.jpg?v=1645661113', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(340, 'P00000340', 'M000003', 'S000004', 'Healthy You Stevia Powder 30g 30s', '103.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/582622_89e1e23b-6340-4047-97bb-63c04406d920_236x236.jpg?v=1645654389', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(341, 'P00000341', 'M000003', 'S000005', 'Kb Raisin Bread', '68.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568002_ef661d70-6099-4f8a-86ec-e9134747061f_236x236.jpg?v=1661155428', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(342, 'P00000342', 'M000003', 'S000005', 'Kb Open Top', '42.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568007_236x236.jpg?v=1661155409', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(343, 'P00000343', 'M000003', 'S000005', 'Kb Mongo Bread', '40.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568003_236x236.jpg?v=1661155419', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(344, 'P00000344', 'M000003', 'S000005', 'Kb Dinner Roll', '45.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568012_40991601-260e-4644-931d-974b0501cc6d_236x236.jpg?v=1661155513', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(345, 'P00000345', 'M000003', 'S000005', 'Kb Sesame Buns', '60.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568013_154cb2e7-47b0-4653-8f27-7cd2dca3bae8_236x236.jpg?v=1661155503', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(346, 'P00000346', 'M000003', 'S000005', 'Kb Hotdog Rolls', '50.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568016_79a29522-ece8-4bb7-8c22-52bc846da10b_236x236.jpg?v=1661155475', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(347, 'P00000347', 'M000003', 'S000005', 'Kb Pan De Siosa', '28.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568021_11bef887-4be2-4f68-99c6-4c1aab855742_236x236.jpg?v=1661155457', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(348, 'P00000348', 'M000003', 'S000005', 'Kb Close Top', '42.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/567999_b8df4572-a83b-4f8e-bf5e-e70536ca10f1_236x236.jpg?v=1661155437', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(349, 'P00000349', 'M000003', 'S000005', 'Kb Whole Wheat Bread', '60.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568010_236x236.jpg?v=1661155400', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(350, 'P00000350', 'M000003', 'S000005', 'Kb Hamburger Buns', '50.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568015_fa916285-fb1d-407e-b580-91d38830e95f_236x236.jpg?v=1661155484', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(351, 'P00000351', 'M000003', 'S000006', 'Lemon Square Choo Choo Cake Bites Cheesy Milk 38g', '74.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/427866_c7139e2d-4fc6-4659-92c9-2cd0c06bca0d_236x236.jpg?v=1645659542', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(352, 'P00000352', 'M000003', 'S000006', 'Quake Overload Favorites 38g x 10s', '76.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/447573_def03115-4123-4065-8e84-782a59dfd4f4_236x236.jpg?v=1658222106', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(353, 'P00000353', 'M000003', 'S000006', 'Lemon Square Cheesecake Big 42g x 10s', '87.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/569210_fde02223-d6c5-4bcf-8c37-4db30371506b_236x236.jpg?v=1645655179', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(354, 'P00000354', 'M000003', 'S000006', 'Whatta Tops Mango Graham 35g x 10s', '72.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/527113_ce0619e5-1918-4ffb-9292-5259f9c21317_236x236.jpg?v=1645652286', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(355, 'P00000355', 'M000003', 'S000006', 'Lemon Square Lava Cake Twin Quezo Con Ube 38g x 10s', '68.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/539858_734ad67d-b4d2-45f0-b5ce-98830fd560f1_236x236.jpg?v=1645654678', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(356, 'P00000356', 'M000003', 'S000006', 'Quake Overload Caramel Craze 48g', '76.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/497679_540ba0fe-6cdd-4170-8fa7-5b2f6c5ce3f6_236x236.jpg?v=1645648683', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(357, 'P00000357', 'M000003', 'S000006', 'Lemon Square Whattatops Cookies \'N Cream 36g x 10s', '72.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/508609_ae570ba5-f4f6-41c1-8332-bff777215c62_236x236.jpg?v=1645648875', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(358, 'P00000358', 'M000003', 'S000006', 'Lemon Square Inipit Assorted 18g x 10s', '51.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/207728_ae5a1129-85c4-4760-9d0f-8ec6dcc52cfb_236x236.jpg?v=1645642519', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(359, 'P00000359', 'M000003', 'S000006', 'Lemon Square Choo Choo Cake Bites Choco Vanilla 38g', '74.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/417652_fc5835fc-159d-448b-b5f2-58e46d5a1e8b_236x236.jpg?v=1645638140', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(360, 'P00000360', 'M000003', 'S000006', 'Lemon Square Lava Cake Twin Double Dutch 38g x 10s', '68.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/539855_03975818-5c27-46bc-8e33-ceea8e818d36_236x236.jpg?v=1645635065', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(361, 'P00000361', 'M000003', 'S000007', 'Pepsi Regular Softdrink Can 330ml', '32.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105783_9e93fda1-e882-472a-8286-1241b29746d0_236x236.jpg?v=1645660539', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(362, 'P00000362', 'M000003', 'S000007', 'Zest-O Rootbeer Softdrink Bottle 1.5L', '58.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/159275_f4b653db-28bd-425b-8711-5c64a760502c_236x236.jpg?v=1658117623', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(363, 'P00000363', 'M000003', 'S000007', 'Mountain Dew Softdrink Bottle 2L', '70.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/404636_771afc6f-1b74-409d-b8b2-e2d67edf34ab_236x236.jpg?v=1658117779', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00');
INSERT INTO `products` (`id`, `product_id`, `market_id`, `subcategory_id`, `product_name`, `price`, `image_path`, `is_deleted`, `created_at`, `updated_at`) VALUES
(364, 'P00000364', 'M000003', 'S000007', 'Zest-O Root Beer Softdrink Can 330ml', '28.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/329685_76d84424-96a6-4a54-87a6-b7d1b315426c_236x236.jpg?v=1645656965', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(365, 'P00000365', 'M000003', 'S000007', 'Coke Zero Softdrink Bottle 1.5L', '64.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/352071_e61909d2-2b71-41d3-8626-b0c97b74cf5d_236x236.jpg?v=1658117787', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(366, 'P00000366', 'M000003', 'S000007', 'Coke Regular Softdrink Bottle 2L', '74.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/101149_58e88c6b-9a00-44f8-bd4c-97015d52b0a1_236x236.jpg?v=1658117027', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(367, 'P00000367', 'M000003', 'S000007', 'Mirinda Orange 330ml', '32.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105619_41fd3cff-5df7-4850-a799-d8111a06b0c6_236x236.jpg?v=1645647650', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(368, 'P00000368', 'M000003', 'S000007', 'Pepsi Black Softdrink Can 330ml', '32.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/309397_a4058710-a2ee-4f36-bc82-76c606fc3a26_236x236.jpg?v=1645642489', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(369, 'P00000369', 'M000003', 'S000007', 'Mug Root Beer Softdrink Bottle 1.5L', '32.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/355606_d8ed8bf7-78f4-4173-8c70-f46f3d973ea8_236x236.jpg?v=1658118132', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(370, 'P00000370', 'M000003', 'S000007', 'Pepsi Cola Regular Softdrink Bottle 1.5L', '63.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/141432_b47c6651-e6ea-43d6-9b05-e7f8a66c41e5_236x236.jpg?v=1658117553', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(371, 'P00000371', 'M000003', 'S000008', 'Great Taste Supreme Toffee Hazelnut 26g', '8.35', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674141_77bfb8cc-433f-4965-9b58-bbd5cc5aefed_236x236.jpg?v=1658218088', 0, '2022-07-07 19:48:00', '2022-09-25 05:10:23'),
(372, 'P00000372', 'M000003', 'S000008', 'Great Taste Supreme Black Forest Latte 26g', '8.35', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674140_b9f38386-e78c-4ba1-9925-4278c3699bf8_236x236.jpg?v=1658218092', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(373, 'P00000373', 'M000003', 'S000008', 'NESCAFE CLASSIC Instant Coffee Refill 25g', '20.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/108811_4a57686d-b314-4734-886e-cffa6773f10e_236x236.jpg?v=1645659996', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(374, 'P00000374', 'M000003', 'S000008', 'NESTLE COFFEE-MATE Coffee Creamer 250g Stand-up Pouch', '74.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/514827_b4c0feff-b16d-45db-b479-edea59c5f47c_236x236.jpg?v=1645652000', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(375, 'P00000375', 'M000003', 'S000008', 'NESCAFE Original 3-in-1 Coffee 28g - Pack of 30 Sachets', '201.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/565030_5f24d38a-cb33-495a-9c57-0b9bf6ad105e_236x236.jpg?v=1645654328', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(376, 'P00000376', 'M000003', 'S000008', 'Twining Green Tea Collection 1.7g 20s', '300.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/197875_f9f38fa9-5e02-4f61-abbf-6bf704dad2f7_236x236.jpg?v=1645659499', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(377, 'P00000377', 'M000003', 'S000008', 'Twinings Lemon and Ginger Tea 1.5g 25s', '322.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/197878_6f16a918-0a22-4673-8f79-fd60a9a8612c_236x236.jpg?v=1645660668', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(378, 'P00000378', 'M000003', 'S000008', 'Twinings Pure Green Tea 2g 25s', '322.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/538126_858028c1-3511-47e4-958e-1bcf4489d38e_236x236.jpg?v=1645654669', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(379, 'P00000379', 'M000003', 'S000008', 'Lipton Green Tea 1.5g 10s', '81.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/327457_5136377b-89b9-4b7d-b8e9-bf0413f8f714_236x236.jpg?v=1645646136', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(380, 'P00000380', 'M000003', 'S000008', 'Lipton Green Tea 1.5g 50s', '378.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/327458_e62f135a-4f94-42f1-ae25-33675ea04535_236x236.jpg?v=1659000951', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(381, 'P00000381', 'M000003', 'S000009', 'Le Minerale Mountain Mineral Water 5000ml', '89.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/656492_7ba9acee-f285-4101-8380-06e19aec030c_236x236.jpg?v=1654506239', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(382, 'P00000382', 'M000003', 'S000009', 'Evian Natural Mineral Water 750ml', '129.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/499228_2a017eaf-b14b-4b50-82ce-2c52ccbc7074_236x236.jpg?v=1654572800', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(383, 'P00000383', 'M000003', 'S000009', 'Aquafina Purified Drinking Water 500ml', '13.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/560781_2eb64e26-a89a-409b-81f4-ab96a29a5e98_236x236.jpg?v=1645655279', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(384, 'P00000384', 'M000003', 'S000009', 'Nature\'s Spring Alkaline Water 500ml', '12.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/422454_4e4456a8-7d19-48d9-95ea-7c35effd3ea2_236x236.jpg?v=1645648067', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(385, 'P00000385', 'M000003', 'S000009', 'Nature\'s Spring Purified Drinking Water 1L', '14.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/404200_027a27cf-d134-49fe-a652-2afecf49d754_236x236.jpg?v=1645645672', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(386, 'P00000386', 'M000003', 'S000009', 'B\'lue Z-RO Apple Cucumber Flavored Drink 330ml', '21.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/650622_af1a953f-b581-402a-b3d2-f192b3e45cc9_236x236.jpg?v=1658222474', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(387, 'P00000387', 'M000003', 'S000009', 'Wilkins Distilled Drinking Water 330ml', '12.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/327937_128a312a-5853-4337-b477-7994b5cca6c9_236x236.jpg?v=1645645119', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(388, 'P00000388', 'M000003', 'S000009', 'Le Minerale Mountain Mineral Water 600ml', '13.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/554165_846ac055-7907-4655-aa02-31eb3096940e_236x236.jpg?v=1645645561', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(389, 'P00000389', 'M000003', 'S000009', 'Summit Natural Drinking Water 1500ml', '25.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/100370_4ffd8670-a800-450d-a649-2cddfe4af6bf_236x236.jpg?v=1645645841', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(390, 'P00000390', 'M000003', 'S000009', 'Natures Spring Purified Drinking Water 1.5L', '23.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/404202_b1af85a8-58b3-4ba9-8b0f-bf796617b4cf_236x236.jpg?v=1645642140', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(391, 'P00000391', 'M000003', 'S000010', 'Star Marg Chocolate 250g', '84.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/447811_a4fa10e3-8a1b-404f-b511-aa7c577c54b1_236x236.jpg?v=1645658364', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(392, 'P00000392', 'M000003', 'S000010', 'Star Margarine 1kg', '300.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105692_7185769f-5ca3-4e05-8555-86a8db466ab9_236x236.jpg?v=1645656570', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(393, 'P00000393', 'M000003', 'S000010', 'Pres Ambassador Unsalted Butter 200g', '189.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/536271_c64ce3fc-0f90-46a1-9114-659e58a82d5b_236x236.jpg?v=1645654930', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(394, 'P00000394', 'M000003', 'S000010', 'Dari Cr?me Buttermilk Margarine 100g', '40.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105524_a83663ed-c7f8-4543-9373-a5c6bbfa78a9_236x236.jpg?v=1645647646', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(395, 'P00000395', 'M000003', 'S000010', 'Anchor Salted Mini Dish 10g x 10s', '95.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/334105_01c0c0ea-e680-46f7-82b0-befa43af58a8_236x236.jpg?v=1645642732', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(396, 'P00000396', 'M000003', 'S000010', 'Magnolia Buttercup Margarine 200g', '50.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105554_b6a62bb6-0ccb-4d5e-a441-8123f29c19d8_236x236.jpg?v=1645642907', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(397, 'P00000397', 'M000003', 'S000010', 'Star Margarine classic 30g Twin Pack', '11.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/558714_636f9b7d-6d20-4c27-9269-b3aa3ac63c54_236x236.jpg?v=1645649830', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(398, 'P00000398', 'M000003', 'S000010', 'President Salted Butter 200g', '437.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/160523_04da233f-ac4d-404d-85eb-c91931ac9656_236x236.jpg?v=1645639324', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(399, 'P00000399', 'M000003', 'S000010', 'Star Margarine Sweet Blend 250g', '84.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105716_7f1a2b6a-1509-4489-b7c7-3b6025507404_236x236.jpg?v=1645639704', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(400, 'P00000400', 'M000003', 'S000010', 'Star Classic Margarine 250g', '84.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105696_cd7b796e-4453-4ab4-96c5-09d8b839dbc5_236x236.jpg?v=1645633351', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(401, 'P00000401', 'M000003', 'S000011', 'Eden Cream Cheese 225g', '137.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674200_43c58159-1158-4c5b-961c-fc684c6824e5_236x236.jpg?v=1662453275', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(402, 'P00000402', 'M000003', 'S000011', 'Eden Cream Cheese Tub 140g', '94.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674201_e93cc755-ae69-4565-924d-5eac8a8ebe3f_236x236.jpg?v=1662453292', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(403, 'P00000403', 'M000003', 'S000011', 'Eden Cheese Original 430g', '138.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/123186_307c4982-1910-40df-96b8-f2fb7381d3ea_236x236.jpg?v=1645660635', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(404, 'P00000404', 'M000003', 'S000011', 'Danes Cheese 165g', '43.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/390936_7fb8ee07-cf83-4900-b058-db3781b5084d_236x236.jpg?v=1657002790', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(405, 'P00000405', 'M000003', 'S000011', 'Danes Quickmelt Cheese 165g', '73.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/650834_7e95c73d-8057-447b-9dc6-220422080bd3_236x236.jpg?v=1645651350', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(406, 'P00000406', 'M000003', 'S000011', 'Danes Cheese Sweet and Creamy 165g', '55.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/590130_243f50b3-f220-4336-b13b-ee73e19b2547_236x236.jpg?v=1658729095', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(407, 'P00000407', 'M000003', 'S000011', 'Danes Cheese 450g', '126.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/392104_a5bc06c0-25ad-4270-aaec-7b9c7a4b03c2_236x236.jpg?v=1645612746', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(408, 'P00000408', 'M000003', 'S000011', 'Danes Sliced Cheese 90g', '26.60', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/355548_f1999fab-d35b-48c7-887b-067a2b2841a6_236x236.jpg?v=1645612184', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(409, 'P00000409', 'M000003', 'S000011', 'Danes Cheese 35g', '12.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/590131_9316a605-9574-4866-b0e1-345efea0ced5_236x236.jpg?v=1645611616', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(410, 'P00000410', 'M000003', 'S000011', 'Anchor Cheese Singles 100g', '89.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/356528_462114eb-98c1-41ad-95e7-4fd6d3089cc2_236x236.jpg?v=1645611212', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(411, 'P00000411', 'M000003', 'S000012', 'Devondale Full Cream Milk 1Lx2', '176.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/580821_3c9d4784-667e-4d4a-a9f3-0377e3289405_236x236.jpg?v=1659431079', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(412, 'P00000412', 'M000003', 'S000012', 'Vitasoy Plus Milky Vanilla 300ml', '28.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/670747_3877be35-7882-41bc-a572-24cf35a5198c_236x236.jpg?v=1658222746', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(413, 'P00000413', 'M000003', 'S000012', 'Angel Evaporated Filled Milk 410ml', '39.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/161519_52b368fa-be20-4b65-a47c-7f4405f18654_236x236.jpg?v=1645674217', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(414, 'P00000414', 'M000003', 'S000012', 'Alaska Condensada Condensed Creamer Ube Macapuno 300ml', '56.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/597622_70e804b8-ce7a-4113-b399-54425af90b2a_236x236.jpg?v=1658905556', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(415, 'P00000415', 'M000003', 'S000012', 'Alaska Evaporada Evaporated Creamer 370ml', '29.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/155556_2e0e44a5-ffe7-4dce-802a-e61efec42b0c_236x236.jpg?v=1645674212', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(416, 'P00000416', 'M000003', 'S000012', 'Alaska Condensada Condensed Creamer 560g', '72.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/575168_98f87907-2be4-4fe6-9cf2-ca432a33474d_236x236.jpg?v=1645674252', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(417, 'P00000417', 'M000003', 'S000012', 'Alaska Condensada Condensed Creamer Sweetened 168ml', '32.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/302484_46b8a100-87c5-41eb-b731-b72639dcc365_236x236.jpg?v=1645674224', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(418, 'P00000418', 'M000003', 'S000012', 'Jersey Sweetened Condensed Creamer 390g', '38.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/456738_a1084145-d8c8-47f2-b3a5-53f60ce3e16f_236x236.jpg?v=1645674244', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(419, 'P00000419', 'M000003', 'S000012', 'Alaska Evaporada Evaporated Creamer 140ml', '16.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/302489_51da8ff8-8610-45ca-819f-c1d7af9f18ab_236x236.jpg?v=1645674228', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(420, 'P00000420', 'M000003', 'S000012', 'Jolly Cow Condensada Sweetened Condensed Creamer 390g', '47.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/433270_0aba1dd8-029e-4fb6-a94c-563175590049_236x236.jpg?v=1645674240', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(421, 'P00000421', 'M000003', 'S000013', 'Robinsons Beef Tapa (Approx. Weight: 500 grams)', '212.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425763_236x236.jpg?v=1647006219', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(422, 'P00000422', 'M000003', 'S000013', 'Robinsons Beef Cubes (Approx. Weight: 500 grams)', '214.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425755_6c1c252d-c69b-4f51-9f7b-ac554cba26ae_236x236.jpg?v=1647002540', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(423, 'P00000423', 'M000003', 'S000013', 'Robinsons Beef Sirloin (Approx. Weight: 500 grams)', '227.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425759_34a8da7b-b299-44f4-964a-48accecfb030_236x236.jpg?v=1647002547', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(424, 'P00000424', 'M000003', 'S000013', 'Robinsons Beef Shank (Approx. Weight: 500 grams)', '152.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425749_33202b50-e536-4cab-a752-b56306a6087b_236x236.jpg?v=1647002494', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(425, 'P00000425', 'M000003', 'S000013', 'Robinsons Regular Ground Beef (Approx. Weight: 500 grams)', '167.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425728_38c8fac6-8b94-4229-be31-5ba80cce37cb_236x236.jpg?v=1647002516', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(426, 'P00000426', 'M000003', 'S000013', 'Robinsons Bacon Strips (Approx. Weight: 500 grams)', '189.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425761_236x236.jpg?v=1647006215', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(427, 'P00000427', 'M000003', 'S000013', 'Robinsons Pork Steak (Approx. Weight: 500 grams)', '141.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425769_d7dc7a19-5588-4ca4-a2d3-4b8ff05cc890_236x236.jpg?v=1647002480', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(428, 'P00000428', 'M000003', 'S000013', 'Robinsons Pork Belly (Approx. Weight: 500 grams)', '174.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425704_baab0aee-70ef-494b-9e18-24ba9717a465_236x236.jpg?v=1647002501', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(429, 'P00000429', 'M000003', 'S000013', 'Robinsons Pork Chop (Approx. Weight: 500 grams)', '143.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425705_e033d9e1-a05d-475b-ae2a-05d657c825bd_236x236.jpg?v=1647002505', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(430, 'P00000430', 'M000003', 'S000013', 'Robinsons Ground Pork Regular (Approx. Weight: 500 grams)', '131.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425708_d7680a81-3e92-459f-9598-0d194f692810_236x236.jpg?v=1647002508', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(431, 'P00000431', 'M000003', 'S000014', 'Magnolia Chicken Giniling (Approx. Weight: 250 grams)', '71.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304481_8361928b-fc8d-489c-b628-21a34b31994b_236x236.jpg?v=1654666533', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(432, 'P00000432', 'M000003', 'S000014', 'Robinsons Whole Chicken (Approx. Weight: 1000 grams)', '165.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/306968_14d8e506-4145-4cf2-9f16-f84a86c6861e_236x236.jpg?v=1657595291', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(433, 'P00000433', 'M000003', 'S000014', 'Magnolia Chicken Soup Pack (Approx. Weight: 1000 grams)', '127.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304474_b1948138-5e64-4608-8596-aa3924489f41_236x236.jpg?v=1659602037', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(434, 'P00000434', 'M000003', 'S000014', 'Robinsons Chicken Wings (Approx. Weight: 1000 grams)', '209.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/374968_9520e420-abd3-4001-b546-8bd4663b155f_236x236.jpg?v=1647003652', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(435, 'P00000435', 'M000003', 'S000014', 'Robinsons Chicken Thighs (Approx. Weight: 1000 grams)', '197.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/374969_0bdbf3a1-06e8-48f3-900a-788ab87bb667_236x236.jpg?v=1647003635', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(436, 'P00000436', 'M000003', 'S000014', 'Robinsons Chicken Drumstick (Approx. Weight: 1000 grams)', '204.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/374966_2ea262d2-6290-4ac6-82be-dfb81f02536f_236x236.jpg?v=1647003623', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(437, 'P00000437', 'M000003', 'S000014', 'Robinsons Chicken Breast (Approx. Weight: 1000 grams)', '194.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/374970_a1c8a790-b86a-47c8-97f4-8e11aedc4072_236x236.jpg?v=1647003649', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(438, 'P00000438', 'M000003', 'S000014', 'Magnolia Chicken Quarter Cut (Approx. Weight: 1000 grams)', '205.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304468_518bb419-22ca-487e-8781-264a891ea275_236x236.jpg?v=1657595077', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(439, 'P00000439', 'M000003', 'S000014', 'Magnolia Chicken Adobo Cut (Approx. Weight: 1000 grams)', '220.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304472_1d14ceb7-c3dd-44be-994e-2259b110f2a0_236x236.jpg?v=1659601989', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(440, 'P00000440', 'M000003', 'S000014', 'Magnolia Chicken Tinola Cut (Approx. Weight: 1000 grams)', '220.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304469_f7e284cf-0e63-40af-8c21-066ac687f5f8_236x236.jpg?v=1657595131', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(441, 'P00000441', 'M000003', 'S000015', 'Galleon Depot Cream Dory Fillet Portion Cut 1kg', '189.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/673171_5ea5054d-2a6c-420e-831b-b4d2dfe64b2b_236x236.jpg?v=1661238312', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(442, 'P00000442', 'M000003', 'S000015', 'FC Penshell Scallop Meat 250g', '119.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/673172_9bd46003-9c57-44f6-b59a-ff8867ffcdaa_236x236.jpg?v=1661238325', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(443, 'P00000443', 'M000003', 'S000015', 'FC Scallop Meat 500g', '599.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/673174_07dec298-c779-49e1-b08a-368b2f56cb3a_236x236.jpg?v=1657010245', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(444, 'P00000444', 'M000003', 'S000015', 'Fishta Nobashi Ebi 26/30', '299.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/534966_22282685-5841-4a03-b2da-d63bf74c247d_236x236.jpg?v=1647002811', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(445, 'P00000445', 'M000003', 'S000015', 'Fishta Bangus Deboned Belly Untrimmed Plain 500g', '262.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/565358_039c6941-cada-4279-88db-c5995a3cfcfa_236x236.jpg?v=1647003373', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(446, 'P00000446', 'M000003', 'S000015', 'Fishta Bangus Deboned Butterfly Fillet; 1 Piece Per Pack 380g Vacuum Packed', '168.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/565357_ab6998a7-98f3-42f3-8b62-f26f37fec69f_236x236.jpg?v=1647003369', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(447, 'P00000447', 'M000003', 'S000015', 'Fishta Ebi Fry Breaded Shrimp 220g', '318.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/530735_a2637134-aec3-4358-8783-28cddd9f4ca9_236x236.jpg?v=1647003388', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(448, 'P00000448', 'M000003', 'S000015', 'Fishta Seafood Mix (Squid Strips, Shrimp, And Scallop) 480g Vacuum Packed', '242.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/515430_9f5c1f3b-2756-43de-932e-253183741b3c_236x236.jpg?v=1647003384', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(449, 'P00000449', 'M000003', 'S000015', 'Fishta White Shrimp Head On, Shell On 280g', '235.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/591125_853172af-e9f9-43ef-ae21-40398eec08bc_236x236.jpg?v=1646390740', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(450, 'P00000450', 'M000003', 'S000015', 'Fishta Bangus Deboned Belly Untrimmed Marinated 500g', '268.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/565359_c5352ed4-7d10-4f97-ae9b-2e42e635ff20_236x236.jpg?v=1646390664', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'R1', 'Admin', '2022-07-07 11:48:20', '2022-07-07 11:48:20'),
(2, 'R2', 'Market', '2022-07-07 11:48:20', '2022-07-07 11:48:20'),
(3, 'R3', 'Shopper', '2022-07-07 11:48:20', '2022-07-07 11:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('IqPOdCdPM6jBRoNb6omWaYeWXRyf7JGc9bCr3JVt', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFFmdGJDbGJqUHlQUnFBOG1IMUFzS1ppaGlpMUtXZTZSWURUcktqcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1668584942),
('Zjjjx4U5TXinBX7XNTD2VElHbkzLfisUTjXp93Ae', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoid1VlenpVb1JEVGpqSnpmcnNFN2F0cm9Ya3pocXVUdzBoNnN5QVVDOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG9wcGVyL2NyZWF0ZSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkLmtsd0NvcXkydEYvQS83cjZDOWt2dUtXb0tkVzdaVnREQnF2UTJjL1RBTGFHbUtrOFdXMm0iO30=', 1668488042);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_lists`
--

CREATE TABLE `shopping_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `list_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` decimal(9,2) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = Deleted, 1 = Active, 2 = Completed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_lists`
--

INSERT INTO `shopping_lists` (`id`, `list_id`, `email`, `list_name`, `budget`, `total`, `status`, `created_at`, `updated_at`) VALUES
(1, 'L00000001', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 1', '200.00', '153.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(2, 'L00000002', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 2', '500.00', '500.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(3, 'L00000003', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 3', '500.00', '443.50', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(4, 'L00000004', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 4', '500.00', '477.25', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(5, 'L00000005', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 5', '500.00', '358.50', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(6, 'L00000006', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 6', '1000.00', '748.20', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(7, 'L00000007', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 7', '1000.00', '962.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(8, 'L00000008', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 8', '200.00', '147.50', 2, '2022-09-29 08:00:00', '2022-09-29 08:00:00'),
(9, 'L00000009', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 9', '100.00', '44.50', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(10, 'L00000010', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 10', '500.00', '423.00', 2, '2022-10-01 08:00:00', '2022-10-01 08:00:00'),
(11, 'L00000011', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 11', '500.00', '390.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(12, 'L00000012', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 12', '1000.00', '0.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(13, 'L00000013', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 13', '500.00', '220.00', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(14, 'L00000014', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 14', '600.00', '560.00', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(15, 'L00000015', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 15', '500.00', '381.00', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(16, 'L00000016', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 16', '600.00', '587.25', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(17, 'L00000017', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 17', '500.00', '420.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(18, 'L00000018', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 18', '500.00', '151.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(19, 'L00000019', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 19', '1000.00', '619.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(20, 'L00000020', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 20', '600.00', '580.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(21, 'L00000021', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 21', '500.00', '65.00', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(22, 'L00000022', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 22', '500.00', '61.50', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(23, 'L00000023', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 23', '700.00', '206.00', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(24, 'L00000024', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 24', '100.00', '19.00', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(25, 'L00000025', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 25', '1000.00', '451.50', 2, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(26, 'L00000026', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 26', '200.00', '153.00', 1, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(27, 'L00000027', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 27', '500.00', '500.00', 1, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(28, 'L00000028', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 28', '500.00', '443.50', 1, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(29, 'L00000029', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 29', '500.00', '477.25', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(30, 'L00000030', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 30', '500.00', '358.50', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(31, 'L00000031', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 31', '1000.00', '748.20', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(32, 'L00000032', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 32', '1000.00', '962.00', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(33, 'L00000033', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 33', '200.00', '147.50', 1, '2022-10-19 08:00:00', '2022-10-19 08:00:00'),
(34, 'L00000034', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 34', '100.00', '44.50', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(35, 'L00000035', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 35', '500.00', '423.00', 1, '2022-10-23 08:00:00', '2022-10-23 08:00:00'),
(36, 'L00000036', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 36', '500.00', '390.00', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(37, 'L00000037', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 37', '1000.00', '0.00', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(38, 'L00000038', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 38', '500.00', '220.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(39, 'L00000039', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 39', '600.00', '560.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(40, 'L00000040', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 40', '500.00', '381.00', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(41, 'L00000041', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 41', '600.00', '587.25', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(42, 'L00000042', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 42', '500.00', '420.00', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(43, 'L00000043', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 43', '500.00', '151.00', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(44, 'L00000044', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 44', '1000.00', '619.00', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(45, 'L00000045', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 45', '600.00', '580.00', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(46, 'L00000046', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 46', '500.00', '65.00', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(47, 'L00000047', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 47', '500.00', '61.50', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(48, 'L00000048', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 48', '700.00', '206.00', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(49, 'L00000049', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 49', '100.00', '19.00', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(50, 'L00000050', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 50', '1000.00', '451.50', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(51, 'L00000051', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 1', '1000.00', '886.25', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(52, 'L00000052', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 2', '1000.00', '511.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(53, 'L00000053', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 3', '1500.00', '1194.50', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(54, 'L00000054', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 4', '500.00', '184.50', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(55, 'L00000055', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 5', '500.00', '185.50', 2, '2022-09-29 08:00:00', '2022-09-29 08:00:00'),
(56, 'L00000056', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 6', '500.00', '216.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(57, 'L00000057', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 7', '500.00', '153.50', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(58, 'L00000058', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 8', '500.00', '395.35', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(59, 'L00000059', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 9', '500.00', '129.90', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(60, 'L00000060', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 10', '500.00', '489.00', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(61, 'L00000061', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 11', '1000.00', '613.00', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(62, 'L00000062', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 12', '500.00', '490.00', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(63, 'L00000063', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 13', '200.00', '155.50', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(64, 'L00000064', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 14', '500.00', '485.00', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(65, 'L00000065', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 15', '500.00', '384.00', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(66, 'L00000066', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 16', '500.00', '403.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(67, 'L00000067', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 17', '500.00', '314.25', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(68, 'L00000068', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 18', '500.00', '410.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(69, 'L00000069', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 19', '500.00', '454.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(70, 'L00000070', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 20', '500.00', '375.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(71, 'L00000071', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 21', '500.00', '122.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(72, 'L00000072', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 22', '700.00', '455.50', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(73, 'L00000073', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 23', '500.00', '183.50', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(74, 'L00000074', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 24', '300.00', '79.75', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(75, 'L00000075', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 25', '500.00', '97.00', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(76, 'L00000076', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 26', '1000.00', '886.25', 1, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(77, 'L00000077', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 27', '1000.00', '511.00', 1, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(78, 'L00000078', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 28', '1500.00', '1194.50', 1, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(79, 'L00000079', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 29', '500.00', '184.50', 1, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(80, 'L00000080', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 30', '500.00', '185.50', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(81, 'L00000081', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 31', '500.00', '216.00', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(82, 'L00000082', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 32', '500.00', '153.50', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(83, 'L00000083', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 33', '500.00', '395.35', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(84, 'L00000084', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 34', '500.00', '129.90', 1, '2022-10-19 08:00:00', '2022-10-19 08:00:00'),
(85, 'L00000085', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 35', '500.00', '489.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(86, 'L00000086', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 36', '1000.00', '613.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(87, 'L00000087', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 37', '500.00', '490.00', 1, '2022-10-21 08:00:00', '2022-10-21 08:00:00'),
(88, 'L00000088', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 38', '200.00', '155.50', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(89, 'L00000089', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 39', '500.00', '485.00', 1, '2022-10-23 08:00:00', '2022-10-23 08:00:00'),
(90, 'L00000090', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 40', '500.00', '384.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(91, 'L00000091', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 41', '500.00', '403.00', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(92, 'L00000092', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 42', '500.00', '314.25', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(93, 'L00000093', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 43', '500.00', '410.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(94, 'L00000094', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 44', '500.00', '454.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(95, 'L00000095', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 45', '500.00', '375.00', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(96, 'L00000096', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 46', '500.00', '122.00', 1, '2022-10-31 08:00:00', '2022-10-31 08:00:00'),
(97, 'L00000097', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 47', '700.00', '455.50', 1, '2022-11-01 08:00:00', '2022-11-01 08:00:00'),
(98, 'L00000098', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 48', '500.00', '183.50', 1, '2022-11-01 08:00:00', '2022-11-01 08:00:00'),
(99, 'L00000099', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 49', '300.00', '79.75', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(100, 'L00000100', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 50', '500.00', '97.00', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(101, 'L00000101', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 1', '500.00', '351.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(102, 'L00000102', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 2', '500.00', '276.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(103, 'L00000103', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 3', '1200.00', '0.00', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(104, 'L00000104', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 4', '100.00', '85.50', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(105, 'L00000105', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 5', '100.00', '98.00', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(106, 'L00000106', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 6', '500.00', '275.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(107, 'L00000107', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 7', '500.00', '276.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(108, 'L00000108', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 8', '500.00', '475.00', 2, '2022-09-29 08:00:00', '2022-09-29 08:00:00'),
(109, 'L00000109', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 9', '500.00', '425.00', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(110, 'L00000110', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 10', '500.00', '318.00', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(111, 'L00000111', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 11', '500.00', '378.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(112, 'L00000112', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 12', '500.00', '320.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(113, 'L00000113', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 13', '1500.00', '1490.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(114, 'L00000114', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 14', '500.00', '383.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(115, 'L00000115', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 15', '500.00', '415.00', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(116, 'L00000116', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 16', '500.00', '326.00', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(117, 'L00000117', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 17', '400.00', '216.00', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(118, 'L00000118', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 18', '500.00', '430.00', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(119, 'L00000119', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 19', '500.00', '375.00', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(120, 'L00000120', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 20', '300.00', '211.00', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(121, 'L00000121', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 21', '1000.00', '221.00', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(122, 'L00000122', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 22', '500.00', '99.95', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(123, 'L00000123', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 23', '500.00', '108.50', 2, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(124, 'L00000124', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 24', '1000.00', '483.00', 2, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(125, 'L00000125', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 25', '500.00', '127.20', 2, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(126, 'L00000126', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 26', '500.00', '351.00', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(127, 'L00000127', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 27', '500.00', '276.00', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(128, 'L00000128', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 28', '1200.00', '0.00', 1, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(129, 'L00000129', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 29', '100.00', '85.50', 1, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(130, 'L00000130', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 30', '100.00', '98.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(131, 'L00000131', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 31', '500.00', '275.00', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(132, 'L00000132', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 32', '500.00', '276.00', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(133, 'L00000133', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 33', '500.00', '475.00', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(134, 'L00000134', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 34', '500.00', '425.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(135, 'L00000135', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 35', '500.00', '318.00', 1, '2022-10-21 08:00:00', '2022-10-21 08:00:00'),
(136, 'L00000136', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 36', '500.00', '378.00', 1, '2022-10-21 08:00:00', '2022-10-21 08:00:00'),
(137, 'L00000137', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 37', '500.00', '320.00', 1, '2022-10-21 08:00:00', '2022-10-21 08:00:00'),
(138, 'L00000138', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 38', '1500.00', '1490.00', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(139, 'L00000139', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 39', '500.00', '383.00', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(140, 'L00000140', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 40', '500.00', '415.00', 1, '2022-10-23 08:00:00', '2022-10-23 08:00:00'),
(141, 'L00000141', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 41', '500.00', '326.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(142, 'L00000142', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 42', '400.00', '216.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(143, 'L00000143', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 43', '500.00', '430.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(144, 'L00000144', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 44', '500.00', '375.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(145, 'L00000145', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 45', '300.00', '211.00', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(146, 'L00000146', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 46', '1000.00', '221.00', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(147, 'L00000147', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 47', '500.00', '99.95', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(148, 'L00000148', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 48', '500.00', '108.50', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(149, 'L00000149', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 49', '1000.00', '483.00', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(150, 'L00000150', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 50', '500.00', '127.20', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(151, 'L00000151', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 1', '500.00', '381.50', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(152, 'L00000152', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 2', '500.00', '450.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(153, 'L00000153', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 3', '2500.00', '0.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(154, 'L00000154', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 4', '500.00', '223.50', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(155, 'L00000155', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 5', '150.00', '102.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(156, 'L00000156', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 6', '500.00', '423.50', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(157, 'L00000157', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 7', '500.00', '322.70', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(158, 'L00000158', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 8', '500.00', '412.30', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(159, 'L00000159', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 9', '200.00', '193.50', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(160, 'L00000160', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 10', '500.00', '298.00', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(161, 'L00000161', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 11', '500.00', '424.50', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(162, 'L00000162', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 12', '500.00', '380.75', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(163, 'L00000163', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 13', '500.00', '488.50', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(164, 'L00000164', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 14', '500.00', '435.50', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(165, 'L00000165', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 15', '500.00', '323.50', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(166, 'L00000166', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 16', '500.00', '453.75', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(167, 'L00000167', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 17', '500.00', '427.00', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(168, 'L00000168', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 18', '500.00', '373.50', 2, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(169, 'L00000169', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 19', '200.00', '181.00', 2, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(170, 'L00000170', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 20', '1000.00', '622.00', 2, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(171, 'L00000171', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 21', '500.00', '158.50', 2, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(172, 'L00000172', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 22', '500.00', '147.50', 2, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(173, 'L00000173', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 23', '500.00', '232.00', 2, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(174, 'L00000174', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 24', '200.00', '53.00', 2, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(175, 'L00000175', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 25', '500.00', '78.25', 2, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(176, 'L00000176', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 26', '500.00', '381.50', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(177, 'L00000177', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 27', '500.00', '450.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(178, 'L00000178', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 28', '2500.00', '0.00', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(179, 'L00000179', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 29', '500.00', '223.50', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(180, 'L00000180', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 30', '150.00', '102.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(181, 'L00000181', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 31', '500.00', '423.50', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(182, 'L00000182', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 32', '500.00', '322.70', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(183, 'L00000183', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 33', '500.00', '412.30', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(184, 'L00000184', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 34', '200.00', '193.50', 1, '2022-10-23 08:00:00', '2022-10-23 08:00:00'),
(185, 'L00000185', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 35', '500.00', '298.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(186, 'L00000186', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 36', '500.00', '424.50', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(187, 'L00000187', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 37', '500.00', '380.75', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(188, 'L00000188', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 38', '500.00', '488.50', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(189, 'L00000189', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 39', '500.00', '435.50', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(190, 'L00000190', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 40', '500.00', '323.50', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(191, 'L00000191', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 41', '500.00', '453.75', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(192, 'L00000192', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 42', '500.00', '427.00', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(193, 'L00000193', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 43', '500.00', '373.50', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(194, 'L00000194', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 44', '200.00', '181.00', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(195, 'L00000195', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 45', '1000.00', '622.00', 1, '2022-10-31 08:00:00', '2022-10-31 08:00:00'),
(196, 'L00000196', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 46', '500.00', '158.50', 1, '2022-10-31 08:00:00', '2022-10-31 08:00:00'),
(197, 'L00000197', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 47', '500.00', '147.50', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(198, 'L00000198', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 48', '500.00', '232.00', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(199, 'L00000199', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 49', '200.00', '53.00', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(200, 'L00000200', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 50', '500.00', '78.25', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(201, 'L00000201', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 1', '700.00', '520.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(202, 'L00000202', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 2', '400.00', '320.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(203, 'L00000203', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 3', '1100.00', '1050.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(204, 'L00000204', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 4', '500.00', '449.00', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(205, 'L00000205', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 5', '500.00', '448.00', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(206, 'L00000206', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 6', '500.00', '326.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(207, 'L00000207', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 7', '500.00', '360.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(208, 'L00000208', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 8', '600.00', '563.00', 2, '2022-10-01 08:00:00', '2022-10-01 08:00:00'),
(209, 'L00000209', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 9', '300.00', '276.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(210, 'L00000210', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 10', '500.00', '451.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(211, 'L00000211', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 11', '400.00', '228.50', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(212, 'L00000212', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 12', '500.00', '301.50', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(213, 'L00000213', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 13', '400.00', '340.35', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(214, 'L00000214', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 14', '500.00', '337.50', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(215, 'L00000215', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 15', '500.00', '423.00', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(216, 'L00000216', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 16', '500.00', '396.50', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(217, 'L00000217', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 17', '500.00', '474.00', 2, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(218, 'L00000218', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 18', '700.00', '680.00', 2, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(219, 'L00000219', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 19', '1000.00', '700.50', 2, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(220, 'L00000220', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 20', '500.00', '413.00', 2, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(221, 'L00000221', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 21', '500.00', '139.00', 2, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(222, 'L00000222', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 22', '700.00', '218.00', 2, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(223, 'L00000223', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 23', '500.00', '140.75', 2, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(224, 'L00000224', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 24', '500.00', '102.25', 2, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(225, 'L00000225', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 25', '500.00', '178.00', 2, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(226, 'L00000226', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 26', '700.00', '520.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(227, 'L00000227', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 27', '400.00', '320.00', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(228, 'L00000228', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 28', '1100.00', '1050.00', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(229, 'L00000229', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 29', '500.00', '449.00', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(230, 'L00000230', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 30', '500.00', '448.00', 1, '2022-10-19 08:00:00', '2022-10-19 08:00:00'),
(231, 'L00000231', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 31', '500.00', '326.00', 1, '2022-10-21 08:00:00', '2022-10-21 08:00:00'),
(232, 'L00000232', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 32', '500.00', '360.00', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(233, 'L00000233', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 33', '600.00', '563.00', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(234, 'L00000234', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 34', '300.00', '276.00', 1, '2022-10-23 08:00:00', '2022-10-23 08:00:00'),
(235, 'L00000235', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 35', '500.00', '451.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(236, 'L00000236', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 36', '400.00', '228.50', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(237, 'L00000237', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 37', '500.00', '301.50', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(238, 'L00000238', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 38', '400.00', '340.35', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(239, 'L00000239', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 39', '500.00', '337.50', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(240, 'L00000240', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 40', '500.00', '423.00', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(241, 'L00000241', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 41', '500.00', '396.50', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(242, 'L00000242', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 42', '500.00', '474.00', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(243, 'L00000243', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 43', '700.00', '680.00', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(244, 'L00000244', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 44', '1000.00', '700.50', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(245, 'L00000245', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 45', '500.00', '413.00', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(246, 'L00000246', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 46', '500.00', '139.00', 1, '2022-10-31 08:00:00', '2022-10-31 08:00:00'),
(247, 'L00000247', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 47', '700.00', '218.00', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(248, 'L00000248', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 48', '500.00', '140.75', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(249, 'L00000249', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 49', '500.00', '102.25', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(250, 'L00000250', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 50', '500.00', '178.00', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(251, 'L00000251', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 1', '800.00', '780.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(252, 'L00000252', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 2', '400.00', '320.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(253, 'L00000253', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 3', '1500.00', '1320.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(254, 'L00000254', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 4', '500.00', '480.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(255, 'L00000255', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 5', '300.00', '204.00', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(256, 'L00000256', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 6', '500.00', '435.00', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(257, 'L00000257', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 7', '500.00', '432.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(258, 'L00000258', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 8', '500.00', '459.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(259, 'L00000259', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 9', '600.00', '557.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(260, 'L00000260', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 10', '500.00', '414.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(261, 'L00000261', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 11', '250.00', '210.50', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(262, 'L00000262', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 12', '500.00', '444.00', 2, '2022-10-01 08:00:00', '2022-10-01 08:00:00'),
(263, 'L00000263', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 13', '500.00', '403.50', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(264, 'L00000264', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 14', '300.00', '262.50', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(265, 'L00000265', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 15', '700.00', '616.00', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(266, 'L00000266', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 16', '100.00', '89.30', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(267, 'L00000267', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 17', '200.00', '168.30', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(268, 'L00000268', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 18', '250.00', '244.00', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(269, 'L00000269', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 19', '1000.00', '914.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(270, 'L00000270', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 20', '400.00', '338.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(271, 'L00000271', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 21', '500.00', '65.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(272, 'L00000272', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 22', '500.00', '61.50', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(273, 'L00000273', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 23', '700.00', '206.00', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(274, 'L00000274', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 24', '100.00', '19.00', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(275, 'L00000275', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 25', '1000.00', '451.50', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(276, 'L00000276', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 26', '800.00', '780.00', 1, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(277, 'L00000277', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 27', '400.00', '320.00', 1, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(278, 'L00000278', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 28', '1500.00', '1320.00', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(279, 'L00000279', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 29', '500.00', '480.00', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(280, 'L00000280', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 30', '300.00', '204.00', 1, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(281, 'L00000281', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 31', '500.00', '435.00', 1, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(282, 'L00000282', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 32', '500.00', '432.00', 1, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(283, 'L00000283', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 33', '500.00', '459.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(284, 'L00000284', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 34', '600.00', '557.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(285, 'L00000285', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 35', '500.00', '414.00', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(286, 'L00000286', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 36', '250.00', '210.50', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(287, 'L00000287', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 37', '500.00', '444.00', 1, '2022-10-19 08:00:00', '2022-10-19 08:00:00'),
(288, 'L00000288', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 38', '500.00', '403.50', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(289, 'L00000289', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 39', '300.00', '262.50', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(290, 'L00000290', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 40', '700.00', '616.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(291, 'L00000291', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 41', '100.00', '89.30', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(292, 'L00000292', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 42', '200.00', '168.30', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(293, 'L00000293', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 43', '250.00', '244.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(294, 'L00000294', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 44', '1000.00', '914.00', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(295, 'L00000295', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 45', '400.00', '338.00', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(296, 'L00000296', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 46', '500.00', '65.00', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(297, 'L00000297', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 47', '500.00', '61.50', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(298, 'L00000298', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 48', '700.00', '206.00', 1, '2022-10-31 08:00:00', '2022-10-31 08:00:00'),
(299, 'L00000299', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 49', '100.00', '19.00', 1, '2022-11-01 08:00:00', '2022-11-01 08:00:00'),
(300, 'L00000300', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 50', '1000.00', '451.50', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(301, 'L00000301', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 1', '800.00', '744.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(302, 'L00000302', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 2', '350.00', '310.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(303, 'L00000303', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 3', '1500.00', '1490.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(304, 'L00000304', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 4', '550.00', '516.00', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(305, 'L00000305', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 5', '500.00', '448.00', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(306, 'L00000306', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 6', '410.00', '402.00', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(307, 'L00000307', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 7', '505.00', '504.00', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(308, 'L00000308', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 8', '500.00', '473.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(309, 'L00000309', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 9', '500.00', '455.00', 2, '2022-10-01 08:00:00', '2022-10-01 08:00:00'),
(310, 'L00000310', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 10', '300.00', '291.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(311, 'L00000311', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 11', '210.00', '207.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(312, 'L00000312', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 12', '300.00', '276.00', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(313, 'L00000313', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 13', '3000.00', '2617.50', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(314, 'L00000314', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 14', '200.00', '142.50', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(315, 'L00000315', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 15', '500.00', '433.00', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(316, 'L00000316', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 16', '500.00', '357.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(317, 'L00000317', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 17', '500.00', '352.50', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(318, 'L00000318', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 18', '300.00', '253.50', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(319, 'L00000319', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 19', '300.00', '236.50', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(320, 'L00000320', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 20', '400.00', '395.75', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(321, 'L00000321', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 21', '500.00', '122.00', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(322, 'L00000322', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 22', '700.00', '455.50', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(323, 'L00000323', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 23', '500.00', '183.50', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(324, 'L00000324', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 24', '300.00', '79.75', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(325, 'L00000325', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 25', '500.00', '97.00', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(326, 'L00000326', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 26', '800.00', '744.00', 1, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(327, 'L00000327', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 27', '350.00', '310.00', 1, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(328, 'L00000328', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 28', '1500.00', '1490.00', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(329, 'L00000329', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 29', '550.00', '516.00', 1, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(330, 'L00000330', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 30', '500.00', '448.00', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(331, 'L00000331', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 31', '410.00', '402.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(332, 'L00000332', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 32', '505.00', '504.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(333, 'L00000333', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 33', '500.00', '473.00', 1, '2022-10-21 08:00:00', '2022-10-21 08:00:00'),
(334, 'L00000334', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 34', '500.00', '455.00', 1, '2022-10-21 08:00:00', '2022-10-21 08:00:00'),
(335, 'L00000335', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 35', '300.00', '291.00', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(336, 'L00000336', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 36', '210.00', '207.00', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(337, 'L00000337', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 37', '300.00', '276.00', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(338, 'L00000338', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 38', '3000.00', '2617.50', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(339, 'L00000339', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 39', '200.00', '142.50', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(340, 'L00000340', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 40', '500.00', '433.00', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(341, 'L00000341', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 41', '500.00', '357.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(342, 'L00000342', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 42', '500.00', '352.50', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(343, 'L00000343', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 43', '300.00', '253.50', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(344, 'L00000344', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 44', '300.00', '236.50', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(345, 'L00000345', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 45', '400.00', '395.75', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(346, 'L00000346', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 46', '500.00', '122.00', 1, '2022-10-31 08:00:00', '2022-10-31 08:00:00'),
(347, 'L00000347', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 47', '700.00', '455.50', 1, '2022-11-01 08:00:00', '2022-11-01 08:00:00');
INSERT INTO `shopping_lists` (`id`, `list_id`, `email`, `list_name`, `budget`, `total`, `status`, `created_at`, `updated_at`) VALUES
(348, 'L00000348', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 48', '500.00', '183.50', 1, '2022-11-01 08:00:00', '2022-11-01 08:00:00'),
(349, 'L00000349', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 49', '300.00', '79.75', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(350, 'L00000350', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 50', '500.00', '97.00', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(351, 'L00000351', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 1', '500.00', '443.25', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(352, 'L00000352', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 2', '500.00', '358.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(353, 'L00000353', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 3', '500.00', '340.00', 2, '2022-09-24 08:00:00', '2022-09-24 08:00:00'),
(354, 'L00000354', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 4', '500.00', '331.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(355, 'L00000355', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 5', '500.00', '346.00', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(356, 'L00000356', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 6', '500.00', '375.00', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(357, 'L00000357', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 7', '220.00', '215.50', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(358, 'L00000358', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 8', '200.00', '164.50', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(359, 'L00000359', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 9', '50.00', '46.75', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(360, 'L00000360', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 10', '500.00', '335.00', 2, '2022-09-29 08:00:00', '2022-09-29 08:00:00'),
(361, 'L00000361', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 11', '500.00', '378.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(362, 'L00000362', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 12', '500.00', '320.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(363, 'L00000363', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 13', '220.00', '216.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(364, 'L00000364', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 14', '500.00', '452.00', 2, '2022-10-01 08:00:00', '2022-10-01 08:00:00'),
(365, 'L00000365', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 15', '700.00', '645.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(366, 'L00000366', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 16', '500.00', '170.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(367, 'L00000367', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 17', '500.00', '450.00', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(368, 'L00000368', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 18', '500.00', '389.50', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(369, 'L00000369', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 19', '500.00', '473.60', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(370, 'L00000370', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 20', '500.00', '415.50', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(371, 'L00000371', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 21', '1000.00', '221.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(372, 'L00000372', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 22', '500.00', '99.95', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(373, 'L00000373', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 23', '500.00', '108.50', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(374, 'L00000374', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 24', '1000.00', '483.00', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(375, 'L00000375', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 25', '500.00', '127.20', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(376, 'L00000376', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 26', '500.00', '443.25', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(377, 'L00000377', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 27', '500.00', '358.00', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(378, 'L00000378', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 28', '500.00', '340.00', 1, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(379, 'L00000379', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 29', '500.00', '331.00', 1, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(380, 'L00000380', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 30', '500.00', '346.00', 1, '2022-10-15 08:00:00', '2022-10-15 08:00:00'),
(381, 'L00000381', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 31', '500.00', '375.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(382, 'L00000382', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 32', '220.00', '215.50', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(383, 'L00000383', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 33', '200.00', '164.50', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(384, 'L00000384', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 34', '50.00', '46.75', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(385, 'L00000385', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 35', '500.00', '335.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(386, 'L00000386', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 36', '500.00', '378.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(387, 'L00000387', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 37', '500.00', '320.00', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(388, 'L00000388', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 38', '220.00', '216.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(389, 'L00000389', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 39', '500.00', '452.00', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(390, 'L00000390', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 40', '700.00', '645.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(391, 'L00000391', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 41', '500.00', '170.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(392, 'L00000392', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 42', '500.00', '450.00', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(393, 'L00000393', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 43', '500.00', '389.50', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(394, 'L00000394', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 44', '500.00', '473.60', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(395, 'L00000395', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 45', '500.00', '415.50', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(396, 'L00000396', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 46', '1000.00', '221.00', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(397, 'L00000397', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 47', '500.00', '99.95', 1, '2022-10-31 08:00:00', '2022-10-31 08:00:00'),
(398, 'L00000398', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 48', '500.00', '108.50', 1, '2022-10-31 08:00:00', '2022-10-31 08:00:00'),
(399, 'L00000399', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 49', '1000.00', '483.00', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(400, 'L00000400', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 50', '500.00', '127.20', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(401, 'L00000401', 'harold_booth@gmail.com', 'Harold Booth\'s List 1', '700.00', '661.25', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(402, 'L00000402', 'harold_booth@gmail.com', 'Harold Booth\'s List 2', '320.00', '303.50', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(403, 'L00000403', 'harold_booth@gmail.com', 'Harold Booth\'s List 3', '2200.00', '2128.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(404, 'L00000404', 'harold_booth@gmail.com', 'Harold Booth\'s List 4', '520.00', '513.25', 2, '2022-09-29 08:00:00', '2022-09-29 08:00:00'),
(405, 'L00000405', 'harold_booth@gmail.com', 'Harold Booth\'s List 5', '500.00', '476.00', 2, '2022-09-29 08:00:00', '2022-09-29 08:00:00'),
(406, 'L00000406', 'harold_booth@gmail.com', 'Harold Booth\'s List 6', '250.00', '240.50', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(407, 'L00000407', 'harold_booth@gmail.com', 'Harold Booth\'s List 7', '200.00', '174.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(408, 'L00000408', 'harold_booth@gmail.com', 'Harold Booth\'s List 8', '300.00', '295.50', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(409, 'L00000409', 'harold_booth@gmail.com', 'Harold Booth\'s List 9', '300.00', '264.75', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(410, 'L00000410', 'harold_booth@gmail.com', 'Harold Booth\'s List 10', '200.00', '154.60', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(411, 'L00000411', 'harold_booth@gmail.com', 'Harold Booth\'s List 11', '500.00', '260.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(412, 'L00000412', 'harold_booth@gmail.com', 'Harold Booth\'s List 12', '2000.00', '1875.00', 2, '2022-10-01 08:00:00', '2022-10-01 08:00:00'),
(413, 'L00000413', 'harold_booth@gmail.com', 'Harold Booth\'s List 13', '500.00', '470.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(414, 'L00000414', 'harold_booth@gmail.com', 'Harold Booth\'s List 14', '500.00', '417.00', 2, '2022-10-02 08:00:00', '2022-10-02 08:00:00'),
(415, 'L00000415', 'harold_booth@gmail.com', 'Harold Booth\'s List 15', '300.00', '294.00', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(416, 'L00000416', 'harold_booth@gmail.com', 'Harold Booth\'s List 16', '500.00', '438.00', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(417, 'L00000417', 'harold_booth@gmail.com', 'Harold Booth\'s List 17', '400.00', '328.00', 2, '2022-10-05 08:00:00', '2022-10-05 08:00:00'),
(418, 'L00000418', 'harold_booth@gmail.com', 'Harold Booth\'s List 18', '500.00', '403.50', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(419, 'L00000419', 'harold_booth@gmail.com', 'Harold Booth\'s List 19', '250.00', '226.50', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(420, 'L00000420', 'harold_booth@gmail.com', 'Harold Booth\'s List 20', '400.00', '376.00', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(421, 'L00000421', 'harold_booth@gmail.com', 'Harold Booth\'s List 21', '500.00', '158.50', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(422, 'L00000422', 'harold_booth@gmail.com', 'Harold Booth\'s List 22', '500.00', '147.50', 2, '2022-10-06 08:00:00', '2022-10-06 08:00:00'),
(423, 'L00000423', 'harold_booth@gmail.com', 'Harold Booth\'s List 23', '500.00', '232.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(424, 'L00000424', 'harold_booth@gmail.com', 'Harold Booth\'s List 24', '200.00', '53.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(425, 'L00000425', 'harold_booth@gmail.com', 'Harold Booth\'s List 25', '500.00', '78.25', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(426, 'L00000426', 'harold_booth@gmail.com', 'Harold Booth\'s List 26', '700.00', '661.25', 1, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(427, 'L00000427', 'harold_booth@gmail.com', 'Harold Booth\'s List 27', '320.00', '303.50', 1, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(428, 'L00000428', 'harold_booth@gmail.com', 'Harold Booth\'s List 28', '2200.00', '2128.00', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(429, 'L00000429', 'harold_booth@gmail.com', 'Harold Booth\'s List 29', '520.00', '513.25', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(430, 'L00000430', 'harold_booth@gmail.com', 'Harold Booth\'s List 30', '500.00', '476.00', 1, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(431, 'L00000431', 'harold_booth@gmail.com', 'Harold Booth\'s List 31', '250.00', '240.50', 1, '2022-10-14 08:00:00', '2022-10-14 08:00:00'),
(432, 'L00000432', 'harold_booth@gmail.com', 'Harold Booth\'s List 32', '200.00', '174.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(433, 'L00000433', 'harold_booth@gmail.com', 'Harold Booth\'s List 33', '300.00', '295.50', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(434, 'L00000434', 'harold_booth@gmail.com', 'Harold Booth\'s List 34', '300.00', '264.75', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(435, 'L00000435', 'harold_booth@gmail.com', 'Harold Booth\'s List 35', '200.00', '154.60', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(436, 'L00000436', 'harold_booth@gmail.com', 'Harold Booth\'s List 36', '500.00', '260.00', 1, '2022-10-19 08:00:00', '2022-10-19 08:00:00'),
(437, 'L00000437', 'harold_booth@gmail.com', 'Harold Booth\'s List 37', '2000.00', '1875.00', 1, '2022-10-19 08:00:00', '2022-10-19 08:00:00'),
(438, 'L00000438', 'harold_booth@gmail.com', 'Harold Booth\'s List 38', '500.00', '470.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(439, 'L00000439', 'harold_booth@gmail.com', 'Harold Booth\'s List 39', '500.00', '417.00', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(440, 'L00000440', 'harold_booth@gmail.com', 'Harold Booth\'s List 40', '300.00', '294.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(441, 'L00000441', 'harold_booth@gmail.com', 'Harold Booth\'s List 41', '500.00', '438.00', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(442, 'L00000442', 'harold_booth@gmail.com', 'Harold Booth\'s List 42', '400.00', '328.00', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(443, 'L00000443', 'harold_booth@gmail.com', 'Harold Booth\'s List 43', '500.00', '403.50', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(444, 'L00000444', 'harold_booth@gmail.com', 'Harold Booth\'s List 44', '250.00', '226.50', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(445, 'L00000445', 'harold_booth@gmail.com', 'Harold Booth\'s List 45', '400.00', '376.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(446, 'L00000446', 'harold_booth@gmail.com', 'Harold Booth\'s List 46', '500.00', '158.50', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(447, 'L00000447', 'harold_booth@gmail.com', 'Harold Booth\'s List 47', '500.00', '147.50', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(448, 'L00000448', 'harold_booth@gmail.com', 'Harold Booth\'s List 48', '500.00', '232.00', 1, '2022-10-29 08:00:00', '2022-10-29 08:00:00'),
(449, 'L00000449', 'harold_booth@gmail.com', 'Harold Booth\'s List 49', '200.00', '53.00', 1, '2022-11-01 08:00:00', '2022-11-01 08:00:00'),
(450, 'L00000450', 'harold_booth@gmail.com', 'Harold Booth\'s List 50', '500.00', '78.25', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(451, 'L00000451', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 1', '500.00', '443.25', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(452, 'L00000452', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 2', '250.00', '240.00', 2, '2022-09-25 08:00:00', '2022-09-25 08:00:00'),
(453, 'L00000453', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 3', '500.00', '480.00', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(454, 'L00000454', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 4', '500.00', '197.50', 2, '2022-09-26 08:00:00', '2022-09-26 08:00:00'),
(455, 'L00000455', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 5', '200.00', '152.00', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(456, 'L00000456', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 6', '500.00', '375.00', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(457, 'L00000457', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 7', '500.00', '280.50', 2, '2022-09-27 08:00:00', '2022-09-27 08:00:00'),
(458, 'L00000458', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 8', '500.00', '315.00', 2, '2022-09-28 08:00:00', '2022-09-28 08:00:00'),
(459, 'L00000459', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 9', '500.00', '439.00', 2, '2022-09-30 08:00:00', '2022-09-30 08:00:00'),
(460, 'L00000460', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 10', '550.00', '532.50', 2, '2022-10-01 08:00:00', '2022-10-01 08:00:00'),
(461, 'L00000461', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 11', '500.00', '444.00', 2, '2022-10-01 08:00:00', '2022-10-01 08:00:00'),
(462, 'L00000462', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 12', '500.00', '220.50', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(463, 'L00000463', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 13', '500.00', '352.00', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(464, 'L00000464', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 14', '500.00', '300.75', 2, '2022-10-03 08:00:00', '2022-10-03 08:00:00'),
(465, 'L00000465', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 15', '500.00', '346.00', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(466, 'L00000466', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 16', '250.00', '233.00', 2, '2022-10-04 08:00:00', '2022-10-04 08:00:00'),
(467, 'L00000467', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 17', '560.00', '552.00', 2, '2022-10-07 08:00:00', '2022-10-07 08:00:00'),
(468, 'L00000468', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 18', '2500.00', '2419.50', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(469, 'L00000469', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 19', '200.00', '172.45', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(470, 'L00000470', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 20', '450.00', '449.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(471, 'L00000471', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 21', '500.00', '139.00', 2, '2022-10-08 08:00:00', '2022-10-08 08:00:00'),
(472, 'L00000472', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 22', '700.00', '218.00', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(473, 'L00000473', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 23', '500.00', '140.75', 2, '2022-10-09 08:00:00', '2022-10-09 08:00:00'),
(474, 'L00000474', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 24', '500.00', '102.25', 2, '2022-10-10 08:00:00', '2022-10-10 08:00:00'),
(475, 'L00000475', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 25', '500.00', '178.00', 2, '2022-10-11 08:00:00', '2022-10-11 08:00:00'),
(476, 'L00000476', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 26', '500.00', '443.25', 1, '2022-10-12 08:00:00', '2022-10-12 08:00:00'),
(477, 'L00000477', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 27', '250.00', '240.00', 1, '2022-10-13 08:00:00', '2022-10-13 08:00:00'),
(478, 'L00000478', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 28', '500.00', '480.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(479, 'L00000479', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 29', '500.00', '197.50', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(480, 'L00000480', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 30', '200.00', '152.00', 1, '2022-10-16 08:00:00', '2022-10-16 08:00:00'),
(481, 'L00000481', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 31', '500.00', '375.00', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(482, 'L00000482', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 32', '500.00', '280.50', 1, '2022-10-17 08:00:00', '2022-10-17 08:00:00'),
(483, 'L00000483', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 33', '500.00', '315.00', 1, '2022-10-18 08:00:00', '2022-10-18 08:00:00'),
(484, 'L00000484', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 34', '500.00', '439.00', 1, '2022-10-19 08:00:00', '2022-10-19 08:00:00'),
(485, 'L00000485', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 35', '550.00', '532.50', 1, '2022-10-20 08:00:00', '2022-10-20 08:00:00'),
(486, 'L00000486', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 36', '500.00', '444.00', 1, '2022-10-22 08:00:00', '2022-10-22 08:00:00'),
(487, 'L00000487', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 37', '500.00', '220.50', 1, '2022-10-23 08:00:00', '2022-10-23 08:00:00'),
(488, 'L00000488', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 38', '500.00', '352.00', 1, '2022-10-24 08:00:00', '2022-10-24 08:00:00'),
(489, 'L00000489', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 39', '500.00', '300.75', 1, '2022-10-25 08:00:00', '2022-10-25 08:00:00'),
(490, 'L00000490', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 40', '500.00', '346.00', 1, '2022-10-26 08:00:00', '2022-10-26 08:00:00'),
(491, 'L00000491', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 41', '250.00', '233.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(492, 'L00000492', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 42', '560.00', '552.00', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(493, 'L00000493', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 43', '2500.00', '2419.50', 1, '2022-10-27 08:00:00', '2022-10-27 08:00:00'),
(494, 'L00000494', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 44', '200.00', '172.45', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(495, 'L00000495', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 45', '450.00', '449.00', 1, '2022-10-28 08:00:00', '2022-10-28 08:00:00'),
(496, 'L00000496', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 46', '500.00', '139.00', 1, '2022-10-30 08:00:00', '2022-10-30 08:00:00'),
(497, 'L00000497', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 47', '700.00', '218.00', 1, '2022-11-01 08:00:00', '2022-11-01 08:00:00'),
(498, 'L00000498', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 48', '500.00', '140.75', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(499, 'L00000499', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 49', '500.00', '102.25', 1, '2022-11-02 08:00:00', '2022-11-02 08:00:00'),
(500, 'L00000500', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 50', '500.00', '178.00', 1, '2022-11-03 08:00:00', '2022-11-03 08:00:00'),
(501, 'L00000501', 'martina_andrew@gmail.com', 'Test', '50.00', '8.35', 0, '2022-11-14 20:38:52', '2022-11-14 20:39:37'),
(502, 'L00000502', 'excelrey.00110011@gmail.com', 'list_1', '100.00', '34.25', 2, '2022-11-15 22:53:36', '2022-11-15 22:56:53');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_id`, `category_id`, `subcategory_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'S000001', 'C000001', 'Diapers & Wipes', 0, '2022-07-07 19:48:20', '2022-09-25 09:26:35'),
(2, 'S000002', 'C000001', 'Food & Nutrition', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(3, 'S000003', 'C000001', 'Formula Milk', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(4, 'S000004', 'C000002', 'Baking Needs', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(5, 'S000005', 'C000002', 'Bread', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(6, 'S000006', 'C000002', 'Cakes', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(7, 'S000007', 'C000003', 'Carbonated Drinks', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(8, 'S000008', 'C000003', 'Coffee & Tea', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(9, 'S000009', 'C000003', 'Water', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(10, 'S000010', 'C000004', 'Butter & Margarine', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(11, 'S000011', 'C000004', 'Cheese', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(12, 'S000012', 'C000004', 'Liquid Milk', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(13, 'S000013', 'C000005', 'Fresh Beef & Pork', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(14, 'S000014', 'C000005', 'Fresh Chicken', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(15, 'S000015', 'C000005', 'Fresh Seafood', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'R3',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'R1', 'Admin', 'admin@shopculator.com', NULL, '$2y$10$AkolHf0cBRxOdo.crG1AG.DXetFrWTrmvhQcKm2AE7PQJteTsAFE6', NULL, NULL, NULL, '7Qt6Sm0sG7ZzNq6NUtFwbymUNEpifMnKlyNSR6bR9cE1kDaz5HIBC4sdvVtw', NULL, 'profile-photos/PyaKs1ajj6NvuhsgMgnCNFazCLWn4up4yZz1WM00.png', 0, '2022-08-23 01:57:42', '2022-09-13 07:41:19'),
(2, 'R2', 'SM Supermarket Bacolod', 'sm_bacolod@shopculator.com', NULL, '$2y$10$R1lhfxtSJ/66OE9w0/I/xusOxUh4u0N/HrGW.Ml.KQAVXZ9on4fHm', NULL, NULL, NULL, 'lUXjKWQxMyQoh20YfrAOXUWsHHNCo0z8TGyVGKTcOYVhMQdWWJxkhReYQoEO', NULL, 'profile-photos/hbQB63hOccvLfkW6dxMw9UjtCw1fMNpOplWl4NKW.png', 0, '2022-09-12 13:31:44', '2022-11-14 20:51:29'),
(3, 'R2', 'AllDay Supermarket Bacolod', 'allday_bacolod@shopculator.com', NULL, '$2y$10$k3lcEJzJzK.e1DT9g7dJbuxXnR/BjkFub7y/mKsPOG/4AQz6ytRbe', NULL, NULL, NULL, 'QEOrIl6rOO8a4P7NxUOty0cLaaVpnLWq8E42EcoteSC61NREKPxjJ2tzoXKd', NULL, 'profile-photos/ZBQOMImizR0nS0eqcDY6bn2SA19ADTi7Ukzpn49G.png', 0, '2022-09-15 00:52:46', '2022-11-14 20:53:47'),
(4, 'R2', 'Robinsons Supermarket Bacolod', 'rob_bacolod@shopculator.com', NULL, '$2y$10$viMACkRbd0C1ZOBRvD9IgukRY20fFX/hF01iyM0V.tRFmbAj1502q', NULL, NULL, NULL, 'NtekXHW8GH02hgHJZ7oMqd7i9iRMiTmQ8EAQci4SoECzsbGMYuhRsJQW4ueZ', NULL, 'profile-photos/NZRd79ENvvOOzocUprA1OtKtQWzlsvsmnsUFcmxi.png', 0, '2022-09-15 03:36:23', '2022-11-14 20:53:00'),
(5, 'R3', 'Nicky Pemberton', 'nicky_pemberton@gmail.com', NULL, '$2y$10$uKoAaNO78bdoEqbZ5BovjOODKM7nrqsk8hUu50gYL8LF6gXGCyX6u', NULL, NULL, NULL, 'nggroMsOt9UlUG6OUSkcRlavNlmubbs2OKalJBoZSfqgjv51Wik6CGbI200X', NULL, NULL, 0, '2022-09-01 03:32:29', '2022-09-01 03:32:29'),
(6, 'R3', 'Martina Andrew', 'martina_andrew@gmail.com', NULL, '$2y$10$.klwCoqy2tF/A/7r6C9kvuKWoKdW7ZVtDBqvQ2c/TALaGmKk8WW2m', NULL, NULL, NULL, 'LaGGS9uQ2gRE4K71KjU1jpzz1KslxZrMqgdoMOWAEKU0NHoBbAKHDZTvOTJl', NULL, NULL, 0, '2022-09-02 03:32:59', '2022-09-02 03:32:59'),
(7, 'R3', 'Pollyanna Edge', 'pollyanna_edge@gmail.com', NULL, '$2y$10$y/W022/OJZzTkEUhjN7GVultlfR.AcLgD6zHWFvvBHfGNvWxJnZ4i', NULL, NULL, NULL, 'awBatH0d2Fz2xjXjWxUAIOEdKcbzCgIuOQgCdBJZKkIuqNRSWt8FpwaMX6PN', NULL, NULL, 0, '2022-09-02 03:33:22', '2022-09-02 03:33:22'),
(8, 'R3', 'Safa Kavanagh', 'safa_kavanagh@gmail.com', NULL, '$2y$10$yeAAtrmIbbp46dml4f8rju6OTL.uTZlyvBMicNlaFazuN8IzjC9Lm', NULL, NULL, NULL, 'l0xBtdJV12MMkd423104QprOPHYOiP8DMApFUoG6bGeC7IzTMkkakfa7Az6w', NULL, NULL, 0, '2022-09-03 03:33:47', '2022-09-03 03:33:47'),
(9, 'R3', 'Janae Monaghan', 'janae_monaghan@gmail.com', NULL, '$2y$10$UjH8uCuhXy4AgsEBVqVkyuRUHgV48xU54fwpHxjGXb21N.tzRSpvK', NULL, NULL, NULL, 'VHUjaIjfvomJKiBK6M5yucavhS521kSH77JO2681YaEj0xiKAtodjsn6fIUu', NULL, NULL, 0, '2022-09-04 03:32:01', '2022-09-04 03:32:01'),
(10, 'R3', 'Allan Davenport', 'allan_davenport@gmail.com', NULL, '$2y$10$9VsmTeArVmFDn8MJWO0h0OgXQscoX8w65dROprTKjpVwV88MQrvm6', NULL, NULL, NULL, 'lWJp8lAsQ5IpXCMus5Knn1Hq0ayRtQ8U1mIt9X4xhhWpO4ZdFpHgu7VKSzBy', NULL, NULL, 0, '2022-09-04 00:08:35', '2022-09-04 00:08:35'),
(11, 'R3', 'Nabiha Murray', 'nabiha_murray@gmail.com', NULL, '$2y$10$mSMHJEqtXc6gjFhQsVUa9OidJ6hz4LCU3Er/9PwkMSGXmbyicIi4.', NULL, NULL, NULL, 'ZF160ehsjcMwVDsoYZ4CYfUsvG9OZpnN0acfQDK348TRyr5Tf8R3iUUBc4KW', NULL, NULL, 0, '2022-09-04 00:09:52', '2022-09-04 00:09:52'),
(12, 'R3', 'Nadeem Beltran', 'nadeem_beltran@gmail.com', NULL, '$2y$10$ycAeg9t6mgwUcNBEo.0qyuum.lknlI1c7NDH7otcesPyxbuHHinmW', NULL, NULL, NULL, 'qbaf0KN7vGmxiBVzzHhxRVqBWNsMNnfO8cm0gvvCulrk7ZrnuASJiTQIoibH', NULL, NULL, 0, '2022-09-05 00:10:20', '2022-09-05 00:10:20'),
(13, 'R3', 'Harold Booth', 'harold_booth@gmail.com', NULL, '$2y$10$ea2xPGRqTGRMkRdxLSRhR.HuRBBsWS5GvndZYQ5Dy620DuYiTN6nm', NULL, NULL, NULL, 'Y21hwmg41oxd2oliunt0NYIynT0QEakHqHPoatmwKxm8NM1tr3adJaOHljbB', NULL, NULL, 0, '2022-09-05 00:10:20', '2022-09-05 00:10:20'),
(14, 'R3', 'Teodor Cousins', 'teodor_cousins@gmail.com', NULL, '$2y$10$7htMSx7cQPVxuklYAG0C..ZW8fs3L7AbDmO4IILq01oAI7RDOtFH2', NULL, NULL, NULL, 'wBmeleaLo7ZY7XygwMFz0m8Of34qvad2pbBweHtFy65akLU4cBJPIuZEkbTq', NULL, NULL, 0, '2022-09-06 00:10:20', '2022-09-25 04:56:44'),
(15, 'R3', 'xel01', 'excelrey.00110011@gmail.com', NULL, '$2y$10$wSHwK/zTAT1thjF78lCHHuqvAjcoPDuiMrK3QymvgXALZy/2YIU8y', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-11-15 22:51:03', '2022-11-15 22:51:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `list_details`
--
ALTER TABLE `list_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `detail_id` (`detail_id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `market_id` (`market_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_id` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shopping_lists`
--
ALTER TABLE `shopping_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `list_id` (`list_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategory_id` (`subcategory_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_details`
--
ALTER TABLE `list_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2072;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shopping_lists`
--
ALTER TABLE `shopping_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `shopculator-test`
--
CREATE DATABASE IF NOT EXISTS `shopculator-test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopculator-test`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `category_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'C000001', 'Baby & Kids', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:38'),
(2, 'C000002', 'Bakery', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:38'),
(3, 'C000003', 'Beverages', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:38'),
(4, 'C000004', 'Dairy Items', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:38'),
(5, 'C000005', 'Fresh Meat & Seafood', 0, '2022-07-07 19:48:20', '2022-09-25 03:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `list_details`
--

CREATE TABLE `list_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_checked` tinyint(1) NOT NULL,
  `list_index` int(11) UNSIGNED NOT NULL,
  `detail_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_details`
--

INSERT INTO `list_details` (`id`, `is_checked`, `list_index`, `detail_id`, `list_id`, `product_id`, `price`, `quantity`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'D000000000001', 'L00000001', 'P00000031', '0.00', 2, 0, '2022-09-18 18:52:40', '2022-09-18 19:44:58'),
(2, 1, 1, 'D000000000002', 'L00000001', 'P00000032', '0.00', 3, 0, '2022-09-18 18:52:40', '2022-09-18 19:44:58'),
(3, 1, 2, 'D000000000003', 'L00000001', 'P00000033', '0.00', 3, 0, '2022-09-18 18:52:40', '2022-09-18 19:44:58'),
(4, 1, 3, 'D000000000004', 'L00000001', 'P00000034', '0.00', 2, 0, '2022-09-18 18:52:41', '2022-09-18 19:44:59'),
(5, 1, 0, 'D000000000005', 'L00000002', 'P00000094', '0.00', 1, 0, '2022-09-18 18:53:55', '2022-09-18 18:53:55'),
(6, 1, 1, 'D000000000006', 'L00000002', 'P00000104', '0.00', 1, 0, '2022-09-18 18:53:55', '2022-09-18 18:53:55'),
(7, 1, 2, 'D000000000007', 'L00000002', 'P00000122', '0.00', 1, 0, '2022-09-18 18:53:56', '2022-09-18 18:53:56'),
(8, 1, 3, 'D000000000008', 'L00000002', 'P00000042', '0.00', 1, 0, '2022-09-18 18:53:56', '2022-09-18 18:53:56'),
(9, 1, 0, 'D000000000009', 'L00000003', 'P00000135', '0.00', 2, 0, '2022-09-18 18:55:26', '2022-09-18 18:55:26'),
(10, 1, 1, 'D000000000010', 'L00000003', 'P00000037', '0.00', 2, 0, '2022-09-18 18:55:26', '2022-09-18 18:55:26'),
(11, 1, 2, 'D000000000011', 'L00000003', 'P00000117', '0.00', 1, 0, '2022-09-18 18:55:26', '2022-09-18 18:55:26'),
(12, 1, 3, 'D000000000012', 'L00000003', 'P00000132', '0.00', 2, 0, '2022-09-18 18:55:27', '2022-09-18 18:55:27'),
(13, 1, 0, 'D000000000013', 'L00000004', 'P00000076', '0.00', 1, 0, '2022-09-18 18:57:11', '2022-09-18 18:57:11'),
(14, 1, 1, 'D000000000014', 'L00000004', 'P00000072', '0.00', 1, 0, '2022-09-18 18:57:11', '2022-09-18 18:57:11'),
(15, 1, 0, 'D000000000015', 'L00000005', 'P00000056', '0.00', 2, 0, '2022-09-18 18:58:55', '2022-09-18 18:58:55'),
(16, 1, 1, 'D000000000016', 'L00000005', 'P00000054', '0.00', 1, 0, '2022-09-18 18:58:55', '2022-09-18 18:58:55'),
(17, 1, 2, 'D000000000017', 'L00000005', 'P00000053', '0.00', 1, 0, '2022-09-18 18:58:56', '2022-09-18 18:58:56'),
(18, 1, 0, 'D000000000018', 'L00000006', 'P00000122', '0.00', 2, 0, '2022-09-18 18:59:47', '2022-09-18 18:59:47'),
(19, 1, 1, 'D000000000019', 'L00000006', 'P00000129', '0.00', 2, 0, '2022-09-18 18:59:47', '2022-09-18 18:59:47'),
(20, 1, 0, 'D000000000020', 'L00000007', 'P00000122', '0.00', 2, 0, '2022-09-18 19:23:53', '2022-09-18 19:23:53'),
(21, 1, 1, 'D000000000021', 'L00000007', 'P00000121', '0.00', 2, 0, '2022-09-18 19:23:53', '2022-09-18 19:23:53'),
(22, 1, 2, 'D000000000022', 'L00000007', 'P00000135', '0.00', 2, 0, '2022-09-18 19:23:53', '2022-09-18 19:23:53'),
(23, 1, 3, 'D000000000023', 'L00000007', 'P00000132', '0.00', 2, 0, '2022-09-18 19:23:53', '2022-09-18 19:23:54'),
(24, 1, 0, 'D000000000024', 'L00000008', 'P00000070', '0.00', 5, 0, '2022-09-18 19:25:52', '2022-09-18 19:25:52'),
(25, 1, 0, 'D000000000025', 'L00000009', 'P00000031', '0.00', 1, 0, '2022-09-18 19:26:45', '2022-09-18 19:26:56'),
(26, 1, 1, 'D000000000026', 'L00000009', 'P00000032', '0.00', 1, 0, '2022-09-18 19:26:45', '2022-09-18 19:26:57'),
(27, 1, 2, 'D000000000027', 'L00000009', 'P00000033', '0.00', 1, 0, '2022-09-18 19:26:45', '2022-09-18 19:26:57'),
(28, 1, 3, 'D000000000028', 'L00000009', 'P00000083', '0.00', 2, 0, '2022-09-18 19:26:45', '2022-09-18 19:26:57'),
(29, 1, 0, 'D000000000029', 'L00000010', 'P00000143', '0.00', 1, 0, '2022-09-18 19:39:23', '2022-09-18 19:39:23'),
(30, 1, 1, 'D000000000030', 'L00000010', 'P00000150', '0.00', 1, 0, '2022-09-18 19:39:23', '2022-09-18 19:39:23'),
(31, 1, 0, 'D000000000031', 'L00000011', 'P00000165', '0.00', 3, 0, '2022-09-25 10:12:55', '2022-09-25 10:12:55'),
(32, 1, 1, 'D000000000032', 'L00000011', 'P00000166', '0.00', 3, 0, '2022-09-25 10:12:55', '2022-09-25 10:12:55'),
(33, 0, 0, 'D000000000033', 'L00000012', 'P00000173', '0.00', 1, 0, '2022-09-25 10:13:25', '2022-09-25 10:13:25'),
(34, 1, 0, 'D000000000034', 'L00000013', 'P00000289', '0.00', 2, 0, '2022-09-25 10:14:35', '2022-09-25 10:14:36'),
(35, 0, 1, 'D000000000035', 'L00000013', 'P00000290', '0.00', 2, 0, '2022-09-25 10:14:36', '2022-09-25 10:14:36'),
(36, 1, 0, 'D000000000036', 'L00000014', 'P00000258', '0.00', 1, 0, '2022-09-25 10:15:57', '2022-09-25 10:15:57'),
(37, 1, 1, 'D000000000037', 'L00000014', 'P00000191', '0.00', 1, 0, '2022-09-25 10:15:57', '2022-09-25 10:15:57'),
(38, 1, 2, 'D000000000038', 'L00000014', 'P00000280', '0.00', 1, 0, '2022-09-25 10:15:57', '2022-09-25 10:15:57'),
(39, 1, 0, 'D000000000039', 'L00000015', 'P00000261', '0.00', 2, 0, '2022-09-25 10:16:57', '2022-09-25 10:16:57'),
(40, 1, 1, 'D000000000040', 'L00000015', 'P00000264', '0.00', 3, 0, '2022-09-25 10:16:57', '2022-09-25 10:16:57'),
(41, 1, 2, 'D000000000041', 'L00000015', 'P00000265', '0.00', 2, 0, '2022-09-25 10:16:57', '2022-09-25 10:16:57'),
(42, 1, 0, 'D000000000042', 'L00000016', 'P00000334', '0.00', 1, 0, '2022-09-25 10:34:50', '2022-09-25 10:34:50'),
(43, 1, 1, 'D000000000043', 'L00000016', 'P00000339', '0.00', 1, 0, '2022-09-25 10:34:50', '2022-09-25 10:34:50'),
(44, 1, 2, 'D000000000044', 'L00000016', 'P00000338', '0.00', 1, 0, '2022-09-25 10:34:50', '2022-09-25 10:34:50'),
(45, 1, 3, 'D000000000045', 'L00000016', 'P00000333', '0.00', 1, 0, '2022-09-25 10:34:51', '2022-09-25 10:34:51'),
(46, 1, 0, 'D000000000046', 'L00000017', 'P00000312', '0.00', 2, 0, '2022-09-25 10:35:26', '2022-09-25 10:35:26'),
(47, 1, 1, 'D000000000047', 'L00000017', 'P00000316', '0.00', 2, 0, '2022-09-25 10:35:26', '2022-09-25 10:35:26'),
(48, 1, 2, 'D000000000048', 'L00000017', 'P00000319', '0.00', 2, 0, '2022-09-25 10:35:27', '2022-09-25 10:35:27'),
(49, 1, 0, 'D000000000049', 'L00000018', 'P00000384', '0.00', 4, 0, '2022-09-25 10:38:42', '2022-09-25 10:38:42'),
(50, 1, 1, 'D000000000050', 'L00000018', 'P00000387', '0.00', 4, 0, '2022-09-25 10:38:42', '2022-09-25 10:38:42'),
(51, 1, 2, 'D000000000051', 'L00000018', 'P00000383', '0.00', 4, 0, '2022-09-25 10:38:42', '2022-09-25 10:38:42'),
(52, 1, 0, 'D000000000052', 'L00000019', 'P00000431', '0.00', 4, 0, '2022-09-25 10:40:51', '2022-09-25 10:40:51'),
(53, 1, 1, 'D000000000053', 'L00000019', 'P00000433', '0.00', 1, 0, '2022-09-25 10:40:51', '2022-09-25 10:40:51'),
(54, 1, 2, 'D000000000054', 'L00000019', 'P00000438', '0.00', 1, 0, '2022-09-25 10:40:51', '2022-09-25 10:40:51'),
(55, 1, 0, 'D000000000055', 'L00000021', 'P00000010', '0.00', 1, 0, '2022-09-25 10:50:06', '2022-09-25 10:50:06'),
(56, 1, 1, 'D000000000056', 'L00000021', 'P00000009', '0.00', 1, 0, '2022-09-25 10:50:06', '2022-09-25 10:50:06'),
(57, 1, 2, 'D000000000057', 'L00000021', 'P00000008', '0.00', 1, 0, '2022-09-25 10:50:07', '2022-09-25 10:50:07'),
(58, 1, 0, 'D000000000058', 'L00000022', 'P00000011', '0.00', 1, 0, '2022-09-25 10:51:16', '2022-09-25 10:51:16'),
(59, 1, 1, 'D000000000059', 'L00000022', 'P00000012', '0.00', 1, 0, '2022-09-25 10:51:16', '2022-09-25 10:51:16'),
(60, 1, 2, 'D000000000060', 'L00000022', 'P00000013', '0.00', 1, 0, '2022-09-25 10:51:16', '2022-09-25 10:51:17'),
(61, 1, 0, 'D000000000061', 'L00000023', 'P00000027', '0.00', 1, 0, '2022-09-25 10:51:41', '2022-09-25 10:51:41'),
(62, 1, 0, 'D000000000062', 'L00000024', 'P00000031', '0.00', 1, 0, '2022-09-25 10:52:26', '2022-09-25 10:52:26'),
(63, 1, 1, 'D000000000063', 'L00000024', 'P00000032', '0.00', 1, 0, '2022-09-25 10:52:26', '2022-09-25 10:52:26'),
(64, 1, 2, 'D000000000064', 'L00000024', 'P00000033', '0.00', 1, 0, '2022-09-25 10:52:26', '2022-09-25 10:52:26'),
(65, 1, 3, 'D000000000065', 'L00000024', 'P00000036', '0.00', 1, 0, '2022-09-25 10:52:27', '2022-09-25 10:52:27'),
(66, 1, 4, 'D000000000066', 'L00000024', 'P00000038', '0.00', 1, 0, '2022-09-25 10:52:27', '2022-09-25 10:52:28'),
(67, 1, 0, 'D000000000067', 'L00000025', 'P00000043', '0.00', 1, 0, '2022-09-25 10:53:09', '2022-09-25 10:53:09'),
(68, 1, 1, 'D000000000068', 'L00000025', 'P00000048', '0.00', 1, 0, '2022-09-25 10:53:09', '2022-09-25 10:53:09'),
(69, 1, 2, 'D000000000069', 'L00000025', 'P00000044', '0.00', 1, 0, '2022-09-25 10:53:09', '2022-09-25 10:53:09'),
(70, 1, 0, 'D000000000070', 'L00000026', 'P00000052', '0.00', 1, 0, '2022-09-25 10:55:41', '2022-09-25 10:55:41'),
(71, 1, 1, 'D000000000071', 'L00000026', 'P00000060', '0.00', 1, 0, '2022-09-25 10:55:41', '2022-09-25 10:55:41'),
(72, 1, 2, 'D000000000072', 'L00000026', 'P00000053', '0.00', 1, 0, '2022-09-25 10:55:41', '2022-09-25 10:55:41'),
(73, 1, 0, 'D000000000073', 'L00000027', 'P00000070', '0.00', 3, 0, '2022-09-25 10:56:07', '2022-09-25 10:56:07'),
(74, 1, 1, 'D000000000074', 'L00000027', 'P00000369', '0.00', 2, 0, '2022-09-25 10:56:07', '2022-09-25 10:56:07'),
(75, 1, 0, 'D000000000075', 'L00000028', 'P00000078', '0.00', 3, 0, '2022-09-25 10:56:42', '2022-09-25 10:56:42'),
(76, 1, 1, 'D000000000076', 'L00000028', 'P00000079', '0.00', 3, 0, '2022-09-25 10:56:42', '2022-09-25 10:56:42'),
(77, 1, 2, 'D000000000077', 'L00000028', 'P00000072', '0.00', 2, 0, '2022-09-25 10:56:42', '2022-09-25 10:56:42'),
(78, 1, 0, 'D000000000078', 'L00000029', 'P00000090', '0.00', 1, 0, '2022-09-25 10:57:22', '2022-09-25 10:57:22'),
(79, 1, 1, 'D000000000079', 'L00000029', 'P00000084', '0.00', 1, 0, '2022-09-25 10:57:22', '2022-09-25 10:57:22'),
(80, 1, 2, 'D000000000080', 'L00000029', 'P00000088', '0.00', 1, 0, '2022-09-25 10:57:23', '2022-09-25 10:57:23'),
(81, 1, 0, 'D000000000081', 'L00000030', 'P00000120', '0.00', 3, 0, '2022-09-25 11:04:09', '2022-09-25 11:04:09'),
(82, 1, 1, 'D000000000082', 'L00000030', 'P00000117', '0.00', 3, 0, '2022-09-25 11:04:10', '2022-09-25 11:04:10'),
(83, 1, 0, 'D000000000083', 'L00000031', 'P00000280', '0.00', 1, 0, '2022-09-25 11:04:56', '2022-09-25 11:04:56'),
(84, 1, 1, 'D000000000084', 'L00000031', 'P00000277', '0.00', 1, 0, '2022-09-25 11:04:56', '2022-09-25 11:04:56'),
(85, 1, 0, 'D000000000085', 'L00000032', 'P00000249', '0.00', 2, 0, '2022-09-25 11:05:37', '2022-09-25 11:05:37'),
(86, 1, 1, 'D000000000086', 'L00000032', 'P00000250', '0.00', 2, 0, '2022-09-25 11:05:37', '2022-09-25 11:05:37'),
(87, 1, 2, 'D000000000087', 'L00000032', 'P00000248', '0.00', 2, 0, '2022-09-25 11:05:37', '2022-09-25 11:05:38'),
(88, 1, 0, 'D000000000088', 'L00000033', 'P00000197', '0.00', 1, 0, '2022-09-25 11:06:08', '2022-09-25 11:06:09'),
(89, 1, 1, 'D000000000089', 'L00000033', 'P00000198', '0.00', 1, 0, '2022-09-25 11:06:09', '2022-09-25 11:06:09'),
(90, 1, 2, 'D000000000090', 'L00000033', 'P00000195', '0.00', 1, 0, '2022-09-25 11:06:09', '2022-09-25 11:06:09'),
(91, 1, 0, 'D000000000091', 'L00000034', 'P00000252', '0.00', 1, 0, '2022-09-25 11:06:37', '2022-09-25 11:06:37'),
(92, 1, 1, 'D000000000092', 'L00000034', 'P00000258', '0.00', 1, 0, '2022-09-25 11:06:38', '2022-09-25 11:06:38'),
(93, 1, 2, 'D000000000093', 'L00000034', 'P00000256', '0.00', 1, 0, '2022-09-25 11:06:38', '2022-09-25 11:06:38'),
(94, 1, 0, 'D000000000094', 'L00000035', 'P00000285', '0.00', 1, 0, '2022-09-25 11:07:19', '2022-09-25 11:07:19'),
(95, 1, 1, 'D000000000095', 'L00000035', 'P00000286', '0.00', 1, 0, '2022-09-25 11:07:19', '2022-09-25 11:07:19'),
(96, 1, 0, 'D000000000096', 'L00000036', 'P00000446', '0.00', 1, 0, '2022-09-25 11:07:44', '2022-09-25 11:07:44'),
(97, 1, 1, 'D000000000097', 'L00000036', 'P00000449', '0.00', 1, 0, '2022-09-25 11:07:44', '2022-09-25 11:07:44'),
(98, 1, 0, 'D000000000098', 'L00000037', 'P00000338', '0.00', 1, 0, '2022-09-25 11:08:07', '2022-09-25 11:08:07'),
(99, 1, 1, 'D000000000099', 'L00000037', 'P00000334', '0.00', 1, 0, '2022-09-25 11:08:07', '2022-09-25 11:08:07'),
(100, 1, 2, 'D000000000100', 'L00000037', 'P00000332', '0.00', 1, 0, '2022-09-25 11:08:07', '2022-09-25 11:08:07'),
(101, 1, 0, 'D000000000101', 'L00000038', 'P00000371', '0.00', 10, 0, '2022-09-25 11:08:50', '2022-09-25 11:08:50'),
(102, 1, 1, 'D000000000102', 'L00000038', 'P00000372', '0.00', 10, 0, '2022-09-25 11:08:50', '2022-09-25 11:08:50'),
(103, 1, 2, 'D000000000103', 'L00000038', 'P00000379', '0.00', 3, 0, '2022-09-25 11:08:50', '2022-09-25 11:08:50'),
(104, 1, 0, 'D000000000104', 'L00000039', 'P00000314', '0.00', 4, 0, '2022-09-25 11:09:21', '2022-09-25 11:09:21'),
(105, 1, 1, 'D000000000105', 'L00000039', 'P00000318', '0.00', 4, 0, '2022-09-25 11:09:21', '2022-09-25 11:09:21'),
(106, 1, 0, 'D000000000106', 'L00000040', 'P00000358', '0.00', 2, 0, '2022-09-25 11:09:52', '2022-09-25 11:09:52'),
(107, 1, 1, 'D000000000107', 'L00000040', 'P00000360', '0.00', 2, 0, '2022-09-25 11:09:52', '2022-09-25 11:09:52'),
(108, 1, 2, 'D000000000108', 'L00000040', 'P00000355', '0.00', 2, 0, '2022-09-25 11:09:52', '2022-09-25 11:09:52'),
(109, 1, 0, 'D000000000109', 'L00000041', 'P00000005', '0.00', 2, 0, '2022-09-25 11:12:13', '2022-09-25 11:12:13'),
(110, 1, 1, 'D000000000110', 'L00000041', 'P00000004', '0.00', 2, 0, '2022-09-25 11:12:13', '2022-09-25 11:12:13'),
(111, 1, 2, 'D000000000111', 'L00000041', 'P00000003', '0.00', 2, 0, '2022-09-25 11:12:13', '2022-09-25 11:12:13'),
(112, 1, 0, 'D000000000112', 'L00000042', 'P00000015', '0.00', 1, 0, '2022-09-25 11:12:34', '2022-09-25 11:12:34'),
(113, 1, 1, 'D000000000113', 'L00000042', 'P00000016', '0.00', 1, 0, '2022-09-25 11:12:34', '2022-09-25 11:12:34'),
(114, 1, 2, 'D000000000114', 'L00000042', 'P00000014', '0.00', 1, 0, '2022-09-25 11:12:34', '2022-09-25 11:12:34'),
(115, 1, 3, 'D000000000115', 'L00000042', 'P00000017', '0.00', 1, 0, '2022-09-25 11:12:34', '2022-09-25 11:12:34'),
(116, 0, 0, 'D000000000116', 'L00000043', 'P00000027', '0.00', 1, 0, '2022-09-25 11:12:53', '2022-09-25 11:12:53'),
(117, 1, 0, 'D000000000117', 'L00000044', 'P00000031', '0.00', 3, 0, '2022-09-25 11:13:30', '2022-09-25 11:13:30'),
(118, 1, 1, 'D000000000118', 'L00000044', 'P00000032', '0.00', 3, 0, '2022-09-25 11:13:30', '2022-09-25 11:13:30'),
(119, 1, 2, 'D000000000119', 'L00000044', 'P00000033', '0.00', 3, 0, '2022-09-25 11:13:30', '2022-09-25 11:13:30'),
(120, 1, 0, 'D000000000120', 'L00000045', 'P00000049', '0.00', 1, 0, '2022-09-25 11:13:51', '2022-09-25 11:13:51'),
(121, 1, 1, 'D000000000121', 'L00000045', 'P00000050', '0.00', 1, 0, '2022-09-25 11:13:51', '2022-09-25 11:13:51'),
(122, 1, 2, 'D000000000122', 'L00000045', 'P00000045', '0.00', 1, 0, '2022-09-25 11:13:51', '2022-09-25 11:13:51'),
(123, 1, 0, 'D000000000123', 'L00000046', 'P00000058', '0.00', 1, 0, '2022-09-25 11:14:21', '2022-09-25 11:14:22'),
(124, 1, 1, 'D000000000124', 'L00000046', 'P00000057', '0.00', 1, 0, '2022-09-25 11:14:22', '2022-09-25 11:14:22'),
(125, 1, 2, 'D000000000125', 'L00000046', 'P00000055', '0.00', 1, 0, '2022-09-25 11:14:22', '2022-09-25 11:14:22'),
(126, 1, 3, 'D000000000126', 'L00000046', 'P00000059', '0.00', 1, 0, '2022-09-25 11:14:22', '2022-09-25 11:14:22'),
(127, 1, 0, 'D000000000127', 'L00000047', 'P00000066', '0.00', 4, 0, '2022-09-25 11:14:55', '2022-09-25 11:14:55'),
(128, 1, 1, 'D000000000128', 'L00000047', 'P00000067', '0.00', 4, 0, '2022-09-25 11:14:55', '2022-09-25 11:14:55'),
(129, 1, 0, 'D000000000129', 'L00000048', 'P00000073', '0.00', 2, 0, '2022-09-25 11:15:30', '2022-09-25 11:15:30'),
(130, 1, 1, 'D000000000130', 'L00000048', 'P00000074', '0.00', 2, 0, '2022-09-25 11:15:30', '2022-09-25 11:15:30'),
(131, 1, 2, 'D000000000131', 'L00000048', 'P00000077', '0.00', 10, 0, '2022-09-25 11:15:30', '2022-09-25 11:15:30'),
(132, 1, 0, 'D000000000132', 'L00000049', 'P00000085', '0.00', 5, 0, '2022-09-25 11:15:54', '2022-09-25 11:15:54'),
(133, 1, 0, 'D000000000133', 'L00000050', 'P00000099', '0.00', 1, 0, '2022-09-25 11:16:20', '2022-09-25 11:16:20'),
(134, 1, 1, 'D000000000134', 'L00000050', 'P00000098', '0.00', 1, 0, '2022-09-25 11:16:21', '2022-09-25 11:16:21'),
(135, 1, 0, 'D000000000135', 'L00000051', 'P00000155', '0.00', 1, 0, '2022-09-25 11:16:44', '2022-09-25 11:16:44'),
(136, 1, 1, 'D000000000136', 'L00000051', 'P00000151', '0.00', 1, 0, '2022-09-25 11:16:44', '2022-09-25 11:16:44'),
(137, 1, 0, 'D000000000137', 'L00000052', 'P00000163', '0.00', 1, 0, '2022-09-25 11:17:00', '2022-09-25 11:17:00'),
(138, 1, 1, 'D000000000138', 'L00000052', 'P00000164', '0.00', 1, 0, '2022-09-25 11:17:00', '2022-09-25 11:17:00'),
(139, 1, 2, 'D000000000139', 'L00000052', 'P00000161', '0.00', 1, 0, '2022-09-25 11:17:00', '2022-09-25 11:17:00'),
(140, 1, 3, 'D000000000140', 'L00000052', 'P00000162', '0.00', 1, 0, '2022-09-25 11:17:00', '2022-09-25 11:17:00'),
(141, 1, 0, 'D000000000141', 'L00000053', 'P00000171', '0.00', 2, 0, '2022-09-25 11:17:33', '2022-09-25 11:17:33'),
(142, 1, 0, 'D000000000142', 'L00000054', 'P00000182', '0.00', 1, 0, '2022-09-25 11:18:09', '2022-09-25 11:18:09'),
(143, 1, 1, 'D000000000143', 'L00000054', 'P00000189', '0.00', 1, 0, '2022-09-25 11:18:09', '2022-09-25 11:18:09'),
(144, 1, 2, 'D000000000144', 'L00000054', 'P00000190', '0.00', 1, 0, '2022-09-25 11:18:09', '2022-09-25 11:18:09'),
(145, 1, 0, 'D000000000145', 'L00000055', 'P00000192', '0.00', 3, 0, '2022-09-25 11:18:33', '2022-09-25 11:18:33'),
(146, 1, 1, 'D000000000146', 'L00000055', 'P00000191', '0.00', 2, 0, '2022-09-25 11:18:33', '2022-09-25 11:18:33'),
(147, 1, 0, 'D000000000147', 'L00000056', 'P00000207', '0.00', 1, 0, '2022-09-25 11:19:07', '2022-09-25 11:19:07'),
(148, 1, 1, 'D000000000148', 'L00000056', 'P00000203', '0.00', 1, 0, '2022-09-25 11:19:07', '2022-09-25 11:19:07'),
(149, 1, 2, 'D000000000149', 'L00000056', 'P00000204', '0.00', 1, 0, '2022-09-25 11:19:07', '2022-09-25 11:19:07'),
(150, 1, 3, 'D000000000150', 'L00000056', 'P00000210', '0.00', 1, 0, '2022-09-25 11:19:07', '2022-09-25 11:19:07'),
(151, 1, 0, 'D000000000151', 'L00000057', 'P00000216', '0.00', 3, 0, '2022-09-25 11:19:48', '2022-09-25 11:19:49'),
(152, 1, 1, 'D000000000152', 'L00000057', 'P00000217', '0.00', 3, 0, '2022-09-25 11:19:49', '2022-09-25 11:19:49'),
(153, 1, 0, 'D000000000153', 'L00000058', 'P00000221', '0.00', 1, 0, '2022-09-25 11:20:09', '2022-09-25 11:20:09'),
(154, 1, 1, 'D000000000154', 'L00000058', 'P00000222', '0.00', 1, 0, '2022-09-25 11:20:09', '2022-09-25 11:20:09'),
(155, 1, 0, 'D000000000155', 'L00000059', 'P00000244', '0.00', 1, 0, '2022-09-25 11:20:37', '2022-09-25 11:20:37'),
(156, 1, 1, 'D000000000156', 'L00000059', 'P00000245', '0.00', 1, 0, '2022-09-25 11:20:37', '2022-09-25 11:20:37'),
(157, 1, 2, 'D000000000157', 'L00000059', 'P00000249', '0.00', 1, 0, '2022-09-25 11:20:37', '2022-09-25 11:20:37'),
(158, 1, 0, 'D000000000158', 'L00000060', 'P00000261', '0.00', 2, 0, '2022-09-25 11:21:33', '2022-09-25 11:21:33'),
(159, 1, 1, 'D000000000159', 'L00000060', 'P00000264', '0.00', 3, 0, '2022-09-25 11:21:33', '2022-09-25 11:21:33'),
(160, 1, 0, 'D000000000160', 'L00000061', 'P00000008', '0.00', 1, 0, '2022-09-25 11:22:31', '2022-09-25 11:22:31'),
(161, 1, 1, 'D000000000161', 'L00000061', 'P00000004', '0.00', 1, 0, '2022-09-25 11:22:31', '2022-09-25 11:22:32'),
(162, 1, 0, 'D000000000162', 'L00000062', 'P00000018', '0.00', 3, 0, '2022-09-25 11:22:59', '2022-09-25 11:22:59'),
(163, 1, 1, 'D000000000163', 'L00000062', 'P00000019', '0.00', 3, 0, '2022-09-25 11:22:59', '2022-09-25 11:22:59'),
(164, 0, 0, 'D000000000164', 'L00000063', 'P00000025', '0.00', 1, 0, '2022-09-25 11:23:23', '2022-09-25 11:23:23'),
(165, 1, 0, 'D000000000165', 'L00000064', 'P00000034', '0.00', 2, 0, '2022-09-25 11:23:54', '2022-09-25 11:23:54'),
(166, 1, 1, 'D000000000166', 'L00000064', 'P00000039', '0.00', 3, 0, '2022-09-25 11:23:54', '2022-09-25 11:23:54'),
(167, 1, 2, 'D000000000167', 'L00000064', 'P00000037', '0.00', 2, 0, '2022-09-25 11:23:54', '2022-09-25 11:23:54'),
(168, 1, 0, 'D000000000168', 'L00000065', 'P00000049', '0.00', 2, 0, '2022-09-25 11:24:25', '2022-09-25 11:24:25'),
(169, 1, 1, 'D000000000169', 'L00000065', 'P00000048', '0.00', 1, 0, '2022-09-25 11:24:26', '2022-09-25 11:24:26'),
(170, 1, 0, 'D000000000170', 'L00000066', 'P00000055', '0.00', 3, 0, '2022-09-25 11:25:03', '2022-09-25 11:25:03'),
(171, 1, 1, 'D000000000171', 'L00000066', 'P00000057', '0.00', 2, 0, '2022-09-25 11:25:03', '2022-09-25 11:25:03'),
(172, 1, 2, 'D000000000172', 'L00000066', 'P00000053', '0.00', 1, 0, '2022-09-25 11:25:03', '2022-09-25 11:25:03'),
(173, 1, 0, 'D000000000173', 'L00000067', 'P00000061', '0.00', 2, 0, '2022-09-25 11:25:33', '2022-09-25 11:25:33'),
(174, 1, 1, 'D000000000174', 'L00000067', 'P00000063', '0.00', 6, 0, '2022-09-25 11:25:33', '2022-09-25 11:25:33'),
(175, 1, 0, 'D000000000175', 'L00000068', 'P00000077', '0.00', 5, 0, '2022-09-25 11:26:19', '2022-09-25 11:26:19'),
(176, 1, 1, 'D000000000176', 'L00000068', 'P00000078', '0.00', 4, 0, '2022-09-25 11:26:19', '2022-09-25 11:26:19'),
(177, 1, 2, 'D000000000177', 'L00000068', 'P00000079', '0.00', 4, 0, '2022-09-25 11:26:19', '2022-09-25 11:26:19'),
(178, 1, 0, 'D000000000178', 'L00000069', 'P00000090', '0.00', 3, 0, '2022-09-25 11:26:40', '2022-09-25 11:26:40'),
(179, 1, 0, 'D000000000179', 'L00000070', 'P00000096', '0.00', 2, 0, '2022-09-25 11:26:57', '2022-09-25 11:26:57'),
(180, 1, 0, 'D000000000180', 'L00000071', 'P00000402', '0.00', 2, 0, '2022-09-25 11:27:34', '2022-09-25 11:27:34'),
(181, 1, 1, 'D000000000181', 'L00000071', 'P00000405', '0.00', 2, 0, '2022-09-25 11:27:34', '2022-09-25 11:27:34'),
(182, 1, 2, 'D000000000182', 'L00000071', 'P00000410', '0.00', 1, 0, '2022-09-25 11:27:34', '2022-09-25 11:27:34'),
(183, 1, 0, 'D000000000183', 'L00000072', 'P00000419', '0.00', 5, 0, '2022-09-25 11:28:09', '2022-09-25 11:28:09'),
(184, 1, 1, 'D000000000184', 'L00000072', 'P00000415', '0.00', 5, 0, '2022-09-25 11:28:09', '2022-09-25 11:28:09'),
(185, 1, 2, 'D000000000185', 'L00000072', 'P00000418', '0.00', 4, 0, '2022-09-25 11:28:09', '2022-09-25 11:28:10'),
(186, 1, 0, 'D000000000186', 'L00000073', 'P00000430', '0.00', 1, 0, '2022-09-25 11:28:42', '2022-09-25 11:28:42'),
(187, 1, 1, 'D000000000187', 'L00000073', 'P00000425', '0.00', 1, 0, '2022-09-25 11:28:42', '2022-09-25 11:28:42'),
(188, 1, 2, 'D000000000188', 'L00000073', 'P00000426', '0.00', 1, 0, '2022-09-25 11:28:42', '2022-09-25 11:28:42'),
(189, 1, 0, 'D000000000189', 'L00000074', 'P00000431', '0.00', 2, 0, '2022-09-25 11:29:15', '2022-09-25 11:29:15'),
(190, 1, 1, 'D000000000190', 'L00000074', 'P00000432', '0.00', 1, 0, '2022-09-25 11:29:15', '2022-09-25 11:29:15'),
(191, 1, 2, 'D000000000191', 'L00000074', 'P00000433', '0.00', 1, 0, '2022-09-25 11:29:15', '2022-09-25 11:29:15'),
(192, 1, 0, 'D000000000192', 'L00000075', 'P00000314', '0.00', 1, 0, '2022-09-25 11:30:13', '2022-09-25 11:30:13'),
(193, 1, 1, 'D000000000193', 'L00000075', 'P00000318', '0.00', 1, 0, '2022-09-25 11:30:13', '2022-09-25 11:30:13'),
(194, 1, 2, 'D000000000194', 'L00000075', 'P00000312', '0.00', 1, 0, '2022-09-25 11:30:13', '2022-09-25 11:30:13'),
(195, 1, 3, 'D000000000195', 'L00000075', 'P00000316', '0.00', 1, 0, '2022-09-25 11:30:13', '2022-09-25 11:30:13'),
(196, 1, 4, 'D000000000196', 'L00000075', 'P00000319', '0.00', 1, 0, '2022-09-25 11:30:13', '2022-09-25 11:30:13'),
(197, 1, 0, 'D000000000197', 'L00000076', 'P00000395', '0.00', 1, 0, '2022-09-25 11:30:44', '2022-09-25 11:30:44'),
(198, 1, 1, 'D000000000198', 'L00000076', 'P00000393', '0.00', 1, 0, '2022-09-25 11:30:44', '2022-09-25 11:30:44'),
(199, 1, 2, 'D000000000199', 'L00000076', 'P00000399', '0.00', 1, 0, '2022-09-25 11:30:44', '2022-09-25 11:30:44'),
(200, 1, 3, 'D000000000200', 'L00000076', 'P00000400', '0.00', 1, 0, '2022-09-25 11:30:45', '2022-09-25 11:30:45'),
(201, 1, 0, 'D000000000201', 'L00000077', 'P00000442', '0.00', 2, 0, '2022-09-25 11:31:08', '2022-09-25 11:31:08'),
(202, 1, 1, 'D000000000202', 'L00000077', 'P00000441', '0.00', 1, 0, '2022-09-25 11:31:08', '2022-09-25 11:31:09'),
(203, 1, 0, 'D000000000203', 'L00000078', 'P00000359', '0.00', 2, 0, '2022-09-25 11:31:30', '2022-09-25 11:31:30'),
(204, 1, 1, 'D000000000204', 'L00000078', 'P00000351', '0.00', 2, 0, '2022-09-25 11:31:30', '2022-09-25 11:31:30'),
(205, 1, 2, 'D000000000205', 'L00000078', 'P00000352', '0.00', 1, 0, '2022-09-25 11:31:30', '2022-09-25 11:31:30'),
(206, 1, 0, 'D000000000206', 'L00000079', 'P00000369', '0.00', 2, 0, '2022-09-25 11:32:02', '2022-09-25 11:32:02'),
(207, 1, 1, 'D000000000207', 'L00000079', 'P00000362', '0.00', 2, 0, '2022-09-25 11:32:02', '2022-09-25 11:32:02'),
(208, 1, 0, 'D000000000208', 'L00000080', 'P00000376', '0.00', 1, 0, '2022-09-25 11:32:49', '2022-09-25 11:32:49'),
(209, 1, 1, 'D000000000209', 'L00000080', 'P00000377', '0.00', 1, 0, '2022-09-25 11:32:49', '2022-09-25 11:32:49'),
(210, 1, 0, 'D000000000210', 'L00000081', 'P00000154', '0.00', 1, 0, '2022-09-25 11:34:31', '2022-09-25 11:34:31'),
(211, 1, 1, 'D000000000211', 'L00000081', 'P00000151', '0.00', 1, 0, '2022-09-25 11:34:31', '2022-09-25 11:34:31'),
(212, 1, 0, 'D000000000212', 'L00000082', 'P00000168', '0.00', 2, 0, '2022-09-25 11:34:53', '2022-09-25 11:34:53'),
(213, 1, 1, 'D000000000213', 'L00000082', 'P00000169', '0.00', 2, 0, '2022-09-25 11:34:53', '2022-09-25 11:34:53'),
(214, 1, 0, 'D000000000214', 'L00000083', 'P00000180', '0.00', 1, 0, '2022-09-25 11:35:30', '2022-09-25 11:35:30'),
(215, 1, 0, 'D000000000215', 'L00000084', 'P00000182', '0.00', 3, 0, '2022-09-25 11:35:57', '2022-09-25 11:35:58'),
(216, 1, 1, 'D000000000216', 'L00000084', 'P00000189', '0.00', 1, 0, '2022-09-25 11:35:58', '2022-09-25 11:35:58'),
(217, 1, 2, 'D000000000217', 'L00000084', 'P00000190', '0.00', 1, 0, '2022-09-25 11:35:58', '2022-09-25 11:35:58'),
(218, 1, 0, 'D000000000218', 'L00000085', 'P00000191', '0.00', 2, 0, '2022-09-25 11:36:36', '2022-09-25 11:36:36'),
(219, 1, 1, 'D000000000219', 'L00000085', 'P00000192', '0.00', 2, 0, '2022-09-25 11:36:36', '2022-09-25 11:36:36'),
(220, 1, 2, 'D000000000220', 'L00000085', 'P00000195', '0.00', 2, 0, '2022-09-25 11:36:36', '2022-09-25 11:36:36'),
(221, 1, 0, 'D000000000221', 'L00000086', 'P00000207', '0.00', 1, 0, '2022-09-25 11:36:53', '2022-09-25 11:36:53'),
(222, 1, 1, 'D000000000222', 'L00000086', 'P00000203', '0.00', 1, 0, '2022-09-25 11:36:53', '2022-09-25 11:36:53'),
(223, 1, 2, 'D000000000223', 'L00000086', 'P00000204', '0.00', 1, 0, '2022-09-25 11:36:53', '2022-09-25 11:36:53'),
(224, 1, 3, 'D000000000224', 'L00000086', 'P00000210', '0.00', 1, 0, '2022-09-25 11:36:53', '2022-09-25 11:36:53'),
(225, 1, 0, 'D000000000225', 'L00000087', 'P00000216', '0.00', 5, 0, '2022-09-25 11:37:18', '2022-09-25 11:37:18'),
(226, 1, 1, 'D000000000226', 'L00000087', 'P00000217', '0.00', 5, 0, '2022-09-25 11:37:18', '2022-09-25 11:37:18'),
(227, 1, 0, 'D000000000227', 'L00000088', 'P00000226', '0.00', 1, 0, '2022-09-25 11:37:51', '2022-09-25 11:37:51'),
(228, 1, 1, 'D000000000228', 'L00000088', 'P00000229', '0.00', 1, 0, '2022-09-25 11:37:51', '2022-09-25 11:37:51'),
(229, 1, 0, 'D000000000229', 'L00000089', 'P00000231', '0.00', 2, 0, '2022-09-25 11:38:44', '2022-09-25 11:38:44'),
(230, 1, 1, 'D000000000230', 'L00000089', 'P00000233', '0.00', 2, 0, '2022-09-25 11:38:44', '2022-09-25 11:38:44'),
(231, 1, 0, 'D000000000231', 'L00000090', 'P00000248', '0.00', 1, 0, '2022-09-25 11:39:12', '2022-09-25 11:39:12'),
(232, 1, 1, 'D000000000232', 'L00000090', 'P00000246', '0.00', 1, 0, '2022-09-25 11:39:12', '2022-09-25 11:39:12'),
(233, 1, 2, 'D000000000233', 'L00000090', 'P00000247', '0.00', 1, 0, '2022-09-25 11:39:12', '2022-09-25 11:39:12'),
(234, 1, 0, 'D000000000234', 'L00000091', 'P00000031', '0.00', 3, 0, '2022-09-25 11:39:48', '2022-09-25 11:39:48'),
(235, 1, 1, 'D000000000235', 'L00000091', 'P00000032', '0.00', 3, 0, '2022-09-25 11:39:48', '2022-09-25 11:39:48'),
(236, 1, 2, 'D000000000236', 'L00000091', 'P00000033', '0.00', 3, 0, '2022-09-25 11:39:48', '2022-09-25 11:39:48'),
(237, 1, 3, 'D000000000237', 'L00000091', 'P00000038', '0.00', 2, 0, '2022-09-25 11:39:48', '2022-09-25 11:39:48'),
(238, 1, 0, 'D000000000238', 'L00000092', 'P00000045', '0.00', 3, 0, '2022-09-25 11:40:29', '2022-09-25 11:40:29'),
(239, 1, 1, 'D000000000239', 'L00000092', 'P00000044', '0.00', 3, 0, '2022-09-25 11:40:29', '2022-09-25 11:40:29'),
(240, 1, 0, 'D000000000240', 'L00000093', 'P00000069', '0.00', 3, 0, '2022-09-25 11:41:16', '2022-09-25 11:41:16'),
(241, 1, 1, 'D000000000241', 'L00000093', 'P00000063', '0.00', 3, 0, '2022-09-25 11:41:16', '2022-09-25 11:41:16'),
(242, 1, 2, 'D000000000242', 'L00000093', 'P00000066', '0.00', 4, 0, '2022-09-25 11:41:16', '2022-09-25 11:41:16'),
(243, 1, 0, 'D000000000243', 'L00000094', 'P00000116', '0.00', 2, 0, '2022-09-25 11:41:41', '2022-09-25 11:41:41'),
(244, 1, 1, 'D000000000244', 'L00000094', 'P00000114', '0.00', 2, 0, '2022-09-25 11:41:41', '2022-09-25 11:41:41'),
(245, 1, 2, 'D000000000245', 'L00000094', 'P00000117', '0.00', 1, 0, '2022-09-25 11:41:41', '2022-09-25 11:41:41'),
(246, 1, 0, 'D000000000246', 'L00000095', 'P00000012', '0.00', 1, 0, '2022-09-25 11:42:01', '2022-09-25 11:42:01'),
(247, 1, 1, 'D000000000247', 'L00000095', 'P00000013', '0.00', 1, 0, '2022-09-25 11:42:01', '2022-09-25 11:42:01'),
(248, 1, 0, 'D000000000248', 'L00000096', 'P00000333', '0.00', 1, 0, '2022-09-25 11:42:24', '2022-09-25 11:42:24'),
(249, 1, 1, 'D000000000249', 'L00000096', 'P00000334', '0.00', 1, 0, '2022-09-25 11:42:24', '2022-09-25 11:42:24'),
(250, 1, 2, 'D000000000250', 'L00000096', 'P00000339', '0.00', 1, 0, '2022-09-25 11:42:24', '2022-09-25 11:42:24'),
(251, 1, 0, 'D000000000251', 'L00000097', 'P00000301', '0.00', 1, 0, '2022-09-25 11:42:50', '2022-09-25 11:42:50'),
(252, 1, 1, 'D000000000252', 'L00000097', 'P00000302', '0.00', 1, 0, '2022-09-25 11:42:50', '2022-09-25 11:42:50'),
(253, 1, 0, 'D000000000253', 'L00000098', 'P00000323', '0.00', 2, 0, '2022-09-25 11:43:23', '2022-09-25 11:43:23'),
(254, 1, 1, 'D000000000254', 'L00000098', 'P00000321', '0.00', 2, 0, '2022-09-25 11:43:23', '2022-09-25 11:43:23'),
(255, 1, 0, 'D000000000255', 'L00000099', 'P00000380', '0.00', 1, 0, '2022-09-25 11:44:03', '2022-09-25 11:44:03'),
(256, 1, 1, 'D000000000256', 'L00000099', 'P00000378', '0.00', 1, 0, '2022-09-25 11:44:03', '2022-09-25 11:44:03'),
(257, 1, 0, 'D000000000257', 'L00000100', 'P00000403', '0.00', 2, 0, '2022-09-25 11:44:30', '2022-09-25 11:44:30'),
(258, 1, 1, 'D000000000258', 'L00000100', 'P00000401', '0.00', 1, 0, '2022-09-25 11:44:30', '2022-09-25 11:44:30'),
(259, 1, 0, 'D000000000259', 'L00000101', 'P00000151', '0.00', 1, 0, '2022-09-25 11:45:20', '2022-09-25 11:45:21'),
(260, 1, 1, 'D000000000260', 'L00000101', 'P00000152', '0.00', 1, 0, '2022-09-25 11:45:21', '2022-09-25 11:45:21'),
(261, 1, 2, 'D000000000261', 'L00000101', 'P00000153', '0.00', 1, 0, '2022-09-25 11:45:21', '2022-09-25 11:45:21'),
(262, 1, 0, 'D000000000262', 'L00000102', 'P00000161', '0.00', 1, 0, '2022-09-25 11:45:52', '2022-09-25 11:45:52'),
(263, 1, 1, 'D000000000263', 'L00000102', 'P00000162', '0.00', 1, 0, '2022-09-25 11:45:52', '2022-09-25 11:45:52'),
(264, 1, 2, 'D000000000264', 'L00000102', 'P00000163', '0.00', 1, 0, '2022-09-25 11:45:52', '2022-09-25 11:45:52'),
(265, 1, 3, 'D000000000265', 'L00000102', 'P00000164', '0.00', 1, 0, '2022-09-25 11:45:52', '2022-09-25 11:45:52'),
(266, 1, 0, 'D000000000266', 'L00000103', 'P00000178', '0.00', 1, 0, '2022-09-25 11:46:15', '2022-09-25 11:46:15'),
(267, 1, 0, 'D000000000267', 'L00000104', 'P00000184', '0.00', 2, 0, '2022-09-25 11:46:40', '2022-09-25 11:46:40'),
(268, 1, 1, 'D000000000268', 'L00000104', 'P00000183', '0.00', 1, 0, '2022-09-25 11:46:40', '2022-09-25 11:46:41'),
(269, 1, 2, 'D000000000269', 'L00000104', 'P00000181', '0.00', 2, 0, '2022-09-25 11:46:41', '2022-09-25 11:46:41'),
(270, 1, 0, 'D000000000270', 'L00000105', 'P00000200', '0.00', 1, 0, '2022-09-25 11:47:15', '2022-09-25 11:47:15'),
(271, 1, 1, 'D000000000271', 'L00000105', 'P00000194', '0.00', 1, 0, '2022-09-25 11:47:15', '2022-09-25 11:47:15'),
(272, 1, 2, 'D000000000272', 'L00000105', 'P00000198', '0.00', 1, 0, '2022-09-25 11:47:15', '2022-09-25 11:47:15'),
(273, 1, 0, 'D000000000273', 'L00000106', 'P00000201', '0.00', 2, 0, '2022-09-25 11:47:44', '2022-09-25 11:47:44'),
(274, 1, 1, 'D000000000274', 'L00000106', 'P00000202', '0.00', 2, 0, '2022-09-25 11:47:44', '2022-09-25 11:47:44'),
(275, 1, 2, 'D000000000275', 'L00000106', 'P00000205', '0.00', 1, 0, '2022-09-25 11:47:44', '2022-09-25 11:47:44'),
(276, 1, 0, 'D000000000276', 'L00000107', 'P00000211', '0.00', 3, 0, '2022-09-25 11:48:16', '2022-09-25 11:48:16'),
(277, 1, 1, 'D000000000277', 'L00000107', 'P00000214', '0.00', 3, 0, '2022-09-25 11:48:17', '2022-09-25 11:48:17'),
(278, 1, 2, 'D000000000278', 'L00000107', 'P00000212', '0.00', 3, 0, '2022-09-25 11:48:17', '2022-09-25 11:48:17'),
(279, 1, 0, 'D000000000279', 'L00000108', 'P00000225', '0.00', 1, 0, '2022-09-25 11:48:40', '2022-09-25 11:48:40'),
(280, 1, 1, 'D000000000280', 'L00000108', 'P00000229', '0.00', 1, 0, '2022-09-25 11:48:40', '2022-09-25 11:48:40'),
(281, 1, 0, 'D000000000281', 'L00000109', 'P00000246', '0.00', 1, 0, '2022-09-25 11:49:51', '2022-09-25 11:49:51'),
(282, 1, 1, 'D000000000282', 'L00000109', 'P00000247', '0.00', 1, 0, '2022-09-25 11:49:51', '2022-09-25 11:49:51'),
(283, 1, 2, 'D000000000283', 'L00000109', 'P00000243', '0.00', 1, 0, '2022-09-25 11:49:51', '2022-09-25 11:49:51'),
(284, 1, 0, 'D000000000284', 'L00000110', 'P00000255', '0.00', 1, 0, '2022-09-25 11:50:11', '2022-09-25 11:50:11'),
(285, 1, 1, 'D000000000285', 'L00000110', 'P00000260', '0.00', 1, 0, '2022-09-25 11:50:11', '2022-09-25 11:50:11'),
(286, 1, 0, 'D000000000286', 'L00000111', 'P00000031', '0.00', 4, 0, '2022-09-25 11:50:45', '2022-09-25 11:50:45'),
(287, 1, 1, 'D000000000287', 'L00000111', 'P00000032', '0.00', 3, 0, '2022-09-25 11:50:45', '2022-09-25 11:50:45'),
(288, 1, 2, 'D000000000288', 'L00000111', 'P00000033', '0.00', 3, 0, '2022-09-25 11:50:45', '2022-09-25 11:50:45'),
(289, 1, 3, 'D000000000289', 'L00000111', 'P00000034', '0.00', 3, 0, '2022-09-25 11:50:45', '2022-09-25 11:50:45'),
(290, 1, 0, 'D000000000290', 'L00000112', 'P00000049', '0.00', 3, 0, '2022-09-25 11:51:17', '2022-09-25 11:51:17'),
(291, 1, 1, 'D000000000291', 'L00000112', 'P00000048', '0.00', 3, 0, '2022-09-25 11:51:17', '2022-09-25 11:51:17'),
(292, 1, 2, 'D000000000292', 'L00000112', 'P00000043', '0.00', 3, 0, '2022-09-25 11:51:17', '2022-09-25 11:51:17'),
(293, 1, 0, 'D000000000293', 'L00000113', 'P00000125', '0.00', 1, 0, '2022-09-25 11:52:03', '2022-09-25 11:52:03'),
(294, 1, 1, 'D000000000294', 'L00000113', 'P00000130', '0.00', 1, 0, '2022-09-25 11:52:03', '2022-09-25 11:52:03'),
(295, 1, 2, 'D000000000295', 'L00000113', 'P00000121', '0.00', 1, 0, '2022-09-25 11:52:03', '2022-09-25 11:52:03'),
(296, 1, 0, 'D000000000296', 'L00000114', 'P00000135', '0.00', 1, 0, '2022-09-25 11:52:28', '2022-09-25 11:52:28'),
(297, 1, 1, 'D000000000297', 'L00000114', 'P00000134', '0.00', 1, 0, '2022-09-25 11:52:28', '2022-09-25 11:52:28'),
(298, 1, 2, 'D000000000298', 'L00000114', 'P00000132', '0.00', 1, 0, '2022-09-25 11:52:28', '2022-09-25 11:52:28'),
(299, 1, 0, 'D000000000299', 'L00000115', 'P00000141', '0.00', 1, 0, '2022-09-25 11:53:07', '2022-09-25 11:53:07'),
(300, 1, 1, 'D000000000300', 'L00000115', 'P00000150', '0.00', 1, 0, '2022-09-25 11:53:07', '2022-09-25 11:53:07'),
(301, 1, 0, 'D000000000301', 'L00000116', 'P00000371', '0.00', 4, 0, '2022-09-25 11:53:45', '2022-09-25 11:53:45'),
(302, 1, 1, 'D000000000302', 'L00000116', 'P00000372', '0.00', 4, 0, '2022-09-25 11:53:45', '2022-09-25 11:53:45'),
(303, 1, 2, 'D000000000303', 'L00000116', 'P00000397', '0.00', 2, 0, '2022-09-25 11:53:45', '2022-09-25 11:53:45'),
(304, 1, 0, 'D000000000304', 'L00000117', 'P00000419', '0.00', 3, 0, '2022-09-25 11:54:27', '2022-09-25 11:54:27'),
(305, 1, 1, 'D000000000305', 'L00000117', 'P00000373', '0.00', 2, 0, '2022-09-25 11:54:27', '2022-09-25 11:54:27'),
(306, 1, 2, 'D000000000306', 'L00000117', 'P00000408', '0.00', 3, 0, '2022-09-25 11:54:27', '2022-09-25 11:54:27'),
(307, 1, 0, 'D000000000307', 'L00000118', 'P00000367', '0.00', 4, 0, '2022-09-25 11:55:05', '2022-09-25 11:55:05'),
(308, 1, 1, 'D000000000308', 'L00000118', 'P00000364', '0.00', 4, 0, '2022-09-25 11:55:05', '2022-09-25 11:55:05'),
(309, 1, 0, 'D000000000309', 'L00000119', 'P00000329', '0.00', 1, 0, '2022-09-25 11:55:55', '2022-09-25 11:55:55'),
(310, 1, 0, 'D000000000310', 'L00000120', 'P00000342', '0.00', 2, 0, '2022-09-25 11:56:23', '2022-09-25 11:56:23'),
(311, 1, 1, 'D000000000311', 'L00000120', 'P00000348', '0.00', 2, 0, '2022-09-25 11:56:23', '2022-09-25 11:56:23'),
(312, 1, 2, 'D000000000312', 'L00000120', 'P00000343', '0.00', 2, 0, '2022-09-25 11:56:23', '2022-09-25 11:56:23'),
(313, 1, 3, 'D000000000313', 'L00000120', 'P00000344', '0.00', 2, 0, '2022-09-25 11:56:23', '2022-09-25 11:56:23'),
(314, 1, 0, 'D000000000314', 'L00000121', 'P00000158', '0.00', 1, 0, '2022-09-25 11:58:01', '2022-09-25 11:58:01'),
(315, 1, 1, 'D000000000315', 'L00000121', 'P00000160', '0.00', 1, 0, '2022-09-25 11:58:01', '2022-09-25 11:58:01'),
(316, 1, 0, 'D000000000316', 'L00000122', 'P00000167', '0.00', 1, 0, '2022-09-25 11:58:31', '2022-09-25 11:58:31'),
(317, 1, 1, 'D000000000317', 'L00000122', 'P00000170', '0.00', 1, 0, '2022-09-25 11:58:31', '2022-09-25 11:58:31'),
(318, 1, 0, 'D000000000318', 'L00000123', 'P00000171', '0.00', 2, 0, '2022-09-25 11:58:51', '2022-09-25 11:58:51'),
(319, 1, 0, 'D000000000319', 'L00000124', 'P00000187', '0.00', 1, 0, '2022-09-25 11:59:41', '2022-09-25 11:59:41'),
(320, 1, 1, 'D000000000320', 'L00000124', 'P00000188', '0.00', 1, 0, '2022-09-25 11:59:41', '2022-09-25 11:59:41'),
(321, 1, 2, 'D000000000321', 'L00000124', 'P00000186', '0.00', 1, 0, '2022-09-25 11:59:41', '2022-09-25 11:59:41'),
(322, 1, 0, 'D000000000322', 'L00000125', 'P00000196', '0.00', 2, 0, '2022-09-25 12:00:22', '2022-09-25 12:00:22'),
(323, 1, 1, 'D000000000323', 'L00000125', 'P00000199', '0.00', 2, 0, '2022-09-25 12:00:22', '2022-09-25 12:00:22'),
(324, 1, 0, 'D000000000324', 'L00000126', 'P00000207', '0.00', 3, 0, '2022-09-25 12:01:13', '2022-09-25 12:01:13'),
(325, 1, 1, 'D000000000325', 'L00000126', 'P00000210', '0.00', 2, 0, '2022-09-25 12:01:13', '2022-09-25 12:01:13'),
(326, 1, 0, 'D000000000326', 'L00000127', 'P00000213', '0.00', 3, 0, '2022-09-25 12:02:25', '2022-09-25 12:02:25'),
(327, 1, 1, 'D000000000327', 'L00000127', 'P00000220', '0.00', 3, 0, '2022-09-25 12:02:25', '2022-09-25 12:02:25'),
(328, 1, 0, 'D000000000328', 'L00000128', 'P00000224', '0.00', 2, 0, '2022-09-25 12:02:54', '2022-09-25 12:02:54'),
(329, 1, 1, 'D000000000329', 'L00000128', 'P00000221', '0.00', 1, 0, '2022-09-25 12:02:54', '2022-09-25 12:02:54'),
(330, 1, 2, 'D000000000330', 'L00000128', 'P00000222', '0.00', 1, 0, '2022-09-25 12:02:54', '2022-09-25 12:02:54'),
(331, 1, 0, 'D000000000331', 'L00000129', 'P00000249', '0.00', 1, 0, '2022-09-25 12:03:25', '2022-09-25 12:03:25'),
(332, 1, 1, 'D000000000332', 'L00000129', 'P00000250', '0.00', 1, 0, '2022-09-25 12:03:25', '2022-09-25 12:03:25'),
(333, 1, 2, 'D000000000333', 'L00000129', 'P00000248', '0.00', 3, 0, '2022-09-25 12:03:25', '2022-09-25 12:03:25'),
(334, 1, 0, 'D000000000334', 'L00000130', 'P00000270', '0.00', 1, 0, '2022-09-25 12:04:08', '2022-09-25 12:04:08'),
(335, 1, 1, 'D000000000335', 'L00000130', 'P00000264', '0.00', 4, 0, '2022-09-25 12:04:08', '2022-09-25 12:04:08'),
(336, 1, 0, 'D000000000336', 'L00000131', 'P00000005', '0.00', 2, 0, '2022-09-25 12:05:39', '2022-09-25 12:05:39'),
(337, 1, 1, 'D000000000337', 'L00000131', 'P00000004', '0.00', 2, 0, '2022-09-25 12:05:39', '2022-09-25 12:05:39'),
(338, 1, 0, 'D000000000338', 'L00000132', 'P00000015', '0.00', 1, 0, '2022-09-25 12:06:08', '2022-09-25 12:06:08'),
(339, 1, 1, 'D000000000339', 'L00000132', 'P00000016', '0.00', 1, 0, '2022-09-25 12:06:08', '2022-09-25 12:06:08'),
(340, 1, 2, 'D000000000340', 'L00000132', 'P00000014', '0.00', 1, 0, '2022-09-25 12:06:08', '2022-09-25 12:06:08'),
(341, 1, 3, 'D000000000341', 'L00000132', 'P00000017', '0.00', 1, 0, '2022-09-25 12:06:08', '2022-09-25 12:06:08'),
(342, 1, 0, 'D000000000342', 'L00000133', 'P00000030', '0.00', 1, 0, '2022-09-25 12:06:48', '2022-09-25 12:06:48'),
(343, 1, 0, 'D000000000343', 'L00000134', 'P00000040', '0.00', 1, 0, '2022-09-25 12:07:28', '2022-09-25 12:07:28'),
(344, 1, 1, 'D000000000344', 'L00000134', 'P00000039', '0.00', 1, 0, '2022-09-25 12:07:28', '2022-09-25 12:07:28'),
(345, 1, 2, 'D000000000345', 'L00000134', 'P00000034', '0.00', 1, 0, '2022-09-25 12:07:28', '2022-09-25 12:07:28'),
(346, 1, 0, 'D000000000346', 'L00000135', 'P00000135', '0.00', 2, 0, '2022-09-25 12:08:12', '2022-09-25 12:08:12'),
(347, 1, 1, 'D000000000347', 'L00000135', 'P00000132', '0.00', 2, 0, '2022-09-25 12:08:12', '2022-09-25 12:08:12'),
(348, 1, 2, 'D000000000348', 'L00000135', 'P00000137', '0.00', 1, 0, '2022-09-25 12:08:12', '2022-09-25 12:08:12'),
(349, 1, 0, 'D000000000349', 'L00000136', 'P00000347', '0.00', 1, 0, '2022-09-25 12:08:50', '2022-09-25 12:08:50'),
(350, 1, 1, 'D000000000350', 'L00000136', 'P00000343', '0.00', 1, 0, '2022-09-25 12:08:50', '2022-09-25 12:08:50'),
(351, 1, 2, 'D000000000351', 'L00000136', 'P00000342', '0.00', 1, 0, '2022-09-25 12:08:50', '2022-09-25 12:08:50'),
(352, 1, 3, 'D000000000352', 'L00000136', 'P00000348', '0.00', 1, 0, '2022-09-25 12:08:50', '2022-09-25 12:08:50'),
(353, 1, 4, 'D000000000353', 'L00000136', 'P00000344', '0.00', 1, 0, '2022-09-25 12:08:50', '2022-09-25 12:08:50'),
(354, 1, 5, 'D000000000354', 'L00000136', 'P00000346', '0.00', 1, 0, '2022-09-25 12:08:50', '2022-09-25 12:08:50'),
(355, 1, 6, 'D000000000355', 'L00000136', 'P00000350', '0.00', 1, 0, '2022-09-25 12:08:50', '2022-09-25 12:08:50'),
(356, 1, 7, 'D000000000356', 'L00000136', 'P00000345', '0.00', 1, 0, '2022-09-25 12:08:50', '2022-09-25 12:08:50'),
(357, 1, 0, 'D000000000357', 'L00000137', 'P00000354', '0.00', 2, 0, '2022-09-25 12:09:26', '2022-09-25 12:09:26'),
(358, 1, 1, 'D000000000358', 'L00000137', 'P00000357', '0.00', 1, 0, '2022-09-25 12:09:26', '2022-09-25 12:09:26'),
(359, 1, 2, 'D000000000359', 'L00000137', 'P00000355', '0.00', 1, 0, '2022-09-25 12:09:26', '2022-09-25 12:09:26'),
(360, 1, 3, 'D000000000360', 'L00000137', 'P00000360', '0.00', 1, 0, '2022-09-25 12:09:26', '2022-09-25 12:09:26'),
(361, 1, 0, 'D000000000361', 'L00000138', 'P00000391', '0.00', 1, 0, '2022-09-25 12:10:59', '2022-09-25 12:10:59'),
(362, 1, 1, 'D000000000362', 'L00000138', 'P00000399', '0.00', 1, 0, '2022-09-25 12:11:00', '2022-09-25 12:11:00'),
(363, 1, 2, 'D000000000363', 'L00000138', 'P00000400', '0.00', 1, 0, '2022-09-25 12:11:00', '2022-09-25 12:11:00'),
(364, 1, 0, 'D000000000364', 'L00000139', 'P00000412', '0.00', 4, 0, '2022-09-25 12:11:37', '2022-09-25 12:11:37'),
(365, 1, 1, 'D000000000365', 'L00000139', 'P00000417', '0.00', 2, 0, '2022-09-25 12:11:37', '2022-09-25 12:11:37'),
(366, 1, 2, 'D000000000366', 'L00000139', 'P00000415', '0.00', 2, 0, '2022-09-25 12:11:37', '2022-09-25 12:11:37'),
(367, 1, 0, 'D000000000367', 'L00000140', 'P00000431', '0.00', 1, 0, '2022-09-25 12:12:08', '2022-09-25 12:12:08'),
(368, 1, 1, 'D000000000368', 'L00000140', 'P00000433', '0.00', 1, 0, '2022-09-25 12:12:08', '2022-09-25 12:12:08'),
(369, 1, 2, 'D000000000369', 'L00000140', 'P00000435', '0.00', 1, 0, '2022-09-25 12:12:08', '2022-09-25 12:12:08'),
(370, 1, 0, 'D000000000370', 'L00000141', 'P00000301', '0.00', 1, 0, '2022-09-25 12:13:12', '2022-09-25 12:13:13'),
(371, 1, 1, 'D000000000371', 'L00000141', 'P00000310', '0.00', 1, 0, '2022-09-25 12:13:13', '2022-09-25 12:13:13'),
(372, 1, 0, 'D000000000372', 'L00000142', 'P00000314', '0.00', 2, 0, '2022-09-25 12:13:37', '2022-09-25 12:13:38'),
(373, 1, 1, 'D000000000373', 'L00000142', 'P00000318', '0.00', 2, 0, '2022-09-25 12:13:38', '2022-09-25 12:13:38'),
(374, 1, 2, 'D000000000374', 'L00000142', 'P00000311', '0.00', 2, 0, '2022-09-25 12:13:38', '2022-09-25 12:13:38'),
(375, 1, 0, 'D000000000375', 'L00000143', 'P00000321', '0.00', 1, 0, '2022-09-25 12:15:24', '2022-09-25 12:15:24'),
(376, 1, 1, 'D000000000376', 'L00000143', 'P00000323', '0.00', 1, 0, '2022-09-25 12:15:24', '2022-09-25 12:15:24'),
(377, 1, 0, 'D000000000377', 'L00000144', 'P00000334', '0.00', 2, 0, '2022-09-25 12:15:43', '2022-09-25 12:15:44'),
(378, 1, 1, 'D000000000378', 'L00000144', 'P00000332', '0.00', 1, 0, '2022-09-25 12:15:44', '2022-09-25 12:15:44'),
(379, 1, 2, 'D000000000379', 'L00000144', 'P00000339', '0.00', 2, 0, '2022-09-25 12:15:44', '2022-09-25 12:15:44'),
(380, 1, 0, 'D000000000380', 'L00000145', 'P00000347', '0.00', 2, 0, '2022-09-25 12:16:13', '2022-09-25 12:16:13'),
(381, 1, 1, 'D000000000381', 'L00000145', 'P00000344', '0.00', 2, 0, '2022-09-25 12:16:13', '2022-09-25 12:16:13'),
(382, 1, 2, 'D000000000382', 'L00000145', 'P00000346', '0.00', 2, 0, '2022-09-25 12:16:13', '2022-09-25 12:16:13'),
(383, 1, 3, 'D000000000383', 'L00000145', 'P00000350', '0.00', 2, 0, '2022-09-25 12:16:13', '2022-09-25 12:16:13'),
(384, 1, 0, 'D000000000384', 'L00000146', 'P00000358', '0.00', 2, 0, '2022-09-25 12:16:35', '2022-09-25 12:16:35'),
(385, 1, 1, 'D000000000385', 'L00000146', 'P00000360', '0.00', 2, 0, '2022-09-25 12:16:35', '2022-09-25 12:16:35'),
(386, 1, 2, 'D000000000386', 'L00000146', 'P00000355', '0.00', 2, 0, '2022-09-25 12:16:35', '2022-09-25 12:16:35'),
(387, 1, 0, 'D000000000387', 'L00000147', 'P00000364', '0.00', 3, 0, '2022-09-25 12:17:05', '2022-09-25 12:17:05'),
(388, 1, 1, 'D000000000388', 'L00000147', 'P00000361', '0.00', 2, 0, '2022-09-25 12:17:06', '2022-09-25 12:17:06'),
(389, 1, 2, 'D000000000389', 'L00000147', 'P00000367', '0.00', 2, 0, '2022-09-25 12:17:06', '2022-09-25 12:17:06'),
(390, 1, 0, 'D000000000390', 'L00000148', 'P00000371', '0.00', 5, 0, '2022-09-25 12:17:56', '2022-09-25 12:17:56'),
(391, 1, 1, 'D000000000391', 'L00000148', 'P00000372', '0.00', 5, 0, '2022-09-25 12:17:56', '2022-09-25 12:17:56'),
(392, 1, 2, 'D000000000392', 'L00000148', 'P00000379', '0.00', 1, 0, '2022-09-25 12:17:56', '2022-09-25 12:17:57'),
(393, 1, 0, 'D000000000393', 'L00000149', 'P00000386', '0.00', 1, 0, '2022-09-25 12:18:26', '2022-09-25 12:18:26'),
(394, 1, 1, 'D000000000394', 'L00000149', 'P00000388', '0.00', 1, 0, '2022-09-25 12:18:26', '2022-09-25 12:18:26'),
(395, 1, 2, 'D000000000395', 'L00000149', 'P00000384', '0.00', 1, 0, '2022-09-25 12:18:26', '2022-09-25 12:18:26'),
(396, 1, 0, 'D000000000396', 'L00000150', 'P00000395', '0.00', 1, 0, '2022-09-25 12:18:51', '2022-09-25 12:18:51'),
(397, 1, 1, 'D000000000397', 'L00000150', 'P00000396', '0.00', 1, 0, '2022-09-25 12:18:51', '2022-09-25 12:18:51'),
(398, 1, 2, 'D000000000398', 'L00000150', 'P00000393', '0.00', 1, 0, '2022-09-25 12:18:51', '2022-09-25 12:18:51'),
(399, 1, 0, 'D000000000399', 'L00000151', 'P00000155', '0.00', 1, 0, '2022-09-25 12:20:27', '2022-09-25 12:20:27'),
(400, 1, 1, 'D000000000400', 'L00000151', 'P00000151', '0.00', 1, 0, '2022-09-25 12:20:27', '2022-09-25 12:20:28'),
(401, 1, 0, 'D000000000401', 'L00000152', 'P00000161', '0.00', 1, 0, '2022-09-25 12:21:52', '2022-09-25 12:21:52'),
(402, 1, 1, 'D000000000402', 'L00000152', 'P00000162', '0.00', 1, 0, '2022-09-25 12:21:52', '2022-09-25 12:21:52'),
(403, 1, 2, 'D000000000403', 'L00000152', 'P00000163', '0.00', 1, 0, '2022-09-25 12:21:52', '2022-09-25 12:21:52'),
(404, 1, 3, 'D000000000404', 'L00000152', 'P00000164', '0.00', 1, 0, '2022-09-25 12:21:52', '2022-09-25 12:21:52'),
(405, 1, 0, 'D000000000405', 'L00000153', 'P00000216', '0.00', 3, 0, '2022-09-25 12:22:31', '2022-09-25 12:22:31'),
(406, 1, 1, 'D000000000406', 'L00000153', 'P00000217', '0.00', 3, 0, '2022-09-25 12:22:31', '2022-09-25 12:22:31'),
(407, 1, 0, 'D000000000407', 'L00000154', 'P00000185', '0.00', 1, 0, '2022-09-25 12:23:36', '2022-09-25 12:23:36'),
(408, 1, 1, 'D000000000408', 'L00000154', 'P00000182', '0.00', 2, 0, '2022-09-25 12:23:36', '2022-09-25 12:23:37'),
(409, 1, 2, 'D000000000409', 'L00000154', 'P00000189', '0.00', 1, 0, '2022-09-25 12:23:37', '2022-09-25 12:23:37'),
(410, 1, 0, 'D000000000410', 'L00000155', 'P00000221', '0.00', 1, 0, '2022-09-25 12:24:00', '2022-09-25 12:24:00'),
(411, 1, 1, 'D000000000411', 'L00000155', 'P00000222', '0.00', 1, 0, '2022-09-25 12:24:00', '2022-09-25 12:24:00'),
(412, 1, 2, 'D000000000412', 'L00000155', 'P00000223', '0.00', 1, 0, '2022-09-25 12:24:00', '2022-09-25 12:24:00'),
(413, 1, 0, 'D000000000413', 'L00000156', 'P00000031', '0.00', 3, 0, '2022-09-25 12:24:36', '2022-09-25 12:24:36'),
(414, 1, 1, 'D000000000414', 'L00000156', 'P00000032', '0.00', 3, 0, '2022-09-25 12:24:36', '2022-09-25 12:24:36'),
(415, 1, 2, 'D000000000415', 'L00000156', 'P00000033', '0.00', 3, 0, '2022-09-25 12:24:36', '2022-09-25 12:24:36'),
(416, 1, 3, 'D000000000416', 'L00000156', 'P00000036', '0.00', 1, 0, '2022-09-25 12:24:36', '2022-09-25 12:24:36'),
(417, 1, 0, 'D000000000417', 'L00000157', 'P00000041', '0.00', 3, 0, '2022-09-25 12:25:07', '2022-09-25 12:25:08'),
(418, 1, 1, 'D000000000418', 'L00000157', 'P00000042', '0.00', 3, 0, '2022-09-25 12:25:08', '2022-09-25 12:25:08'),
(419, 1, 0, 'D000000000419', 'L00000158', 'P00000080', '0.00', 1, 0, '2022-09-25 12:25:38', '2022-09-25 12:25:38'),
(420, 1, 1, 'D000000000420', 'L00000158', 'P00000075', '0.00', 2, 0, '2022-09-25 12:25:38', '2022-09-25 12:25:38'),
(421, 1, 0, 'D000000000421', 'L00000159', 'P00000126', '0.00', 1, 0, '2022-09-25 12:25:58', '2022-09-25 12:25:58'),
(422, 1, 1, 'D000000000422', 'L00000159', 'P00000128', '0.00', 1, 0, '2022-09-25 12:25:58', '2022-09-25 12:25:58'),
(423, 1, 2, 'D000000000423', 'L00000159', 'P00000127', '0.00', 1, 0, '2022-09-25 12:25:58', '2022-09-25 12:25:58'),
(424, 1, 0, 'D000000000424', 'L00000160', 'P00000133', '0.00', 1, 0, '2022-09-25 12:26:24', '2022-09-25 12:26:24'),
(425, 1, 1, 'D000000000425', 'L00000160', 'P00000139', '0.00', 2, 0, '2022-09-25 12:26:24', '2022-09-25 12:26:25'),
(426, 1, 2, 'D000000000426', 'L00000160', 'P00000134', '0.00', 2, 0, '2022-09-25 12:26:25', '2022-09-25 12:26:25'),
(427, 1, 0, 'D000000000427', 'L00000161', 'P00000304', '0.00', 1, 0, '2022-09-25 12:27:26', '2022-09-25 12:27:26'),
(428, 1, 1, 'D000000000428', 'L00000161', 'P00000307', '0.00', 1, 0, '2022-09-25 12:27:26', '2022-09-25 12:27:26'),
(429, 1, 0, 'D000000000429', 'L00000162', 'P00000312', '0.00', 1, 0, '2022-09-25 12:27:55', '2022-09-25 12:27:55'),
(430, 1, 1, 'D000000000430', 'L00000162', 'P00000316', '0.00', 1, 0, '2022-09-25 12:27:55', '2022-09-25 12:27:55'),
(431, 1, 2, 'D000000000431', 'L00000162', 'P00000319', '0.00', 1, 0, '2022-09-25 12:27:55', '2022-09-25 12:27:55'),
(432, 1, 3, 'D000000000432', 'L00000162', 'P00000313', '0.00', 1, 0, '2022-09-25 12:27:55', '2022-09-25 12:27:55'),
(433, 1, 0, 'D000000000433', 'L00000163', 'P00000322', '0.00', 1, 0, '2022-09-25 12:28:28', '2022-09-25 12:28:29'),
(434, 1, 1, 'D000000000434', 'L00000163', 'P00000329', '0.00', 1, 0, '2022-09-25 12:28:29', '2022-09-25 12:28:29'),
(435, 1, 0, 'D000000000435', 'L00000164', 'P00000334', '0.00', 1, 0, '2022-09-25 12:29:01', '2022-09-25 12:29:01'),
(436, 1, 1, 'D000000000436', 'L00000164', 'P00000338', '0.00', 1, 0, '2022-09-25 12:29:01', '2022-09-25 12:29:01'),
(437, 1, 2, 'D000000000437', 'L00000164', 'P00000333', '0.00', 1, 0, '2022-09-25 12:29:01', '2022-09-25 12:29:01'),
(438, 1, 0, 'D000000000438', 'L00000165', 'P00000349', '0.00', 2, 0, '2022-09-25 12:29:35', '2022-09-25 12:29:35');
INSERT INTO `list_details` (`id`, `is_checked`, `list_index`, `detail_id`, `list_id`, `product_id`, `price`, `quantity`, `is_deleted`, `created_at`, `updated_at`) VALUES
(439, 1, 1, 'D000000000439', 'L00000165', 'P00000341', '0.00', 2, 0, '2022-09-25 12:29:35', '2022-09-25 12:29:35'),
(440, 1, 2, 'D000000000440', 'L00000165', 'P00000345', '0.00', 2, 0, '2022-09-25 12:29:35', '2022-09-25 12:29:36'),
(441, 1, 3, 'D000000000441', 'L00000165', 'P00000350', '0.00', 2, 0, '2022-09-25 12:29:36', '2022-09-25 12:29:36'),
(442, 1, 0, 'D000000000442', 'L00000166', 'P00000356', '0.00', 1, 0, '2022-09-25 12:30:17', '2022-09-25 12:30:17'),
(443, 1, 1, 'D000000000443', 'L00000166', 'P00000353', '0.00', 1, 0, '2022-09-25 12:30:17', '2022-09-25 12:30:17'),
(444, 1, 2, 'D000000000444', 'L00000166', 'P00000352', '0.00', 1, 0, '2022-09-25 12:30:17', '2022-09-25 12:30:17'),
(445, 1, 0, 'D000000000445', 'L00000167', 'P00000070', '0.00', 3, 0, '2022-09-25 12:31:47', '2022-09-25 12:31:47'),
(446, 1, 1, 'D000000000446', 'L00000167', 'P00000364', '0.00', 3, 0, '2022-09-25 12:31:47', '2022-09-25 12:31:47'),
(447, 1, 0, 'D000000000447', 'L00000168', 'P00000374', '0.00', 1, 0, '2022-09-25 12:32:47', '2022-09-25 12:32:47'),
(448, 1, 1, 'D000000000448', 'L00000168', 'P00000373', '0.00', 1, 0, '2022-09-25 12:32:47', '2022-09-25 12:32:47'),
(449, 1, 2, 'D000000000449', 'L00000168', 'P00000375', '0.00', 1, 0, '2022-09-25 12:32:47', '2022-09-25 12:32:47'),
(450, 1, 0, 'D000000000450', 'L00000169', 'P00000397', '0.00', 1, 0, '2022-09-25 12:33:39', '2022-09-25 12:33:39'),
(451, 1, 1, 'D000000000451', 'L00000169', 'P00000391', '0.00', 1, 0, '2022-09-25 12:33:39', '2022-09-25 12:33:39'),
(452, 1, 2, 'D000000000452', 'L00000169', 'P00000399', '0.00', 1, 0, '2022-09-25 12:33:39', '2022-09-25 12:33:39'),
(453, 1, 3, 'D000000000453', 'L00000169', 'P00000400', '0.00', 1, 0, '2022-09-25 12:33:39', '2022-09-25 12:33:39'),
(454, 1, 0, 'D000000000454', 'L00000170', 'P00000408', '0.00', 1, 0, '2022-09-25 12:34:04', '2022-09-25 12:34:04'),
(455, 1, 1, 'D000000000455', 'L00000170', 'P00000406', '0.00', 1, 0, '2022-09-25 12:34:04', '2022-09-25 12:34:04'),
(456, 1, 2, 'D000000000456', 'L00000170', 'P00000405', '0.00', 1, 0, '2022-09-25 12:34:04', '2022-09-25 12:34:04'),
(457, 1, 0, 'D000000000457', 'L00000171', 'P00000165', '0.00', 2, 0, '2022-09-25 12:34:36', '2022-09-25 12:34:36'),
(458, 1, 1, 'D000000000458', 'L00000171', 'P00000166', '0.00', 2, 0, '2022-09-25 12:34:36', '2022-09-25 12:34:36'),
(459, 1, 0, 'D000000000459', 'L00000172', 'P00000176', '0.00', 1, 0, '2022-09-25 12:34:58', '2022-09-25 12:34:58'),
(460, 1, 0, 'D000000000460', 'L00000173', 'P00000182', '0.00', 1, 0, '2022-09-25 12:35:36', '2022-09-25 12:35:36'),
(461, 1, 1, 'D000000000461', 'L00000173', 'P00000189', '0.00', 2, 0, '2022-09-25 12:35:36', '2022-09-25 12:35:36'),
(462, 1, 2, 'D000000000462', 'L00000173', 'P00000190', '0.00', 1, 0, '2022-09-25 12:35:36', '2022-09-25 12:35:36'),
(463, 1, 0, 'D000000000463', 'L00000174', 'P00000264', '0.00', 3, 0, '2022-09-25 12:36:01', '2022-09-25 12:36:01'),
(464, 1, 1, 'D000000000464', 'L00000174', 'P00000261', '0.00', 2, 0, '2022-09-25 12:36:01', '2022-09-25 12:36:01'),
(465, 1, 2, 'D000000000465', 'L00000174', 'P00000266', '0.00', 2, 0, '2022-09-25 12:36:01', '2022-09-25 12:36:02'),
(466, 1, 0, 'D000000000466', 'L00000175', 'P00000216', '0.00', 3, 0, '2022-09-25 12:36:25', '2022-09-25 12:36:25'),
(467, 1, 1, 'D000000000467', 'L00000175', 'P00000217', '0.00', 3, 0, '2022-09-25 12:36:25', '2022-09-25 12:36:25'),
(468, 1, 2, 'D000000000468', 'L00000175', 'P00000220', '0.00', 1, 0, '2022-09-25 12:36:25', '2022-09-25 12:36:25'),
(469, 1, 0, 'D000000000469', 'L00000176', 'P00000144', '0.00', 1, 0, '2022-09-25 12:36:43', '2022-09-25 12:36:43'),
(470, 1, 1, 'D000000000470', 'L00000176', 'P00000142', '0.00', 1, 0, '2022-09-25 12:36:43', '2022-09-25 12:36:43'),
(471, 1, 2, 'D000000000471', 'L00000176', 'P00000145', '0.00', 1, 0, '2022-09-25 12:36:43', '2022-09-25 12:36:43'),
(472, 1, 0, 'D000000000472', 'L00000177', 'P00000133', '0.00', 1, 0, '2022-09-25 12:37:11', '2022-09-25 12:37:11'),
(473, 1, 1, 'D000000000473', 'L00000177', 'P00000137', '0.00', 1, 0, '2022-09-25 12:37:11', '2022-09-25 12:37:11'),
(474, 1, 2, 'D000000000474', 'L00000177', 'P00000139', '0.00', 1, 0, '2022-09-25 12:37:11', '2022-09-25 12:37:11'),
(475, 1, 3, 'D000000000475', 'L00000177', 'P00000131', '0.00', 1, 0, '2022-09-25 12:37:11', '2022-09-25 12:37:11'),
(476, 1, 0, 'D000000000476', 'L00000178', 'P00000125', '0.00', 1, 0, '2022-09-25 12:37:30', '2022-09-25 12:37:30'),
(477, 1, 1, 'D000000000477', 'L00000178', 'P00000130', '0.00', 1, 0, '2022-09-25 12:37:30', '2022-09-25 12:37:30'),
(478, 1, 2, 'D000000000478', 'L00000178', 'P00000121', '0.00', 1, 0, '2022-09-25 12:37:30', '2022-09-25 12:37:30'),
(479, 1, 0, 'D000000000479', 'L00000179', 'P00000120', '0.00', 1, 0, '2022-09-25 12:38:00', '2022-09-25 12:38:00'),
(480, 1, 1, 'D000000000480', 'L00000179', 'P00000116', '0.00', 1, 0, '2022-09-25 12:38:00', '2022-09-25 12:38:01'),
(481, 1, 2, 'D000000000481', 'L00000179', 'P00000117', '0.00', 1, 0, '2022-09-25 12:38:01', '2022-09-25 12:38:01'),
(482, 1, 0, 'D000000000482', 'L00000180', 'P00000107', '0.00', 3, 0, '2022-09-25 12:38:32', '2022-09-25 12:38:32'),
(483, 1, 1, 'D000000000483', 'L00000180', 'P00000103', '0.00', 2, 0, '2022-09-25 12:38:32', '2022-09-25 12:38:32'),
(484, 1, 2, 'D000000000484', 'L00000180', 'P00000106', '0.00', 2, 0, '2022-09-25 12:38:32', '2022-09-25 12:38:32'),
(485, 1, 0, 'D000000000485', 'L00000181', 'P00000301', '0.00', 1, 0, '2022-09-25 12:39:09', '2022-09-25 12:39:09'),
(486, 1, 1, 'D000000000486', 'L00000181', 'P00000310', '0.00', 1, 0, '2022-09-25 12:39:09', '2022-09-25 12:39:09'),
(487, 1, 0, 'D000000000487', 'L00000182', 'P00000314', '0.00', 1, 0, '2022-09-25 12:39:32', '2022-09-25 12:39:32'),
(488, 1, 1, 'D000000000488', 'L00000182', 'P00000318', '0.00', 1, 0, '2022-09-25 12:39:32', '2022-09-25 12:39:32'),
(489, 1, 2, 'D000000000489', 'L00000182', 'P00000315', '0.00', 1, 0, '2022-09-25 12:39:32', '2022-09-25 12:39:32'),
(490, 1, 3, 'D000000000490', 'L00000182', 'P00000311', '0.00', 1, 0, '2022-09-25 12:39:32', '2022-09-25 12:39:32'),
(491, 1, 0, 'D000000000491', 'L00000183', 'P00000321', '0.00', 2, 0, '2022-09-25 12:39:47', '2022-09-25 12:39:47'),
(492, 1, 1, 'D000000000492', 'L00000183', 'P00000323', '0.00', 1, 0, '2022-09-25 12:39:47', '2022-09-25 12:39:47'),
(493, 1, 0, 'D000000000493', 'L00000184', 'P00000334', '0.00', 1, 0, '2022-09-25 12:40:08', '2022-09-25 12:40:08'),
(494, 1, 1, 'D000000000494', 'L00000184', 'P00000332', '0.00', 1, 0, '2022-09-25 12:40:08', '2022-09-25 12:40:08'),
(495, 1, 2, 'D000000000495', 'L00000184', 'P00000339', '0.00', 1, 0, '2022-09-25 12:40:08', '2022-09-25 12:40:08'),
(496, 1, 0, 'D000000000496', 'L00000185', 'P00000347', '0.00', 1, 0, '2022-09-25 12:40:32', '2022-09-25 12:40:33'),
(497, 1, 1, 'D000000000497', 'L00000185', 'P00000343', '0.00', 1, 0, '2022-09-25 12:40:33', '2022-09-25 12:40:33'),
(498, 1, 2, 'D000000000498', 'L00000185', 'P00000342', '0.00', 1, 0, '2022-09-25 12:40:33', '2022-09-25 12:40:33'),
(499, 1, 3, 'D000000000499', 'L00000185', 'P00000348', '0.00', 1, 0, '2022-09-25 12:40:33', '2022-09-25 12:40:33'),
(500, 1, 0, 'D000000000500', 'L00000186', 'P00000358', '0.00', 2, 0, '2022-09-25 12:40:56', '2022-09-25 12:40:56'),
(501, 1, 1, 'D000000000501', 'L00000186', 'P00000360', '0.00', 2, 0, '2022-09-25 12:40:56', '2022-09-25 12:40:56'),
(502, 1, 2, 'D000000000502', 'L00000186', 'P00000355', '0.00', 2, 0, '2022-09-25 12:40:56', '2022-09-25 12:40:56'),
(503, 1, 0, 'D000000000503', 'L00000187', 'P00000364', '0.00', 3, 0, '2022-09-25 12:41:15', '2022-09-25 12:41:15'),
(504, 1, 1, 'D000000000504', 'L00000187', 'P00000361', '0.00', 3, 0, '2022-09-25 12:41:15', '2022-09-25 12:41:15'),
(505, 1, 2, 'D000000000505', 'L00000187', 'P00000367', '0.00', 3, 0, '2022-09-25 12:41:15', '2022-09-25 12:41:15'),
(506, 1, 0, 'D000000000506', 'L00000188', 'P00000371', '0.00', 10, 0, '2022-09-25 12:41:41', '2022-09-25 12:41:41'),
(507, 1, 1, 'D000000000507', 'L00000188', 'P00000372', '0.00', 10, 0, '2022-09-25 12:41:41', '2022-09-25 12:41:41'),
(508, 1, 2, 'D000000000508', 'L00000188', 'P00000374', '0.00', 2, 0, '2022-09-25 12:41:41', '2022-09-25 12:41:41'),
(509, 1, 0, 'D000000000509', 'L00000189', 'P00000382', '0.00', 2, 0, '2022-09-25 12:42:02', '2022-09-25 12:42:02'),
(510, 1, 1, 'D000000000510', 'L00000189', 'P00000381', '0.00', 2, 0, '2022-09-25 12:42:02', '2022-09-25 12:42:02'),
(511, 1, 0, 'D000000000511', 'L00000190', 'P00000395', '0.00', 1, 0, '2022-09-25 12:42:29', '2022-09-25 12:42:29'),
(512, 1, 1, 'D000000000512', 'L00000190', 'P00000398', '0.00', 1, 0, '2022-09-25 12:42:29', '2022-09-25 12:42:29'),
(513, 1, 0, 'D000000000513', 'L00000191', 'P00000190', '0.00', 1, 0, '2022-09-25 12:42:48', '2022-09-25 12:42:48'),
(514, 1, 1, 'D000000000514', 'L00000191', 'P00000183', '0.00', 1, 0, '2022-09-25 12:42:48', '2022-09-25 12:42:48'),
(515, 1, 2, 'D000000000515', 'L00000191', 'P00000189', '0.00', 1, 0, '2022-09-25 12:42:48', '2022-09-25 12:42:48'),
(516, 1, 0, 'D000000000516', 'L00000192', 'P00000197', '0.00', 1, 0, '2022-09-25 12:43:07', '2022-09-25 12:43:08'),
(517, 1, 1, 'D000000000517', 'L00000192', 'P00000198', '0.00', 1, 0, '2022-09-25 12:43:08', '2022-09-25 12:43:08'),
(518, 1, 2, 'D000000000518', 'L00000192', 'P00000195', '0.00', 1, 0, '2022-09-25 12:43:08', '2022-09-25 12:43:08'),
(519, 1, 3, 'D000000000519', 'L00000192', 'P00000200', '0.00', 1, 0, '2022-09-25 12:43:08', '2022-09-25 12:43:08'),
(520, 1, 0, 'D000000000520', 'L00000193', 'P00000201', '0.00', 1, 0, '2022-09-25 12:43:35', '2022-09-25 12:43:35'),
(521, 1, 1, 'D000000000521', 'L00000193', 'P00000202', '0.00', 1, 0, '2022-09-25 12:43:35', '2022-09-25 12:43:35'),
(522, 1, 2, 'D000000000522', 'L00000193', 'P00000205', '0.00', 1, 0, '2022-09-25 12:43:35', '2022-09-25 12:43:35'),
(523, 1, 3, 'D000000000523', 'L00000193', 'P00000206', '0.00', 1, 0, '2022-09-25 12:43:35', '2022-09-25 12:43:35'),
(524, 1, 0, 'D000000000524', 'L00000194', 'P00000364', '0.00', 4, 0, '2022-09-25 12:44:00', '2022-09-25 12:44:00'),
(525, 1, 1, 'D000000000525', 'L00000194', 'P00000362', '0.00', 2, 0, '2022-09-25 12:44:00', '2022-09-25 12:44:00'),
(526, 1, 2, 'D000000000526', 'L00000194', 'P00000363', '0.00', 1, 0, '2022-09-25 12:44:00', '2022-09-25 12:44:00'),
(527, 1, 0, 'D000000000527', 'L00000195', 'P00000246', '0.00', 1, 0, '2022-09-25 12:44:24', '2022-09-25 12:44:24'),
(528, 1, 1, 'D000000000528', 'L00000195', 'P00000247', '0.00', 1, 0, '2022-09-25 12:44:24', '2022-09-25 12:44:24'),
(529, 1, 0, 'D000000000529', 'L00000196', 'P00000001', '0.00', 1, 0, '2022-09-25 12:44:45', '2022-09-25 12:44:45'),
(530, 1, 1, 'D000000000530', 'L00000196', 'P00000002', '0.00', 1, 0, '2022-09-25 12:44:45', '2022-09-25 12:44:45'),
(531, 1, 2, 'D000000000531', 'L00000196', 'P00000003', '0.00', 1, 0, '2022-09-25 12:44:45', '2022-09-25 12:44:45'),
(532, 1, 0, 'D000000000532', 'L00000197', 'P00000015', '0.00', 2, 0, '2022-09-25 12:45:18', '2022-09-25 12:45:18'),
(533, 1, 1, 'D000000000533', 'L00000197', 'P00000016', '0.00', 2, 0, '2022-09-25 12:45:18', '2022-09-25 12:45:18'),
(534, 1, 2, 'D000000000534', 'L00000197', 'P00000014', '0.00', 2, 0, '2022-09-25 12:45:18', '2022-09-25 12:45:18'),
(535, 1, 3, 'D000000000535', 'L00000197', 'P00000017', '0.00', 2, 0, '2022-09-25 12:45:18', '2022-09-25 12:45:18'),
(536, 1, 0, 'D000000000536', 'L00000198', 'P00000026', '0.00', 1, 0, '2022-09-25 12:45:46', '2022-09-25 12:45:46'),
(537, 1, 0, 'D000000000537', 'L00000199', 'P00000077', '0.00', 5, 0, '2022-09-25 12:46:12', '2022-09-25 12:46:12'),
(538, 1, 1, 'D000000000538', 'L00000199', 'P00000078', '0.00', 1, 0, '2022-09-25 12:46:12', '2022-09-25 12:46:12'),
(539, 1, 2, 'D000000000539', 'L00000199', 'P00000079', '0.00', 1, 0, '2022-09-25 12:46:12', '2022-09-25 12:46:12'),
(540, 1, 0, 'D000000000540', 'L00000200', 'P00000116', '0.00', 2, 0, '2022-09-25 12:46:44', '2022-09-25 12:46:44'),
(541, 1, 1, 'D000000000541', 'L00000200', 'P00000114', '0.00', 2, 0, '2022-09-25 12:46:44', '2022-09-25 12:46:44'),
(542, 1, 2, 'D000000000542', 'L00000200', 'P00000120', '0.00', 2, 0, '2022-09-25 12:46:44', '2022-09-25 12:46:44'),
(543, 0, 0, 'D000000000543', 'L00000201', 'P00000372', '0.00', 1, 0, '2022-10-24 04:03:00', '2022-10-24 04:03:01'),
(544, 0, 1, 'D000000000544', 'L00000201', 'P00000371', '0.00', 1, 0, '2022-10-24 04:03:01', '2022-10-24 04:03:01'),
(545, 0, 2, 'D000000000545', 'L00000201', 'P00000083', '0.00', 1, 0, '2022-10-24 04:03:01', '2022-10-24 04:03:01'),
(546, 0, 3, 'D000000000546', 'L00000201', 'P00000082', '0.00', 1, 0, '2022-10-24 04:03:01', '2022-10-24 04:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `market_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `markets`
--

INSERT INTO `markets` (`id`, `market_id`, `market_name`, `email`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'M000001', 'SM Supermarket Bacolod', 'sm_bacolod@shopculator.com', 0, '2022-07-07 19:48:20', '2022-09-25 01:50:50'),
(2, 'M000002', 'AllDay Supermarket Bacolod', 'allday_bacolod@shopculator.com', 0, '2022-07-07 19:48:20', '2022-09-25 01:49:30'),
(3, 'M000003', 'Robinsons Supermarket Bacolod', 'rob_bacolod@shopculator.com', 0, '2022-07-07 19:48:20', '2022-09-25 01:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_08_032101_create_sessions_table', 1),
(7, '2022_07_21_004611_create_shopping_lists_table', 2),
(8, '2022_07_21_004703_create_list_details_table', 2),
(9, '2022_07_21_004803_create_products_table', 2),
(10, '2022_07_21_004825_create_categories_table', 2),
(11, '2022_07_21_004841_create_markets_table', 2),
(12, '2022_08_22_162122_create_cache_table', 3),
(13, '2022_09_12_155622_create_subcategories_table', 4),
(14, '2022_09_13_150707_create_roles_table', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `market_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `market_id`, `subcategory_id`, `product_name`, `price`, `image_path`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'P00000001', 'M000001', 'S000001', 'SM Bonus Baby Diapers XL | 10pcs', '85.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20145786.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(2, 'P00000002', 'M000001', 'S000001', 'SM Bonus Baby Diapers L | 10pcs', '76.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwyglostnfound220145787_-_sm_bonus_dry_baby_diaper_travel_pack_l-10s.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(3, 'P00000003', 'M000001', 'S000001', 'SM Bonus Baby Diapers M | 10pcs', '72.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052020145788_diaper.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(4, 'P00000004', 'M000001', 'S000001', 'SM Bonus Baby Pants Diaper XL | 5pcs', '56.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052020178535_bonus.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(5, 'P00000005', 'M000001', 'S000001', 'SM Bonus Baby Pants Mini Pack L | 5pcs', '46.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20178533_sm_bonus_baby_pants_mini_pack_l_5pcs_copy__1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(6, 'P00000006', 'M000001', 'S000001', 'EQ Pants Jumbo Pack XXXL | 40pcs', '421.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20439886_eq_pants_jumbo_pack_xxxl40_1.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(7, 'P00000007', 'M000001', 'S000001', 'EQ Pants Baby Diaper Jumbo Pack XXL | 40pcs', '334.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20395285_eq_pants_jumbo_pack_xxl40.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(8, 'P00000008', 'M000001', 'S000001', 'EQ Pants Baby Diaper Jumbo Pack XL | 40pcs', '324.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20395302_eq_pants_jumbo_pack_xl_40.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(9, 'P00000009', 'M000001', 'S000001', 'EQ Pants Baby Diaper Jumbo Pack Large | 40pcs', '296.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20395303_eq_pants_jumbo_pack_l40.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(10, 'P00000010', 'M000001', 'S000001', 'EQ Pants Jumbo Pack Medium | 40pcs', '264.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20395304_eq_pants_jumbo_pack_m40.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(11, 'P00000011', 'M000001', 'S000002', 'Coles Beef With Vegetables | 120g', '88.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20527010.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(12, 'P00000012', 'M000001', 'S000002', 'Nestle Cerelac Porridge Veggies | 200g', '211.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20512950_1.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(13, 'P00000013', 'M000001', 'S000002', 'Nestle Cerelac Porridge Chicken | 200g', '211.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20512951_nestle_cerelac_porridge_chicken_300g.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(14, 'P00000014', 'M000001', 'S000002', 'Milna Baby Biscuits Banana | 130g', '71.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20338666_milna_baby_biscuits_banana_130g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(15, 'P00000015', 'M000001', 'S000002', 'Milna Chicken Soup Sweetcorn | 120g', '66.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20338659_milna_chicken_soup_sweetcorn_120g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(16, 'P00000016', 'M000001', 'S000002', 'Milna Brown Rice Banana | 120g', '66.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20338662_milna_brown_rice_banana_120g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(17, 'P00000017', 'M000001', 'S000002', 'Milna Baby Biscuits Original | 130g', '71.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20338667_milna_baby_biscuits_original_130g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(18, 'P00000018', 'M000001', 'S000002', 'Nestle Cerelac Brown Rice | 120g', '75.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10192435_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(19, 'P00000019', 'M000001', 'S000002', 'Nestle Cerelac Soya Rice | 120g', '75.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10192375_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(20, 'P00000020', 'M000001', 'S000002', 'Gerber 1st Foods Apple | 80g', '78.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20147346_applesauce_80g_copy_.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(21, 'P00000021', 'M000001', 'S000003', 'S26 Gold One Infant Formula Milk | 1.8kg', '2844.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20340191.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(22, 'P00000022', 'M000001', 'S000003', 'S26 One Infant Formula Milk | 1.8kg', '2267.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20340195.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(23, 'P00000023', 'M000001', 'S000003', 'Similac | 1.8kg', '2692.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20393649_similac_1.8kg_1.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(24, 'P00000024', 'M000001', 'S000003', 'Enfamil One A+ Infant Formula Powder 0-6 months | 1.8kg', '2847.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/5/7/57-20318290-enfamil-one-a_-infant-formula-powder-0to6-months-1.8kg.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(25, 'P00000025', 'M000001', 'S000003', 'Enfamil One A+ Infant Formula Powder 0-6 months | 1.2kg', '2117.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11102020318288_enfamil-a__one-_1.2kg.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(26, 'P00000026', 'M000001', 'S000003', 'Nan Optipro HW One Infant Formula 0-6 months | 1.4kg', '2419.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20302443.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(27, 'P00000027', 'M000001', 'S000003', 'Bonna Infant Formula Milk 0-6 months | 2kg', '1194.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/6/0/60-20349070-bonna-infant-milk-2kg.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(28, 'P00000028', 'M000001', 'S000003', 'S26 Gold Two Milk Supplement | 1.8kg', '2684.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20370707.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(29, 'P00000029', 'M000001', 'S000003', 'S26 Two Milk Supplement | 1.8kg', '2148.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20370708.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(30, 'P00000030', 'M000001', 'S000003', 'Similac Gain Two Milk Supplement | 1.8kg', '2617.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052020393648-1.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(31, 'P00000031', 'M000001', 'S000004', 'SM Bonus Gulaman Powder Red | 24g', '9.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts220377699_-_sm_bonus_gulaman_powder_red_24g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(32, 'P00000032', 'M000001', 'S000004', 'SM Bonus Gulaman Powder Green | 24g', '9.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts220377700_-_sm_bonus_gulaman_powder_green_24g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(33, 'P00000033', 'M000001', 'S000004', 'SM Bonus Gulaman Powder Crystal | 24g', '9.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts220377698_-_sm_bonus_gulaman_powder_crystal.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(34, 'P00000034', 'M000001', 'S000004', 'SM Bonus All Purpose Flour | 400g', '38.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20005714-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(35, 'P00000035', 'M000001', 'S000004', 'SM Bonus All Purpose Flour | 200g', '21.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/s/m/sm_bonus_all_purpose_flour_200g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(36, 'P00000036', 'M000001', 'S000004', 'SM Bonus All Purpose Flour | 1kg', '84.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/s/m/sm_bonus_all_purpose_flour_1kg.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(37, 'P00000037', 'M000001', 'S000004', 'Tasty Boy All Purpose Breading Mix | 67g', '11.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwyg20191015-4k_front_photo_update20070354-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(38, 'P00000038', 'M000001', 'S000004', 'Peotraco Glutinous Rice Flour | 500g', '71.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts20021927_-_peotraco_glutinous_rice_flour_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(39, 'P00000039', 'M000001', 'S000004', 'MY San Crushed Graham | 200g', '41.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts10094579_-_m.y._san_crushed_graham_200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(40, 'P00000040', 'M000001', 'S000004', 'Maya The Original Hot Cake Mix | 500g', '62.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10007283_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(41, 'P00000041', 'M000001', 'S000005', 'Ichipan White Bread | 600g', '72.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20455633_ichipan_white_bread_600g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(42, 'P00000042', 'M000001', 'S000005', 'Ichipan Wheat Bread | 600g', '78.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20455632_ichipan_wheat_bread_600g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(43, 'P00000043', 'M000001', 'S000005', 'Marby Whole Wheat Raisin Bread | 410g', '67.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20422415_marby_whole_wheat_raisin_bread_410g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(44, 'P00000044', 'M000001', 'S000005', 'Conching Pullman | 630g', '59.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2022050_conching_pullman_630g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(45, 'P00000045', 'M000001', 'S000005', 'Conching High Grade Cream Bread | 410g', '41.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2022036_conching_high_grade_cream_bread_410gm.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(46, 'P00000046', 'M000001', 'S000005', 'Fountain Head Tasty Bread | 500g', '55.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2021399_fountain_head_tasty_bread_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(47, 'P00000047', 'M000001', 'S000005', 'Gardenia Cheese Buns | 250g 10pcs', '49.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20334955_gardenia_cheesebuns_250g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(48, 'P00000048', 'M000001', 'S000005', 'Marby Cheese Buns | 250g 10pcs', '59.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10051832001_marby_cheese_buns_250g_10_pcs_.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(49, 'P00000049', 'M000001', 'S000005', 'Marby Pinoy Pandesal | 250g', '21.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20169616_pinoy_pandesal_250g_b.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(50, 'P00000050', 'M000001', 'S000005', 'SM Bonus White Bread | 450g', '35.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20193718_sm_bonus_white_bread_450g_b.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(51, 'P00000051', 'M000001', 'S000006', 'Lemon Square Cheese Cake | 30g 10pcs', '61.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2063002_lemon_square_cake_cheese_30g_10_pcs__1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(52, 'P00000052', 'M000001', 'S000006', 'Lemon Square Cake Assorted | 10pcs', '61.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2063238.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(53, 'P00000053', 'M000001', 'S000006', 'Monde Special Mamon Classic | 40g 6pcs', '85.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20166978.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(54, 'P00000054', 'M000001', 'S000006', 'Monde Special Mamon Mocha | 40g 6pcs', '94.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20166977-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(55, 'P00000055', 'M000001', 'S000006', 'Fudgee Bar Chocolate Cream-Filled Cake Bar | 42g 10pcs', '66.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20107732_fudgee_bar_chocolate_42g_10_pcs__1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(56, 'P00000056', 'M000001', 'S000006', 'Suncrest Doowee Donuts | 40g 10pcs', '89.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20192799_suncrest_doowee_donuts_40g_10s_copy_1_.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(57, 'P00000057', 'M000001', 'S000006', 'Quake Overload Mocha | 33g 10pcs', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/1/2152305_quake_overload_mocha_33gx10s.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(58, 'P00000058', 'M000001', 'S000006', 'Quake Overload Black Forest | 330g 10pcs', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20274171-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(59, 'P00000059', 'M000001', 'S000006', 'Quake Choco Bar Choco Filing | 38g 10pcs', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20172325-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(60, 'P00000060', 'M000001', 'S000006', 'Quake Mallow Overload Vanilla | 280g 10pcs', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts20274072-quake_mallow_overload_vanilla_10s_28g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(61, 'P00000061', 'M000001', 'S000007', 'Coca Cola Coke  PET | 1.5L', '62.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010031781_softdrinks.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(62, 'P00000062', 'M000001', 'S000007', 'Coca Cola Coke Zero | 1.5L', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20013162_coke_zero_1.5l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(63, 'P00000063', 'M000001', 'S000007', 'Coke Zero | 320ml', '32.95', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20013160.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(64, 'P00000064', 'M000001', 'S000007', 'Coca Cola Coke Light PET | 1.5L PET', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10070745-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(65, 'P00000065', 'M000001', 'S000007', 'Sprite | 1.5L PET', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010031783_softdrinks.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(66, 'P00000066', 'M000001', 'S000007', 'Sprite Can| 320ml', '34.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006460_sprite_can_320ml.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(67, 'P00000067', 'M000001', 'S000007', 'Sprite Zero | 320ml', '34.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10067454_1.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(68, 'P00000068', 'M000001', 'S000007', 'Royal Tru Orange | 1.5L PET', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010031782_softdrinks.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(69, 'P00000069', 'M000001', 'S000007', 'Royal Can Tru Orange | 320ml', '34.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006461_royal_can_tru_orange_320ml.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(70, 'P00000070', 'M000001', 'S000007', 'Mug Rootbeer | 330ml can', '29.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwyg20191015-4k_front_photo_update10006438-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(71, 'P00000071', 'M000001', 'S000008', 'Nescafe Refill Classic | 200g', '156.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos10262020335454_nescafe_classic_instant_coffee_200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(72, 'P00000072', 'M000001', 'S000008', 'Nescafe Refill Classic | 100g', '77.75', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10009368_nescafe_classic_instant_coffee_100g_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(73, 'P00000073', 'M000001', 'S000008', 'Nescafe Sticks Classic | 2g 48pcs', '104.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20246999-1.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(74, 'P00000074', 'M000001', 'S000008', 'Nescafe Refill Resealable Classic | 50g', '40.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10009360-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(75, 'P00000075', 'M000001', 'S000008', 'Nescafe Refill Decaf | 80g', '93.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20130787-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(76, 'P00000076', 'M000001', 'S000008', 'Lipton Green Tea 50 bags | 1.5g 50teabags', '399.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10187511_copy_.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(77, 'P00000077', 'M000001', 'S000008', 'Nestea Iced Tea Lemon Blend Litro Pack | 25g', '18.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052020168987_juice.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(78, 'P00000078', 'M000001', 'S000008', 'C2 Green Tea Apple | 500ml', '29.95', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos10262020099025_c2_apple_green_tea_500ml.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(79, 'P00000079', 'M000001', 'S000008', 'C2 Green Tea Lemon | 1L', '50.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20099148-c2_green_tea_lemon_1l_front.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(80, 'P00000080', 'M000001', 'S000008', 'Aldi Turmeric Tea Calamansi | 320g', '202.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11102020335598_aldi_turmeric_tea_wt_clmnsi_bttle_-_320g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(81, 'P00000081', 'M000001', 'S000009', 'SM Bonus Distilled Water | 10L', '75.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygproducts220064590_-_sm_bonus_distilled_water_10l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(82, 'P00000082', 'M000001', 'S000009', 'SM Bonus Distilled Water | 325ml', '6.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010006433_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(83, 'P00000083', 'M000001', 'S000009', 'SM Bonus Distilled Water | 500ml', '8.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010039254_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(84, 'P00000084', 'M000001', 'S000009', 'SM Bonus Distilled Water | 6.6L', '50.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010026618_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(85, 'P00000085', 'M000001', 'S000009', 'Wilkins Distilled Water | 6L', '85.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010020910_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(86, 'P00000086', 'M000001', 'S000009', 'Wilkins Distilled Water | 500ml', '17.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos11052010193170_water.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(87, 'P00000087', 'M000001', 'S000009', 'Absolute Distilled Water | 500ml', '16.25', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygro_photos10262010006425_absolute_distilledwater_500ml.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(88, 'P00000088', 'M000001', 'S000009', 'Natures Spring Mineral Water | 1L', '15.40', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006431_natures_spring_mineral_water_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(89, 'P00000089', 'M000001', 'S000009', 'Summit Natural Drinking Water | 500ml', '13.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006422_-_summit_natural_drinking_water_500ml.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(90, 'P00000090', 'M000001', 'S000009', 'Natures Spring Mineral Water | 6.6L', '64.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10006432_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(91, 'P00000091', 'M000001', 'S000010', 'Star Margarine Regular | 1kg', '255.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10009607_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(92, 'P00000092', 'M000001', 'S000010', 'Star Margarine Sweet Blend | 100g', '34.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20099450.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(93, 'P00000093', 'M000001', 'S000010', 'Star Margarine Regular | 100g', '36.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phmediawysiwygreplace10041295_-_star_margarine_classic_100g_2_.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(94, 'P00000094', 'M000001', 'S000010', 'Elle & Vire Marquis Butter Unsalted | 200g', '89.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20129147_elle_vire-marquis__unsalte_butter-200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(95, 'P00000095', 'M000001', 'S000010', 'Emborg Cook and Bake Butter | 200g', '90.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygnro_photosv320436458_emborg-cook___bake_butter-200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(96, 'P00000096', 'M000001', 'S000010', 'Emborg Spreadable Butter Salted | 225g', '149.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(97, 'P00000097', 'M000001', 'S000010', 'Elle & Vire Butter Regular Unsalted | 200g', '199.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(98, 'P00000098', 'M000001', 'S000010', 'Emborg Butter Unsalted | 200g', '159.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(99, 'P00000099', 'M000001', 'S000010', 'Emborg Butter Salted | 200g', '159.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(100, 'P00000100', 'M000001', 'S000010', 'Elle & Vire Butter Regular Salted | 200g', '199.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20119684.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:55'),
(101, 'P00000101', 'M000001', 'S000011', 'Emborg Perfect Slices Cheese | 200g', '99.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(102, 'P00000102', 'M000001', 'S000011', 'Kesorap Express Melt Cheese | 470g', '186.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20437387_kesorap_express_melt_cheese_470g_4_.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(103, 'P00000103', 'M000001', 'S000011', 'CDO Danes Quickmelt Cheese | 165g', '69.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20465206_cdo_danes_quickmelt_cheese_165g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(104, 'P00000104', 'M000001', 'S000011', 'American Heritage Singles | 227g 12pcs', '180.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20200652_american_heritage_singles_227g_12pcs.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(105, 'P00000105', 'M000001', 'S000011', 'Ques-O Cheese Slices | 250g', '76.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10005692005_ques-o_cheese_slices_250g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(106, 'P00000106', 'M000001', 'S000011', 'Che-Vital Cheddar Cheese | 200g', '74.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(107, 'P00000107', 'M000001', 'S000011', 'CDO Bigtime Negosyo Cheese | 165g', '30.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20501585_cdo_bigtime_negosyo_cheese_165g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(108, 'P00000108', 'M000001', 'S000011', 'Emborg Cream Cheese | 200g', '115.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20279192_emborg_cream_cheese_200g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(109, 'P00000109', 'M000001', 'S000011', 'Emborg Shredded Parmesan Cheese | 200g', '227.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(110, 'P00000110', 'M000001', 'S000011', 'Chiz Boy Grated Mozzarella Cheese | 200g', '134.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygnro_photosv320358000_chiz_boy_grated_cheese_mozzarella_350g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(111, 'P00000111', 'M000001', 'S000012', 'Nestle Low Fat Milk | 1L', '89.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10093346_nestle_low-fat_milk.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(112, 'P00000112', 'M000001', 'S000012', 'Cowhead Lite Milk | 1L', '99.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2077934-cowhead_lit_milk_1l_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(113, 'P00000113', 'M000001', 'S000012', 'Alaska Fortified Milk | 1L', '74.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/h/t/httpsshop.smmarkets.phpubmediawysiwygnro_photosv320488746_alaska_fortified_uht_1l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(114, 'P00000114', 'M000001', 'S000012', 'Nestle Fortified | 1L', '69.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20496784_nestle_fortified_milk_1l_full__1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(115, 'P00000115', 'M000001', 'S000012', 'Alaska Slim Low-Fat Milk | 1L', '91.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10024746-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(116, 'P00000116', 'M000001', 'S000012', 'Selecta Sterilized | 1L', '63.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20077990_selecta_full_cream_milk_sterilized_1l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(117, 'P00000117', 'M000001', 'S000012', 'Selecta Fortified Milk | 1L', '71.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10201634_selecta_fortified_milk_1l_full_copy_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(118, 'P00000118', 'M000001', 'S000012', 'Selecta Fortified Low Fat Milk | 1L', '94.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20008134-1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(119, 'P00000119', 'M000001', 'S000012', 'Nestle Non-Fat Milk | 1L', '94.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20209532_-_nestle_non_fat_uht_milk_1l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(120, 'P00000120', 'M000001', 'S000012', 'Nestle Fresh Milk | 1L', '91.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/1/0/10009486_nestle_fresh_uht_milk_1l.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(121, 'P00000121', 'M000001', 'S000013', 'SM Bonus C Beef Brisket | 500g', '153.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481846_sm_bonus_c_beef_brisket_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(122, 'P00000122', 'M000001', 'S000013', 'SM Bonus C Beef Cubes | 500g', '153.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481843_sm_bonus_c_beef_cubes_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(123, 'P00000123', 'M000001', 'S000013', 'SM Bonus Sukiyaki Cut | 500g', '192.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481483_sm_bonus_beef_sukiyaki_cut_500g_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(124, 'P00000124', 'M000001', 'S000013', 'SM Bonus Breakfast Steak | 500g', '175.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481886_sm_bonus_breakfast_steak_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(125, 'P00000125', 'M000001', 'S000013', 'SM Bonus Caldereta Cut | 500g', '124.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481889-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(126, 'P00000126', 'M000001', 'S000013', 'SM Bonus Pork Cubes | 500g-550g', '155.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20505165.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(127, 'P00000127', 'M000001', 'S000013', 'SM Bonus Pork Steak | 400g-500g', '163.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20505168.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(128, 'P00000128', 'M000001', 'S000013', 'SM Bonus Pigue | 500g-550g', '155.10', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20505171.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(129, 'P00000129', 'M000001', 'S000013', 'SM Bonus Bacon Slice | 500g-550g', '221.10', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481723_sm_bonus_c-bacon_slice_500g_-_copy_10.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(130, 'P00000130', 'M000001', 'S000013', 'SM Bonus Pata Slice | 400g-500g', '126.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481835_sm_bonus_c_pata_slice__500g_-_copy_10.png?auto=webp&format=png&width=960&height=1200&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(131, 'P00000131', 'M000001', 'S000014', 'SM Bonus Chicken Breast | 500g', '87.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481796_-_sm_bonus_packed_chicken_breast_500g_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(132, 'P00000132', 'M000001', 'S000014', 'SM Bonus Chicken Drumstick | 500g', '87.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481804_-_sm_bonus_packed_chicken_drumstick_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(133, 'P00000133', 'M000001', 'S000014', 'SM Bonus Chicken Liver | 500g', '74.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481809_sm_bonus_chicken_liver_500g.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(134, 'P00000134', 'M000001', 'S000014', 'SM Bonus Chicken Thigh | 500g', '87.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481801_-_sm_bonus_packed_chicken_thigh_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(135, 'P00000135', 'M000001', 'S000014', 'SM Bonus Chicken Wings | 500g', '87.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481798_sm_bonus_chicken_wings_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(136, 'P00000136', 'M000001', 'S000014', 'Magnolia Chicken Fillet Breast | 500g pack', '125.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481718_-magnolia-packed-chicken-breast-fillet-500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(137, 'P00000137', 'M000001', 'S000014', 'Magnolia Packed Chicken Breast | 500g', '83.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481786_-_magnolia_packed_chicken_breast_500g_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(138, 'P00000138', 'M000001', 'S000014', 'Magnolia Packed Chicken Wings | 500g', '88.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481787_magnolia_chicken_wings_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(139, 'P00000139', 'M000001', 'S000014', 'Magnolia Packed Chicken Drumstick | 500g', '83.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481789_-_magnolia_packed_chicken_drumstick_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(140, 'P00000140', 'M000001', 'S000014', 'Magnolia Chicken Station Chicken Giniling | 500g Packed', '116.50', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20481793_-_magnolia_packed_chicken_giniling_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(141, 'P00000141', 'M000001', 'S000015', 'Ocean Fresh Tuna Sashimi | 500g', '367.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20430864-1_1.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(142, 'P00000142', 'M000001', 'S000015', 'JSL Dagupan Daing na Bangus Boneless | 2pcs', '148.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(143, 'P00000143', 'M000001', 'S000015', 'JSL Dagupan Bangus Belly Boneless | 400g 2pcs', '174.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20151394_jsl_dagupan_boneless_bangus_belly_2s.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(144, 'P00000144', 'M000001', 'S000015', 'PSJ Galunggong Large | 450g-500g', '112.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20400286_-_galunggong.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(145, 'P00000145', 'M000001', 'S000015', 'PSJ Tilapia | 350g-438g', '178.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20400270_-_tilapia.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(146, 'P00000146', 'M000001', 'S000015', 'Fisher Farm\'s Shrimp Kurin Peeled | 500g', '285.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20420065_fisherfarms_kurin_raw_peeled_shrimp_500g.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(147, 'P00000147', 'M000001', 'S000015', 'ISC Lucos Squid Large | 800g-1000g', '450.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/2027674_isc_locus_squid_large_.jpg?auto=webp&format=pjpg&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(148, 'P00000148', 'M000001', 'S000015', 'ISC Kasag Cooked | 800g-1000g', '550.00', 'https://smmarkets.ph/media/catalog/product/placeholder/default/Picture_holder_4.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(149, 'P00000149', 'M000001', 'S000015', 'PSJ Pasayan Putian | 450g-500g', '489.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20400283_-_pasayan.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(150, 'P00000150', 'M000001', 'S000015', 'SMI Shrimp | 450g-500g', '249.00', 'https://smmarkets.ph/media/catalog/product/cache/395e06a49d8b9ccdfb523f1bab9b4e2b/2/0/20364033.png?auto=webp&format=png&width=840&height=375&fit=cover', 0, '2022-07-07 19:48:00', '2022-09-25 09:14:56'),
(151, 'P00000151', 'M000002', 'S000001', 'Eq Colors Big Pack 34\'S LARGE', '260.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-big-pack-34s-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(152, 'P00000152', 'M000002', 'S000001', 'Eq Colors Big Pack 38\'S MEDIUM', '260.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-big-pack-38s-medium_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(153, 'P00000153', 'M000002', 'S000001', 'Eq Colors Big Pack 42\'S SMALL', '260.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-big-pack-42s-small_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(154, 'P00000154', 'M000002', 'S000001', 'Eq Colors Big Pack 30\'S EXTRA LARGE', '260.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-big-pack-30s-extra-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(155, 'P00000155', 'M000002', 'S000001', 'Eq Colors Budget Pck 18\'S SMALL', '118.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-budget-pck-18s-small_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(156, 'P00000156', 'M000002', 'S000001', 'Eq Colors Jumbo Pck 54+4\'S LARGE', '378.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-jumbo-pck-544s-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(157, 'P00000157', 'M000002', 'S000001', 'Eq Colors Jumbo Pck 60+4\'S MEDIUM', '378.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-colors-jumbo-pck-604s-medium_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(158, 'P00000158', 'M000002', 'S000001', 'Eq Dry Disposable Econo Pack 32\'S LARGE', '372.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-dry-disposable-econo-pack-32s-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00');
INSERT INTO `products` (`id`, `product_id`, `market_id`, `subcategory_id`, `product_name`, `price`, `image_path`, `is_deleted`, `created_at`, `updated_at`) VALUES
(159, 'P00000159', 'M000002', 'S000001', 'Eq Dry Disposable Econo Pack40\'S SMALL', '372.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-dry-disposable-econo-pack40s-small_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(160, 'P00000160', 'M000002', 'S000001', 'Eq Dry Disposable Econo Pack 28\'S EXTRA LARGE', '372.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/q/eq-dry-disposable-econo-pack-28s-extra-large_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(161, 'P00000161', 'M000002', 'S000002', 'Gerber First Food Apple 80G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/e/gerber-first-food-apple-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(162, 'P00000162', 'M000002', 'S000002', 'Gerber First Food Carrots 80G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/e/gerber-first-food-carrots-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(163, 'P00000163', 'M000002', 'S000002', 'Gerber First Food Squash 80G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/e/gerber-first-food-squash-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(164, 'P00000164', 'M000002', 'S000002', 'Gerber First Food Banana 80G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/e/gerber-first-food-banana-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(165, 'P00000165', 'M000002', 'S000002', 'Milna Baby Cereal Brown Rice&Banana 120G', '65.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/i/milna-baby-cereal-brown-ricebanana-120g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(166, 'P00000166', 'M000002', 'S000002', 'Milna Baby Cereal Chicken Soup & Sweet Corn 130G', '65.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/i/milna-baby-cereal-chick-soupsweet-corn-130g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(167, 'P00000167', 'M000002', 'S000002', 'CERELAC WHEAT BANANA W/ MILK 250G P15 OFF', '155.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10040913---cerelac-wheat-banana-with--milk-250g-p15-off.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(168, 'P00000168', 'M000002', 'S000002', 'CERELAC WHEAT BANANA W/ MILK 120G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10040912---cerelac-wheat-banana-with-milk-120g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(169, 'P00000169', 'M000002', 'S000002', 'CERELAC WHEAT WITH MILK 120G', '80.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10040911-cerelac-wheat-with-milk-120g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(170, 'P00000170', 'M000002', 'S000002', 'CERELAC MIXED FRUITS SOYA 250G', '155.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10040916-cerelac-mixed-fruits-soya-250g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(171, 'P00000171', 'M000002', 'S000003', 'Bonakid 400 G', '745.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/o/bonakid-400-g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(172, 'P00000172', 'M000002', 'S000003', 'Bonakid 1.6 KG', '940.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/o/bonakid-16-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(173, 'P00000173', 'M000002', 'S000003', 'Bonamil 1.2 KG', '759.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/o/bonamil-12-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(174, 'P00000174', 'M000002', 'S000003', 'Bonna Box 1.2 KG', '776.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/o/bonna-box-12-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(175, 'P00000175', 'M000002', 'S000003', 'Enfagrow A+ Lactose Free Three 1.8 KG', '2985.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10116467_enfagrow_a_lactose_free_three_1.8_kg.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(176, 'P00000176', 'M000002', 'S000003', 'Enfagrow A+ Three 1.2Kg 1.5 KG', '1875.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/n/enfagrow-a-three-12kg-15-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(177, 'P00000177', 'M000002', 'S000003', 'Enfamil A+ One 2.4 KG', '3880.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/n/enfamil-a-one-24-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(178, 'P00000178', 'M000002', 'S000003', 'Lactum 0-6 Months 2Kg 2 KG', '1320.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/a/lactum-06-months-2kg-2-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(179, 'P00000179', 'M000002', 'S000003', 'Lactum 1+ Plain 1.2 KG', '812.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/a/lactum-1-plain-12-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(180, 'P00000180', 'M000002', 'S000003', 'Lactum 3+ Plain 1.6 KG', '1050.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/a/lactum-3-plain-16-kg_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(181, 'P00000181', 'M000002', 'S000004', 'MAGNOLIA ALL PURPOSE FLOUR 800G', '101.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10048057_magnolia_all_purpose_flour_800g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(182, 'P00000182', 'M000002', 'S000004', 'MAGNOLIA ALL PURPOSE FLOUR 200G', '33.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10044945_magnolia_all_purpose_flour_200g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(183, 'P00000183', 'M000002', 'S000004', 'Magnolia Pancake Plus W/ Maple Syrup 480G', '94.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia_pancake_plus_w_maple_syrup480g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(184, 'P00000184', 'M000002', 'S000004', 'Ellie Unbleached Flour 1Kg', '92.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10380296_ellie_unbleached_flour_1kg.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(185, 'P00000185', 'M000002', 'S000004', 'HERSHEY\'S COCOA POWDER 226G FR SUGAR', '299.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10318517-hershey_s-cocoa-powder-226g-fr-sugar.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(186, 'P00000186', 'M000002', 'S000004', 'HERSHEYS MILK CHOCOLATE CHIPS 326G', '271.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10102891-hersheys-milk-chocolate-chips-326g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(187, 'P00000187', 'M000002', 'S000004', 'White King All Purpose Flour 800G', '103.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/w/h/white-king-all-purpose-flour-800g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(188, 'P00000188', 'M000002', 'S000004', 'ARM & HAMMER PURE BAKING SODA 32OZ', '142.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10106723-arm--hammer-pure-baking-soda-32oz_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(189, 'P00000189', 'M000002', 'S000004', 'ARM & HAMMER PURE BAKING SODA 16OZ', '87.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10049896armhamerbkingsoda16oz.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(190, 'P00000190', 'M000002', 'S000004', 'HERSHEYS STRAWBERRY SYRUP BOTTLE 623G', '263.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10042394-hersheys-stawberry-syrup-bottle-623g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(191, 'P00000191', 'M000002', 'S000005', 'MAISON ICHIPAN WHOLE WHEAT BREAD 600G', '89.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10304976-maison-ichipan-whole-wheat-bread-600g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(192, 'P00000192', 'M000002', 'S000005', 'MAISON ICHIPAN WHITE BREAD 600G', '79.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10304975-maison-ichipan-white-bread-600g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(193, 'P00000193', 'M000002', 'S000005', 'Neubake Wheaten Bread 480G', '69.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/e/neubake-wheaten-bread-480g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(194, 'P00000194', 'M000002', 'S000005', 'Gardenia High Fiber Wheat Rsn Loaf 400g', '89.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/h/ghigh-fiber-wht-raisin-lof-400g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(195, 'P00000195', 'M000002', 'S000005', 'Gardenia Cheese Buns 250G', '56.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-cheese-buns-250g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(196, 'P00000196', 'M000002', 'S000005', 'Gardenia High Fiber Wheat Raisin Loaf 600g', '115.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-high-fiber-wheat-raisin-loaf-600g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(197, 'P00000197', 'M000002', 'S000005', 'Gardenia Neu Bake White Bread Cholesterol Free 450G', '49.50', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-neu-bake-white-bread-cholesterol-free-450g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(198, 'P00000198', 'M000002', 'S000005', 'Gardenia Soft Delight Pandesal 300G', '50.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-soft-delight-pandesal-300g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(199, 'P00000199', 'M000002', 'S000005', 'Gardenia Black Forest Loaf 400G', '109.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-black-forest-loaf-400g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(200, 'P00000200', 'M000002', 'S000005', 'Gardenia High Fiber Wheat Bread 400G', '65.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/a/gardenia-high-fiber-wheat-bread-400g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(201, 'P00000201', 'M000002', 'S000006', 'Quake Overload Wht Choc 10s 30G', '87.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/q/u/quake-overload-wht-choc-10s-30g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(202, 'P00000202', 'M000002', 'S000006', 'Quake Overload Mocha Butter 10s 30G', '87.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/q/u/quake-overload-mocha-butter-10s-30g_1.jpeg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(203, 'P00000203', 'M000002', 'S000006', 'Quake Bars W/ Vanilla Filling 38G', '82.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/q/u/quake-bars-w-vanilla-filling-38g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(204, 'P00000204', 'M000002', 'S000006', 'Quake Bars W/ Chocolate Filling 38G', '82.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/q/u/quake-bars-w-chocolate-filling-38g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(205, 'P00000205', 'M000002', 'S000006', 'QUAKE OVERLOAD BLACKFOREST CAKE 38G 10\'S', '87.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10043282_quake_overload_blackforest_cake_38g_10_s.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(206, 'P00000206', 'M000002', 'S000006', 'JJ QUAKE LOAD CHOCO STRAWBRY 30G 10\'S', '91.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10043281_jj_quake_load_choco_strawbry_30g_10_s.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(207, 'P00000207', 'M000002', 'S000006', 'Orion Custard Softcake 6 4.87oz', '78.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/o/r/orion-custard-softcake-6-487oz_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(208, 'P00000208', 'M000002', 'S000006', 'Orion Custard Milk Cream 12 9.747oz', '161.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/o/r/orion-custard-milk-cream-12-9747oz_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(209, 'P00000209', 'M000002', 'S000006', 'Orion Custard Cheeseberry 12\'s 282G', '161.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/o/r/orion-custard-cheeseberry-12s-282g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(210, 'P00000210', 'M000002', 'S000006', 'Orion Custard Cheeseberry 12\'s 141G', '84.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/o/r/orion-custard-cheeseberry-12s-141g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(211, 'P00000211', 'M000002', 'S000007', 'MOUNTAIN DEW ICE 600ML', '39.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10285283_mountain_dew_ice_600ml.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(212, 'P00000212', 'M000002', 'S000007', 'Zesto Squiz Orange 1.5L', '66.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/z/e/zesto_squiz_orange_1_5l.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(213, 'P00000213', 'M000002', 'S000007', 'Coke Regular Pet 2L', '90.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/c/o/coke-regular-pet-2l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(214, 'P00000214', 'M000002', 'S000007', '7up Regular Pet 600ML', '39.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/7/u/7up-regular-pet-600ml_3.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(215, 'P00000215', 'M000002', 'S000007', 'Mug Root Beer 2L', '90.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/u/mug-root-beer-2l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(216, 'P00000216', 'M000002', 'S000007', 'CALI CAN ICE 330ML', '35.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10042162_cali_can_ice_330ml.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(217, 'P00000217', 'M000002', 'S000007', 'CALI CAN 330ML', '37.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10042161_cali_can_330ml.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(218, 'P00000218', 'M000002', 'S000007', 'Royal Tru-Orange 2L', '90.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/r/o/royal-truorange-2l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(219, 'P00000219', 'M000002', 'S000007', 'Pepsi Regular Pet 600ML', '39.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/p/e/pepsi-regular-pet-600ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(220, 'P00000220', 'M000002', 'S000007', 'Sprite Pet 1.5L', '78.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/p/sprite-pet-15l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(221, 'P00000221', 'M000002', 'S000008', 'Great Taste White Crema 30g x 25 Polybag', '215.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10327746-great-taste-white-crema-polybag-30g-25s.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(222, 'P00000222', 'M000002', 'S000008', 'Great Taste White Caramel Polybag 30G 25S', '215.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10327745-great-taste-white-caramel-polybag30g-25s.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(223, 'P00000223', 'M000002', 'S000008', 'Great Taste White Polybag 30G 25\'S', '215.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10327744-great-taste-white-polybag-30g-25_s.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(224, 'P00000224', 'M000002', 'S000008', 'Nescafe Classic Double Filter 25G', '21.50', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/e/nescafe-classic-double-filter-25g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(225, 'P00000225', 'M000002', 'S000008', 'Nescafe Decaf Refill 80G', '114.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/e/nescafe-decaf-refill-80g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(226, 'P00000226', 'M000002', 'S000008', 'Lipton Yellow Label Tea 50 Bags', '218.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/i/lipton-yellow-label-100g-50s_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(227, 'P00000227', 'M000002', 'S000008', 'Lipton Green Tea 50 Bags', '440.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/i/lipton-green-tea-bags-original-15g-50sheet_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(228, 'P00000228', 'M000002', 'S000008', 'Twinings Green Tea Pure 2GX25S', '355.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/t/w/twinings-green-tea-pure-2gx25s_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(229, 'P00000229', 'M000002', 'S000008', 'Twinings Green Tea Earl Grey 2GX25S', '345.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/t/w/twinings-green-tea-earl-grey-2gx25s_1.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(230, 'P00000230', 'M000002', 'S000008', 'Twinings English Breakfast 2GX25S', '345.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/t/w/twinings-english-breakfast-2gx25s_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(231, 'P00000231', 'M000002', 'S000009', 'Summit Natural Water 5000ML', '66.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/u/summit-natural-water-5000ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(232, 'P00000232', 'M000002', 'S000009', 'Summit Natural Water 6000ML', '75.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/u/summit-natural-water-6000ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(233, 'P00000233', 'M000002', 'S000009', 'Nature Spring Distilled Water 6.6L', '72.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/a/nature-spring-distilled-water-66l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(234, 'P00000234', 'M000002', 'S000009', 'Nature Spring Distilled Water 10L', '97.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/a/nature_spring_distilled_water_10l.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(235, 'P00000235', 'M000002', 'S000009', 'Le Mineral Water 600ML', '18.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/l/e/le-mineral-water-600ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(236, 'P00000236', 'M000002', 'S000009', 'Evian Natural Mineral Water 500ML', '68.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/v/evian-natural-mineral-water-500ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(237, 'P00000237', 'M000002', 'S000009', 'Aquafina Purified Water 1L', '25.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/a/q/aquafina-purified-water-1l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(238, 'P00000238', 'M000002', 'S000009', 'Absolute Distilled Water 2000ML', '45.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/a/b/absolute-distilled-water-2000ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(239, 'P00000239', 'M000002', 'S000009', 'Absolute Distilled Water 1500ML', '37.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/a/b/absolute-distilled-water-1500ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(240, 'P00000240', 'M000002', 'S000009', 'Absolute Distilled Water 1000ML', '27.50', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/a/b/absolute-distilled-water-1000ml_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(241, 'P00000241', 'M000002', 'S000010', 'Pauls Butter Unsalted 227G', '252.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10372203_pauls_butter_unsalted_227g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(242, 'P00000242', 'M000002', 'S000010', 'Pauls Butter Salted 227G', '252.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10372202_pauls_butter_salted_227g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(243, 'P00000243', 'M000002', 'S000010', 'Emborg Salted Butter 200G', '211.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/m/emborg-salted-butter-200g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(244, 'P00000244', 'M000002', 'S000010', 'MAVEN BUTTER SALTED 225G', '166.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/maven-butter-salted-225g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(245, 'P00000245', 'M000002', 'S000010', 'MAVEN BUTTER UNSALTED 225G', '166.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/maven-butter-unsalted-225g_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(246, 'P00000246', 'M000002', 'S000010', 'Magnolia Gold Unsalted Butter 225G', '173.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia-gold-unsalted-butter-225g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(247, 'P00000247', 'M000002', 'S000010', 'Magnolia Gold Salted 225G', '173.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia-gold-salted-225g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(248, 'P00000248', 'M000002', 'S000010', 'Magnolia Butterlicious 200G For Sale', '105.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia-butterlicious-200g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(249, 'P00000249', 'M000002', 'S000010', 'Dari Creme Classic 100G', '43.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/d/a/dari-creme-classic-100g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(250, 'P00000250', 'M000002', 'S000010', 'Dari Creme Lite 200G', '97.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/d/a/dari-creme-lite-200g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(251, 'P00000251', 'M000002', 'S000011', 'Pauls Cheddar Cheese Reg 12S', '192.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10372205_pauls_cheddar_cheese_reg_12s.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(252, 'P00000252', 'M000002', 'S000011', 'ARLA ORGANIC CREAMCHEESE 150G', '114.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10308733-arla-organic-creamcheese-150g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(253, 'P00000253', 'M000002', 'S000011', 'PARMESAN CHEESE SHREDDED 150G', '269.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10099380_parmesan_cheese_shredded_150g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(254, 'P00000254', 'M000002', 'S000011', 'ANCHOR CHEESE SINGLES 100G', '107.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10202846-anchor-cheese-singles-100g_1.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(255, 'P00000255', 'M000002', 'S000011', 'EMBORG DANISH CHEESE BRIE 125G', '204.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10051916-emborg-danish-cheese-brie-125g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(256, 'P00000256', 'M000002', 'S000011', 'CHIZBOY SHREDDED CHEDDAR 350G', '188.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10199147_chizboy_shredded_cheddar_350g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(257, 'P00000257', 'M000002', 'S000011', 'ARLA NATURAL GOUDA SLICES 14X150G', '214.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10050133_arla_natural_gouda_slices_14x150g.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(258, 'P00000258', 'M000002', 'S000011', 'Emborg Euro Cheese Edam Sliced 150G', '183.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/m/emborg-euro-cheese-edam-sliced-150g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(259, 'P00000259', 'M000002', 'S000011', 'Emborg Danish Mozzarella Cheese 200G', '248.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/m/emborg-danish-mozzarella-cheese-200g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(260, 'P00000260', 'M000002', 'S000011', 'EMBORG DANISH CHEESE CAMEMBERT 125G', '210.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/e/m/emborg-danish-cheese-camemert-125g_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(261, 'P00000261', 'M000002', 'S000012', 'SELECTA FORTIFIED FILLED LOW FAT MILK 24', '38.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10041692-selecta-fortified-filled-low-fat-milk-24_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(262, 'P00000262', 'M000002', 'S000012', 'NESTLE FORTIFIED 1L', '86.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10287865---nestle-fortified-1l.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(263, 'P00000263', 'M000002', 'S000012', 'SOYFRESH SOYA MILK NATURAL 1L', '92.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10048506---soyfresh-soya-milk-natural-1l.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(264, 'P00000264', 'M000002', 'S000012', 'Yakult X5S 80ML', '45.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/y/a/yakult-x5s-80ml_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(265, 'P00000265', 'M000002', 'S000012', 'Selecta Fortified Filled Milk 1L', '85.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/e/selecta-fortified-filled-milk-1l_1.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(266, 'P00000266', 'M000002', 'S000012', 'Selecta Fortified Filled Low Fat Milk 1L', '103.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/s/e/selecta-fortified-filled-low-fat-milk-1l_2.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(267, 'P00000267', 'M000002', 'S000012', 'Nestle Fresh Milk 1L', '112.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/n/e/nestle-fresh-milk-1l_1.jpeg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(268, 'P00000268', 'M000002', 'S000012', 'Milk Magic Sterilized 1L', '85.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/i/milk-magic-sterilized-1l_1.jpeg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(269, 'P00000269', 'M000002', 'S000012', 'Magnolia Fresh Milk 1L', '119.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/m/a/magnolia-fresh-milk-1l_1.jpeg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(270, 'P00000270', 'M000002', 'S000012', 'Cowhead Pure Uht Milk 1L', '111.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/c/o/cowhead-pure-uht-milk-1l_3.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(271, 'P00000271', 'M000002', 'S000013', 'JDC BEEF STEAK CUT', '569.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/e/beef-steak-cut-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(272, 'P00000272', 'M000002', 'S000013', 'JDC BEEF TENDERLOIN', '899.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/e/beef-tenderloin-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(273, 'P00000273', 'M000002', 'S000013', 'JDC BEEF BRISKET', '509.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/e/beef-brisket-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(274, 'P00000274', 'M000002', 'S000013', 'JDC BEEF GROUND REGULAR', '399.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/r/ground-beef-regular-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(275, 'P00000275', 'M000002', 'S000013', 'JDC BEEF TERIYAKI', '529.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/b/e/beef-teriyaki-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(276, 'P00000276', 'M000002', 'S000013', 'JDC PORK MECHADO CUT', '338.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80552591-jdc-pork-mechado-cut.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(277, 'P00000277', 'M000002', 'S000013', 'JDC PORK DICED', '325.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80552590-jdc-pork-diced.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(278, 'P00000278', 'M000002', 'S000013', 'JDC PORK CUBES', '372.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/p/o/pork-cubes-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(279, 'P00000279', 'M000002', 'S000013', 'JDC PORK MENUDO CUT', '335.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/p/o/pork-menudo-cut-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(280, 'P00000280', 'M000002', 'S000013', 'JDC PORK GROUND REGULAR', '288.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/g/r/ground-pork-regular-jdc-kg_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(281, 'P00000281', 'M000002', 'S000014', 'MAGNOLIA READY TO COOK ROASTER SMOKED PEPPER', '263.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80576650_magnolia_rtc_rooster_smoked_pepper.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(282, 'P00000282', 'M000002', 'S000014', 'GEFI CHICKEN DRUMSTICK FROZEN', '212.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80548202_gefi_chicken_drumstick_frozen.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(283, 'P00000283', 'M000002', 'S000014', 'GEFI CHICKEN LEG FROZEN', '209.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80548201_gefi_chicken_leg_frozen.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(284, 'P00000284', 'M000002', 'S000014', 'GEFI CHICKEN ADOBO CUT FROZEN', '205.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80548200_gefi_chicken_adobo_cut_frozen.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(285, 'P00000285', 'M000002', 'S000014', 'BF CHICKEN TINOLA CUT', '219.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80281792_bf_chicken_tinola_cut.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(286, 'P00000286', 'M000002', 'S000014', 'BF CHICKEN SKIN', '165.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80272977_bf_chicken_skin.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(287, 'P00000287', 'M000002', 'S000014', 'BF CHICKEN SOUP PACK', '175.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80272976_bf_chicken_soup_pack.png', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(288, 'P00000288', 'M000002', 'S000014', 'BF CHICKEN ADOBO CUT', '219.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80272973_bf_chicken_adobo_cut.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(289, 'P00000289', 'M000002', 'S000014', 'BF SC 5H THIGH FILLET (0.450-0.500)', '110.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80266507_bf_sc_5h_thigh_fillet_0.450-0.500_.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(290, 'P00000290', 'M000002', 'S000014', 'BF SC 5H BREAST FILLET (0.450-0.500)', '110.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80266506_bf_sc_5h_breast_fillet_0.450-0.500_.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(291, 'P00000291', 'M000002', 'S000015', 'Boneless Bangus Mikisa KG', '358.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113217_mikisa_boneless_bangus_1.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(292, 'P00000292', 'M000002', 'S000015', 'Tilapia Live Mikisa KG', '359.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113202_mikisa_tilapia_live.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(293, 'P00000293', 'M000002', 'S000015', 'Tanigue Steak Mikisa KG', '798.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113199_mikisa_tanigue_steak.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(294, 'P00000294', 'M000002', 'S000015', 'Tawilis Mikisa KG', '178.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113200_mikisa_tawilis.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(295, 'P00000295', 'M000002', 'S000015', 'Tulingan Mikisa KG', '359.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113206_mikisa_tulingan.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(296, 'P00000296', 'M000002', 'S000015', 'MK VANNAMEI SHRIMP PD 71/90 1KG', '649.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80308337_mk_vannamei_shrimp_pd_7190_1kg.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(297, 'P00000297', 'M000002', 'S000015', 'HSW ROBOCRAB CRAB STICKS 500G', '191.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/1/0/10086488_hsw_robocrab_crab_sticks_500g.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(298, 'P00000298', 'M000002', 'S000015', 'Pusit Bisaya Mikisa KG', '648.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113165_mikisa_pusit_bisaya.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(299, 'P00000299', 'M000002', 'S000015', 'Tahong Blanched Mikisa KG', '238.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113191_mikisa_tahong_blanched.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(300, 'P00000300', 'M000002', 'S000015', 'Scallop Meat Mikisa KG', '438.00', 'https://d2t3trus7wwxyy.cloudfront.net/catalog/product/8/0/80113178_mikisa_scallop_meat.jpg', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(301, 'P00000301', 'M000003', 'S000001', 'Pampers Dry Baby Diaper Pants Large 14s', '149.00', 'https://static.go-cery.ph/t/e2bgBY98Rkr7zxp0rxPjPq6ZlKJXG3An.jpg', 0, '2022-07-07 19:48:00', '2022-09-25 10:45:05'),
(302, 'P00000302', 'M000003', 'S000001', 'Pampers Baby Dry Diaper Large 30s', '325.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/506099_448c0114-dfeb-4c19-b683-0ae9214bed3b_236x236.jpg?v=1645661269', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(303, 'P00000303', 'M000003', 'S000001', 'EQ Dry Baby Diaper Jumbo Pack Large 48 diapers', '468.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/161096_ab1ebf66-b6f0-43ae-b090-1d360e76f446_236x236.jpg?v=1656493407', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(304, 'P00000304', 'M000003', 'S000001', 'EQ Baby Diaper Pants Jumbo Pack Large 40s', '321.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/556495_1c7b2f74-13d2-4c1e-89c7-f34ac2d1d144_236x236.jpg?v=1645653481', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(305, 'P00000305', 'M000003', 'S000001', 'EQ Dry Baby Diaper Mega Pack XL 60s', '652.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/354497_3e5f133e-8b08-4323-bc75-d63f92fabf67_236x236.jpg?v=1661533503', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(306, 'P00000306', 'M000003', 'S000001', 'Mamypoko Baby Diaper Extra Soft Large 40s', '629.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/179323_3fceca77-0da8-448c-aa3b-2ad0f3d97421_236x236.jpg?v=1645657356', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(307, 'P00000307', 'M000003', 'S000001', 'EQ Plus Baby Diaper XL 36 Pads', '340.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/451294_a266b16d-2b92-4496-b835-91a8861c5dc4_236x236.jpg?v=1656063940', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(308, 'P00000308', 'M000003', 'S000001', 'EQ Dry Baby Diaper Econo Pack XXL 24s', '313.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/364199_628c96ea-0fbb-4d18-bcee-62845b7c6fad_236x236.jpg?v=1645658620', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(309, 'P00000309', 'M000003', 'S000001', 'EQ Plus Baby Diaper Large 42 Pads', '340.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/451289_57116d19-ee54-46da-9d73-834dfa59bba0_236x236.jpg?v=1656063955', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(310, 'P00000310', 'M000003', 'S000001', 'Happy Baby Diaper Medium 30s', '294.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/560375_742255c2-b084-4e9b-943c-d20ea5ce96b5_236x236.jpg?v=1645652255', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(311, 'P00000311', 'M000003', 'S000002', 'Milna Rusks for Infants Banana 130g', '65.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/526578_268f5581-1229-4a5b-b652-3b4b3c0cf660_236x236.jpg?v=1645637464', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(312, 'P00000312', 'M000003', 'S000002', 'NESTLE CERELAC Baby Food Wheat and Milk 120g', '70.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/329823_661f9f9a-0dd5-40d3-b34e-287a0d82d0ca_236x236.jpg?v=1645632542', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(313, 'P00000313', 'M000003', 'S000002', 'Nestle Cerelac Nutripuffs Cereal-based Snack Orange 50g', '93.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/550496_df8c130b-c6bb-488d-80c2-faca0634ba3d_236x236.jpg?v=1645634921', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(314, 'P00000314', 'M000003', 'S000002', 'Nutridel Infant Cereal Apple Squash and Malunggay 120g', '56.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/439299_a1a58360-2838-447e-ba7b-3457c0a0dd2c_236x236.jpg?v=1645627015', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(315, 'P00000315', 'M000003', 'S000002', 'Milna Dry Cereal for Infants Brown Rice and Banana 120g', '61.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/527437_9c89c869-1d4f-48e3-b4cd-2d83d17f9e9c_236x236.jpg?v=1645622861', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(316, 'P00000316', 'M000003', 'S000002', 'NESTLE CERELAC Baby Food Mixed Vegetables and Soya 120g', '70.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/329822_1decfa7c-b6f3-416b-89d0-ed186eae9472_236x236.jpg?v=1645614037', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(317, 'P00000317', 'M000003', 'S000002', 'GERBER Baby Food Applesauce 80g', '68.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/366583_2128f043-0cf7-4d33-a4e1-1d4df475d03e_236x236.jpg?v=1645611941', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(318, 'P00000318', 'M000003', 'S000002', 'Nutridel Infant Cereal Carrot Green Bean and Sweet Potato 120g', '56.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/439295_c742364c-a6bb-4d3c-a6e1-cede5bea378d_236x236.jpg?v=1645611145', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(319, 'P00000319', 'M000003', 'S000002', 'NESTLE CERELAC Baby Food Rice and Soya 120g', '70.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/329820_e4bdacda-1000-4623-8684-802aac5515e1_236x236.jpg?v=1645611194', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(320, 'P00000320', 'M000003', 'S000002', 'Gerber Baby Food After 6 Months Peas Broccoli Zucchini 125g', '148.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/596937_53be9628-239e-4226-ba2e-77f038e9469c_236x236.jpg?v=1645651760', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(321, 'P00000321', 'M000003', 'S000003', 'Similac Gain School Liquid Milk Drink Vanilla 110ml x 4s', '140.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/676515_5cac93d2-db7a-4206-a7e6-b89343ab7408_236x236.jpg?v=1655980362', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(322, 'P00000322', 'M000003', 'S000003', 'Bonakid Pre-School 3+ for Children Over 3 Years Old Powdered Milk Drink 2.4kg', '1214.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674113_217f7579-9032-4f97-b46e-e03cfeef5dcc_236x236.jpg?v=1651718103', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(323, 'P00000323', 'M000003', 'S000003', 'PediaSure Plus for 3 Years Old and Above Liquid Milk Vanilla 110ml x 4s', '200.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/662100_7d23b63e-1b68-4a62-97f5-0637a1808b5f_236x236.jpg?v=1645659600', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(324, 'P00000324', 'M000003', 'S000003', 'Enfagrow A+ NuraPro Three for 1 to 3 Years Old Powdered Milk 1.8kg', '2336.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/447576_3bd72310-30d7-4a44-b674-620fbe652a42_236x236.jpg?v=1645661082', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(325, 'P00000325', 'M000003', 'S000003', 'Similac Tummicare HW Two for 1 to 3 Years Powdered Milk 1.6kg', '2544.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/585738_17e8bb85-18bb-474c-b01d-2d0e65026d48_236x236.jpg?v=1645660732', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(326, 'P00000326', 'M000003', 'S000003', 'Nestle NAN InfiniPro HW One for 0 to 6 Months Powdered Milk Infant Formula 2.1kg', '3330.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/635878_206188cd-81e8-489d-8c5f-5e97b64a68c2_236x236.jpg?v=1645659711', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(327, 'P00000327', 'M000003', 'S000003', 'Nestle NAN OptiPro Three for 1 to 3 Years Old Powdered Milk 1.8kg', '1945.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/514427_13e088a9-b62d-401c-889a-945c58a8372f_236x236.jpg?v=1645659762', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(328, 'P00000328', 'M000003', 'S000003', 'S-26 Promil Gold Three for 1 to 3 Years Old Powdered Milk 2.4kg', '2841.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/593070_8b0073c7-9fc0-4efd-8f95-45da5595fe47_236x236.jpg?v=1645653746', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(329, 'P00000329', 'M000003', 'S000003', 'Bonakid for 1 to 3 Years Old Powdered Milk 1.6kg', '914.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/400366_67a9a070-3cdb-48d8-affa-a0cc56259b6f_236x236.jpg?v=1645659089', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(330, 'P00000330', 'M000003', 'S000003', 'PediaSure Plus 3+ for 3 Years Old and Above Powdered Milk Chocolate 900g', '1344.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/599722_0b6b6944-43e5-4c43-8f0b-3def5a28ad34_236x236.jpg?v=1645654069', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(331, 'P00000331', 'M000003', 'S000004', 'Naturals Monk Fruit Sweetener 200g', '335.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/667537_a766d842-18a9-4831-867e-846d4e5fca1e_236x236.jpg?v=1648223743', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(332, 'P00000332', 'M000003', 'S000004', 'Magnolia Pancake Waffle Mix 400g', '64.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/335069_2a163393-e28f-44ef-85f3-6776fc29f348_236x236.jpg?v=1645659546', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(333, 'P00000333', 'M000003', 'S000004', 'Comstock Blueberry Pie Filling 21oz', '263.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/138572_4bf55c7f-bb7a-4983-80ab-4f6bc39e1caa_236x236.jpg?v=1645660559', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(334, 'P00000334', 'M000003', 'S000004', 'Maya Hotcake Mix Original 500g', '59.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/110229_c8af36b6-f32c-4b0a-aed4-82849a2081c4_236x236.jpg?v=1645659626', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(335, 'P00000335', 'M000003', 'S000004', 'Healthy You Original Coco Sweetener 1kg', '400.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/388887_7ce5efb9-8c0f-4f33-adb0-d083bb66d4ef_236x236.jpg?v=1645659643', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(336, 'P00000336', 'M000003', 'S000004', 'Langnese Pure Bee Honey Golden Clear 500g', '454.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/543161_693f5d30-974c-4c10-b8ce-4120a50abd66_236x236.jpg?v=1645660982', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(337, 'P00000337', 'M000003', 'S000004', 'Diabetasol Zero Calorie Sweetener 50g', '119.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/437526_9d8cdd28-46f1-4f37-8718-7ef71ef4fc6e_236x236.jpg?v=1645661063', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(338, 'P00000338', 'M000003', 'S000004', 'Maya All Purpose Flour 2KG', '190.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/399055_d6aecc67-3370-4824-bad1-5569499c4c98_236x236.jpg?v=1645660197', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(339, 'P00000339', 'M000003', 'S000004', 'Hermano Brown Sugar 1kg', '74.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/469622_f3b7fd61-b45d-4eef-84d6-68edec22132f_236x236.jpg?v=1645661113', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(340, 'P00000340', 'M000003', 'S000004', 'Healthy You Stevia Powder 30g 30s', '103.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/582622_89e1e23b-6340-4047-97bb-63c04406d920_236x236.jpg?v=1645654389', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(341, 'P00000341', 'M000003', 'S000005', 'Kb Raisin Bread', '68.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568002_ef661d70-6099-4f8a-86ec-e9134747061f_236x236.jpg?v=1661155428', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(342, 'P00000342', 'M000003', 'S000005', 'Kb Open Top', '42.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568007_236x236.jpg?v=1661155409', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(343, 'P00000343', 'M000003', 'S000005', 'Kb Mongo Bread', '40.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568003_236x236.jpg?v=1661155419', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(344, 'P00000344', 'M000003', 'S000005', 'Kb Dinner Roll', '45.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568012_40991601-260e-4644-931d-974b0501cc6d_236x236.jpg?v=1661155513', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(345, 'P00000345', 'M000003', 'S000005', 'Kb Sesame Buns', '60.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568013_154cb2e7-47b0-4653-8f27-7cd2dca3bae8_236x236.jpg?v=1661155503', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(346, 'P00000346', 'M000003', 'S000005', 'Kb Hotdog Rolls', '50.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568016_79a29522-ece8-4bb7-8c22-52bc846da10b_236x236.jpg?v=1661155475', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(347, 'P00000347', 'M000003', 'S000005', 'Kb Pan De Siosa', '28.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568021_11bef887-4be2-4f68-99c6-4c1aab855742_236x236.jpg?v=1661155457', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(348, 'P00000348', 'M000003', 'S000005', 'Kb Close Top', '42.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/567999_b8df4572-a83b-4f8e-bf5e-e70536ca10f1_236x236.jpg?v=1661155437', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(349, 'P00000349', 'M000003', 'S000005', 'Kb Whole Wheat Bread', '60.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568010_236x236.jpg?v=1661155400', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(350, 'P00000350', 'M000003', 'S000005', 'Kb Hamburger Buns', '50.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/568015_fa916285-fb1d-407e-b580-91d38830e95f_236x236.jpg?v=1661155484', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(351, 'P00000351', 'M000003', 'S000006', 'Lemon Square Choo Choo Cake Bites Cheesy Milk 38g', '74.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/427866_c7139e2d-4fc6-4659-92c9-2cd0c06bca0d_236x236.jpg?v=1645659542', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(352, 'P00000352', 'M000003', 'S000006', 'Quake Overload Favorites 38g x 10s', '76.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/447573_def03115-4123-4065-8e84-782a59dfd4f4_236x236.jpg?v=1658222106', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(353, 'P00000353', 'M000003', 'S000006', 'Lemon Square Cheesecake Big 42g x 10s', '87.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/569210_fde02223-d6c5-4bcf-8c37-4db30371506b_236x236.jpg?v=1645655179', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(354, 'P00000354', 'M000003', 'S000006', 'Whatta Tops Mango Graham 35g x 10s', '72.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/527113_ce0619e5-1918-4ffb-9292-5259f9c21317_236x236.jpg?v=1645652286', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(355, 'P00000355', 'M000003', 'S000006', 'Lemon Square Lava Cake Twin Quezo Con Ube 38g x 10s', '68.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/539858_734ad67d-b4d2-45f0-b5ce-98830fd560f1_236x236.jpg?v=1645654678', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(356, 'P00000356', 'M000003', 'S000006', 'Quake Overload Caramel Craze 48g', '76.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/497679_540ba0fe-6cdd-4170-8fa7-5b2f6c5ce3f6_236x236.jpg?v=1645648683', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(357, 'P00000357', 'M000003', 'S000006', 'Lemon Square Whattatops Cookies \'N Cream 36g x 10s', '72.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/508609_ae570ba5-f4f6-41c1-8332-bff777215c62_236x236.jpg?v=1645648875', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(358, 'P00000358', 'M000003', 'S000006', 'Lemon Square Inipit Assorted 18g x 10s', '51.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/207728_ae5a1129-85c4-4760-9d0f-8ec6dcc52cfb_236x236.jpg?v=1645642519', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(359, 'P00000359', 'M000003', 'S000006', 'Lemon Square Choo Choo Cake Bites Choco Vanilla 38g', '74.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/417652_fc5835fc-159d-448b-b5f2-58e46d5a1e8b_236x236.jpg?v=1645638140', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(360, 'P00000360', 'M000003', 'S000006', 'Lemon Square Lava Cake Twin Double Dutch 38g x 10s', '68.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/539855_03975818-5c27-46bc-8e33-ceea8e818d36_236x236.jpg?v=1645635065', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(361, 'P00000361', 'M000003', 'S000007', 'Pepsi Regular Softdrink Can 330ml', '32.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105783_9e93fda1-e882-472a-8286-1241b29746d0_236x236.jpg?v=1645660539', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(362, 'P00000362', 'M000003', 'S000007', 'Zest-O Rootbeer Softdrink Bottle 1.5L', '58.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/159275_f4b653db-28bd-425b-8711-5c64a760502c_236x236.jpg?v=1658117623', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(363, 'P00000363', 'M000003', 'S000007', 'Mountain Dew Softdrink Bottle 2L', '70.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/404636_771afc6f-1b74-409d-b8b2-e2d67edf34ab_236x236.jpg?v=1658117779', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00');
INSERT INTO `products` (`id`, `product_id`, `market_id`, `subcategory_id`, `product_name`, `price`, `image_path`, `is_deleted`, `created_at`, `updated_at`) VALUES
(364, 'P00000364', 'M000003', 'S000007', 'Zest-O Root Beer Softdrink Can 330ml', '28.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/329685_76d84424-96a6-4a54-87a6-b7d1b315426c_236x236.jpg?v=1645656965', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(365, 'P00000365', 'M000003', 'S000007', 'Coke Zero Softdrink Bottle 1.5L', '64.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/352071_e61909d2-2b71-41d3-8626-b0c97b74cf5d_236x236.jpg?v=1658117787', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(366, 'P00000366', 'M000003', 'S000007', 'Coke Regular Softdrink Bottle 2L', '74.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/101149_58e88c6b-9a00-44f8-bd4c-97015d52b0a1_236x236.jpg?v=1658117027', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(367, 'P00000367', 'M000003', 'S000007', 'Mirinda Orange 330ml', '32.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105619_41fd3cff-5df7-4850-a799-d8111a06b0c6_236x236.jpg?v=1645647650', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(368, 'P00000368', 'M000003', 'S000007', 'Pepsi Black Softdrink Can 330ml', '32.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/309397_a4058710-a2ee-4f36-bc82-76c606fc3a26_236x236.jpg?v=1645642489', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(369, 'P00000369', 'M000003', 'S000007', 'Mug Root Beer Softdrink Bottle 1.5L', '32.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/355606_d8ed8bf7-78f4-4173-8c70-f46f3d973ea8_236x236.jpg?v=1658118132', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(370, 'P00000370', 'M000003', 'S000007', 'Pepsi Cola Regular Softdrink Bottle 1.5L', '63.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/141432_b47c6651-e6ea-43d6-9b05-e7f8a66c41e5_236x236.jpg?v=1658117553', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(371, 'P00000371', 'M000003', 'S000008', 'Great Taste Supreme Toffee Hazelnut 26g', '8.35', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674141_77bfb8cc-433f-4965-9b58-bbd5cc5aefed_236x236.jpg?v=1658218088', 0, '2022-07-07 19:48:00', '2022-09-25 05:10:23'),
(372, 'P00000372', 'M000003', 'S000008', 'Great Taste Supreme Black Forest Latte 26g', '8.35', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674140_b9f38386-e78c-4ba1-9925-4278c3699bf8_236x236.jpg?v=1658218092', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(373, 'P00000373', 'M000003', 'S000008', 'NESCAFE CLASSIC Instant Coffee Refill 25g', '20.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/108811_4a57686d-b314-4734-886e-cffa6773f10e_236x236.jpg?v=1645659996', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(374, 'P00000374', 'M000003', 'S000008', 'NESTLE COFFEE-MATE Coffee Creamer 250g Stand-up Pouch', '74.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/514827_b4c0feff-b16d-45db-b479-edea59c5f47c_236x236.jpg?v=1645652000', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(375, 'P00000375', 'M000003', 'S000008', 'NESCAFE Original 3-in-1 Coffee 28g - Pack of 30 Sachets', '201.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/565030_5f24d38a-cb33-495a-9c57-0b9bf6ad105e_236x236.jpg?v=1645654328', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(376, 'P00000376', 'M000003', 'S000008', 'Twining Green Tea Collection 1.7g 20s', '300.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/197875_f9f38fa9-5e02-4f61-abbf-6bf704dad2f7_236x236.jpg?v=1645659499', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(377, 'P00000377', 'M000003', 'S000008', 'Twinings Lemon and Ginger Tea 1.5g 25s', '322.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/197878_6f16a918-0a22-4673-8f79-fd60a9a8612c_236x236.jpg?v=1645660668', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(378, 'P00000378', 'M000003', 'S000008', 'Twinings Pure Green Tea 2g 25s', '322.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/538126_858028c1-3511-47e4-958e-1bcf4489d38e_236x236.jpg?v=1645654669', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(379, 'P00000379', 'M000003', 'S000008', 'Lipton Green Tea 1.5g 10s', '81.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/327457_5136377b-89b9-4b7d-b8e9-bf0413f8f714_236x236.jpg?v=1645646136', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(380, 'P00000380', 'M000003', 'S000008', 'Lipton Green Tea 1.5g 50s', '378.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/327458_e62f135a-4f94-42f1-ae25-33675ea04535_236x236.jpg?v=1659000951', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(381, 'P00000381', 'M000003', 'S000009', 'Le Minerale Mountain Mineral Water 5000ml', '89.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/656492_7ba9acee-f285-4101-8380-06e19aec030c_236x236.jpg?v=1654506239', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(382, 'P00000382', 'M000003', 'S000009', 'Evian Natural Mineral Water 750ml', '129.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/499228_2a017eaf-b14b-4b50-82ce-2c52ccbc7074_236x236.jpg?v=1654572800', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(383, 'P00000383', 'M000003', 'S000009', 'Aquafina Purified Drinking Water 500ml', '13.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/560781_2eb64e26-a89a-409b-81f4-ab96a29a5e98_236x236.jpg?v=1645655279', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(384, 'P00000384', 'M000003', 'S000009', 'Nature\'s Spring Alkaline Water 500ml', '12.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/422454_4e4456a8-7d19-48d9-95ea-7c35effd3ea2_236x236.jpg?v=1645648067', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(385, 'P00000385', 'M000003', 'S000009', 'Nature\'s Spring Purified Drinking Water 1L', '14.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/404200_027a27cf-d134-49fe-a652-2afecf49d754_236x236.jpg?v=1645645672', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(386, 'P00000386', 'M000003', 'S000009', 'B\'lue Z-RO Apple Cucumber Flavored Drink 330ml', '21.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/650622_af1a953f-b581-402a-b3d2-f192b3e45cc9_236x236.jpg?v=1658222474', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(387, 'P00000387', 'M000003', 'S000009', 'Wilkins Distilled Drinking Water 330ml', '12.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/327937_128a312a-5853-4337-b477-7994b5cca6c9_236x236.jpg?v=1645645119', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(388, 'P00000388', 'M000003', 'S000009', 'Le Minerale Mountain Mineral Water 600ml', '13.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/554165_846ac055-7907-4655-aa02-31eb3096940e_236x236.jpg?v=1645645561', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(389, 'P00000389', 'M000003', 'S000009', 'Summit Natural Drinking Water 1500ml', '25.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/100370_4ffd8670-a800-450d-a649-2cddfe4af6bf_236x236.jpg?v=1645645841', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(390, 'P00000390', 'M000003', 'S000009', 'Natures Spring Purified Drinking Water 1.5L', '23.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/404202_b1af85a8-58b3-4ba9-8b0f-bf796617b4cf_236x236.jpg?v=1645642140', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(391, 'P00000391', 'M000003', 'S000010', 'Star Marg Chocolate 250g', '84.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/447811_a4fa10e3-8a1b-404f-b511-aa7c577c54b1_236x236.jpg?v=1645658364', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(392, 'P00000392', 'M000003', 'S000010', 'Star Margarine 1kg', '300.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105692_7185769f-5ca3-4e05-8555-86a8db466ab9_236x236.jpg?v=1645656570', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(393, 'P00000393', 'M000003', 'S000010', 'Pres Ambassador Unsalted Butter 200g', '189.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/536271_c64ce3fc-0f90-46a1-9114-659e58a82d5b_236x236.jpg?v=1645654930', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(394, 'P00000394', 'M000003', 'S000010', 'Dari Cr?me Buttermilk Margarine 100g', '40.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105524_a83663ed-c7f8-4543-9373-a5c6bbfa78a9_236x236.jpg?v=1645647646', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(395, 'P00000395', 'M000003', 'S000010', 'Anchor Salted Mini Dish 10g x 10s', '95.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/334105_01c0c0ea-e680-46f7-82b0-befa43af58a8_236x236.jpg?v=1645642732', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(396, 'P00000396', 'M000003', 'S000010', 'Magnolia Buttercup Margarine 200g', '50.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105554_b6a62bb6-0ccb-4d5e-a441-8123f29c19d8_236x236.jpg?v=1645642907', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(397, 'P00000397', 'M000003', 'S000010', 'Star Margarine classic 30g Twin Pack', '11.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/558714_636f9b7d-6d20-4c27-9269-b3aa3ac63c54_236x236.jpg?v=1645649830', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(398, 'P00000398', 'M000003', 'S000010', 'President Salted Butter 200g', '437.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/160523_04da233f-ac4d-404d-85eb-c91931ac9656_236x236.jpg?v=1645639324', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(399, 'P00000399', 'M000003', 'S000010', 'Star Margarine Sweet Blend 250g', '84.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105716_7f1a2b6a-1509-4489-b7c7-3b6025507404_236x236.jpg?v=1645639704', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(400, 'P00000400', 'M000003', 'S000010', 'Star Classic Margarine 250g', '84.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/105696_cd7b796e-4453-4ab4-96c5-09d8b839dbc5_236x236.jpg?v=1645633351', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(401, 'P00000401', 'M000003', 'S000011', 'Eden Cream Cheese 225g', '137.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674200_43c58159-1158-4c5b-961c-fc684c6824e5_236x236.jpg?v=1662453275', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(402, 'P00000402', 'M000003', 'S000011', 'Eden Cream Cheese Tub 140g', '94.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/674201_e93cc755-ae69-4565-924d-5eac8a8ebe3f_236x236.jpg?v=1662453292', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(403, 'P00000403', 'M000003', 'S000011', 'Eden Cheese Original 430g', '138.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/123186_307c4982-1910-40df-96b8-f2fb7381d3ea_236x236.jpg?v=1645660635', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(404, 'P00000404', 'M000003', 'S000011', 'Danes Cheese 165g', '43.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/390936_7fb8ee07-cf83-4900-b058-db3781b5084d_236x236.jpg?v=1657002790', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(405, 'P00000405', 'M000003', 'S000011', 'Danes Quickmelt Cheese 165g', '73.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/650834_7e95c73d-8057-447b-9dc6-220422080bd3_236x236.jpg?v=1645651350', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(406, 'P00000406', 'M000003', 'S000011', 'Danes Cheese Sweet and Creamy 165g', '55.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/590130_243f50b3-f220-4336-b13b-ee73e19b2547_236x236.jpg?v=1658729095', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(407, 'P00000407', 'M000003', 'S000011', 'Danes Cheese 450g', '126.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/392104_a5bc06c0-25ad-4270-aaec-7b9c7a4b03c2_236x236.jpg?v=1645612746', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(408, 'P00000408', 'M000003', 'S000011', 'Danes Sliced Cheese 90g', '26.60', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/355548_f1999fab-d35b-48c7-887b-067a2b2841a6_236x236.jpg?v=1645612184', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(409, 'P00000409', 'M000003', 'S000011', 'Danes Cheese 35g', '12.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/590131_9316a605-9574-4866-b0e1-345efea0ced5_236x236.jpg?v=1645611616', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(410, 'P00000410', 'M000003', 'S000011', 'Anchor Cheese Singles 100g', '89.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/356528_462114eb-98c1-41ad-95e7-4fd6d3089cc2_236x236.jpg?v=1645611212', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(411, 'P00000411', 'M000003', 'S000012', 'Devondale Full Cream Milk 1Lx2', '176.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/580821_3c9d4784-667e-4d4a-a9f3-0377e3289405_236x236.jpg?v=1659431079', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(412, 'P00000412', 'M000003', 'S000012', 'Vitasoy Plus Milky Vanilla 300ml', '28.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/670747_3877be35-7882-41bc-a572-24cf35a5198c_236x236.jpg?v=1658222746', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(413, 'P00000413', 'M000003', 'S000012', 'Angel Evaporated Filled Milk 410ml', '39.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/161519_52b368fa-be20-4b65-a47c-7f4405f18654_236x236.jpg?v=1645674217', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(414, 'P00000414', 'M000003', 'S000012', 'Alaska Condensada Condensed Creamer Ube Macapuno 300ml', '56.25', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/597622_70e804b8-ce7a-4113-b399-54425af90b2a_236x236.jpg?v=1658905556', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(415, 'P00000415', 'M000003', 'S000012', 'Alaska Evaporada Evaporated Creamer 370ml', '29.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/155556_2e0e44a5-ffe7-4dce-802a-e61efec42b0c_236x236.jpg?v=1645674212', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(416, 'P00000416', 'M000003', 'S000012', 'Alaska Condensada Condensed Creamer 560g', '72.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/575168_98f87907-2be4-4fe6-9cf2-ca432a33474d_236x236.jpg?v=1645674252', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(417, 'P00000417', 'M000003', 'S000012', 'Alaska Condensada Condensed Creamer Sweetened 168ml', '32.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/302484_46b8a100-87c5-41eb-b731-b72639dcc365_236x236.jpg?v=1645674224', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(418, 'P00000418', 'M000003', 'S000012', 'Jersey Sweetened Condensed Creamer 390g', '38.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/456738_a1084145-d8c8-47f2-b3a5-53f60ce3e16f_236x236.jpg?v=1645674244', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(419, 'P00000419', 'M000003', 'S000012', 'Alaska Evaporada Evaporated Creamer 140ml', '16.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/302489_51da8ff8-8610-45ca-819f-c1d7af9f18ab_236x236.jpg?v=1645674228', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(420, 'P00000420', 'M000003', 'S000012', 'Jolly Cow Condensada Sweetened Condensed Creamer 390g', '47.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/433270_0aba1dd8-029e-4fb6-a94c-563175590049_236x236.jpg?v=1645674240', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(421, 'P00000421', 'M000003', 'S000013', 'Robinsons Beef Tapa (Approx. Weight: 500 grams)', '212.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425763_236x236.jpg?v=1647006219', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(422, 'P00000422', 'M000003', 'S000013', 'Robinsons Beef Cubes (Approx. Weight: 500 grams)', '214.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425755_6c1c252d-c69b-4f51-9f7b-ac554cba26ae_236x236.jpg?v=1647002540', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(423, 'P00000423', 'M000003', 'S000013', 'Robinsons Beef Sirloin (Approx. Weight: 500 grams)', '227.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425759_34a8da7b-b299-44f4-964a-48accecfb030_236x236.jpg?v=1647002547', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(424, 'P00000424', 'M000003', 'S000013', 'Robinsons Beef Shank (Approx. Weight: 500 grams)', '152.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425749_33202b50-e536-4cab-a752-b56306a6087b_236x236.jpg?v=1647002494', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(425, 'P00000425', 'M000003', 'S000013', 'Robinsons Regular Ground Beef (Approx. Weight: 500 grams)', '167.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425728_38c8fac6-8b94-4229-be31-5ba80cce37cb_236x236.jpg?v=1647002516', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(426, 'P00000426', 'M000003', 'S000013', 'Robinsons Bacon Strips (Approx. Weight: 500 grams)', '189.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425761_236x236.jpg?v=1647006215', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(427, 'P00000427', 'M000003', 'S000013', 'Robinsons Pork Steak (Approx. Weight: 500 grams)', '141.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425769_d7dc7a19-5588-4ca4-a2d3-4b8ff05cc890_236x236.jpg?v=1647002480', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(428, 'P00000428', 'M000003', 'S000013', 'Robinsons Pork Belly (Approx. Weight: 500 grams)', '174.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425704_baab0aee-70ef-494b-9e18-24ba9717a465_236x236.jpg?v=1647002501', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(429, 'P00000429', 'M000003', 'S000013', 'Robinsons Pork Chop (Approx. Weight: 500 grams)', '143.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425705_e033d9e1-a05d-475b-ae2a-05d657c825bd_236x236.jpg?v=1647002505', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(430, 'P00000430', 'M000003', 'S000013', 'Robinsons Ground Pork Regular (Approx. Weight: 500 grams)', '131.50', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/425708_d7680a81-3e92-459f-9598-0d194f692810_236x236.jpg?v=1647002508', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(431, 'P00000431', 'M000003', 'S000014', 'Magnolia Chicken Giniling (Approx. Weight: 250 grams)', '71.75', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304481_8361928b-fc8d-489c-b628-21a34b31994b_236x236.jpg?v=1654666533', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(432, 'P00000432', 'M000003', 'S000014', 'Robinsons Whole Chicken (Approx. Weight: 1000 grams)', '165.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/306968_14d8e506-4145-4cf2-9f16-f84a86c6861e_236x236.jpg?v=1657595291', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(433, 'P00000433', 'M000003', 'S000014', 'Magnolia Chicken Soup Pack (Approx. Weight: 1000 grams)', '127.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304474_b1948138-5e64-4608-8596-aa3924489f41_236x236.jpg?v=1659602037', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(434, 'P00000434', 'M000003', 'S000014', 'Robinsons Chicken Wings (Approx. Weight: 1000 grams)', '209.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/374968_9520e420-abd3-4001-b546-8bd4663b155f_236x236.jpg?v=1647003652', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(435, 'P00000435', 'M000003', 'S000014', 'Robinsons Chicken Thighs (Approx. Weight: 1000 grams)', '197.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/374969_0bdbf3a1-06e8-48f3-900a-788ab87bb667_236x236.jpg?v=1647003635', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(436, 'P00000436', 'M000003', 'S000014', 'Robinsons Chicken Drumstick (Approx. Weight: 1000 grams)', '204.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/374966_2ea262d2-6290-4ac6-82be-dfb81f02536f_236x236.jpg?v=1647003623', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(437, 'P00000437', 'M000003', 'S000014', 'Robinsons Chicken Breast (Approx. Weight: 1000 grams)', '194.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/374970_a1c8a790-b86a-47c8-97f4-8e11aedc4072_236x236.jpg?v=1647003649', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(438, 'P00000438', 'M000003', 'S000014', 'Magnolia Chicken Quarter Cut (Approx. Weight: 1000 grams)', '205.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304468_518bb419-22ca-487e-8781-264a891ea275_236x236.jpg?v=1657595077', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(439, 'P00000439', 'M000003', 'S000014', 'Magnolia Chicken Adobo Cut (Approx. Weight: 1000 grams)', '220.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304472_1d14ceb7-c3dd-44be-994e-2259b110f2a0_236x236.jpg?v=1659601989', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(440, 'P00000440', 'M000003', 'S000014', 'Magnolia Chicken Tinola Cut (Approx. Weight: 1000 grams)', '220.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/304469_f7e284cf-0e63-40af-8c21-066ac687f5f8_236x236.jpg?v=1657595131', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(441, 'P00000441', 'M000003', 'S000015', 'Galleon Depot Cream Dory Fillet Portion Cut 1kg', '189.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/673171_5ea5054d-2a6c-420e-831b-b4d2dfe64b2b_236x236.jpg?v=1661238312', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(442, 'P00000442', 'M000003', 'S000015', 'FC Penshell Scallop Meat 250g', '119.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/673172_9bd46003-9c57-44f6-b59a-ff8867ffcdaa_236x236.jpg?v=1661238325', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(443, 'P00000443', 'M000003', 'S000015', 'FC Scallop Meat 500g', '599.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/673174_07dec298-c779-49e1-b08a-368b2f56cb3a_236x236.jpg?v=1657010245', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(444, 'P00000444', 'M000003', 'S000015', 'Fishta Nobashi Ebi 26/30', '299.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/534966_22282685-5841-4a03-b2da-d63bf74c247d_236x236.jpg?v=1647002811', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(445, 'P00000445', 'M000003', 'S000015', 'Fishta Bangus Deboned Belly Untrimmed Plain 500g', '262.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/565358_039c6941-cada-4279-88db-c5995a3cfcfa_236x236.jpg?v=1647003373', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(446, 'P00000446', 'M000003', 'S000015', 'Fishta Bangus Deboned Butterfly Fillet; 1 Piece Per Pack 380g Vacuum Packed', '168.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/565357_ab6998a7-98f3-42f3-8b62-f26f37fec69f_236x236.jpg?v=1647003369', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(447, 'P00000447', 'M000003', 'S000015', 'Fishta Ebi Fry Breaded Shrimp 220g', '318.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/530735_a2637134-aec3-4358-8783-28cddd9f4ca9_236x236.jpg?v=1647003388', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(448, 'P00000448', 'M000003', 'S000015', 'Fishta Seafood Mix (Squid Strips, Shrimp, And Scallop) 480g Vacuum Packed', '242.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/515430_9f5c1f3b-2756-43de-932e-253183741b3c_236x236.jpg?v=1647003384', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(449, 'P00000449', 'M000003', 'S000015', 'Fishta White Shrimp Head On, Shell On 280g', '235.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/591125_853172af-e9f9-43ef-ae21-40398eec08bc_236x236.jpg?v=1646390740', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00'),
(450, 'P00000450', 'M000003', 'S000015', 'Fishta Bangus Deboned Belly Untrimmed Marinated 500g', '268.00', 'https://cdn.shopify.com/s/files/1/0260/6877/9066/products/565359_c5352ed4-7d10-4f97-ae9b-2e42e635ff20_236x236.jpg?v=1646390664', 0, '2022-07-07 19:48:00', '2022-07-07 19:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'R1', 'Admin', '2022-07-07 11:48:20', '2022-07-07 11:48:20'),
(2, 'R2', 'Market', '2022-07-07 11:48:20', '2022-07-07 11:48:20'),
(3, 'R3', 'Shopper', '2022-07-07 11:48:20', '2022-07-07 11:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2Azr6xZtQHeiTFeXLTe5nTTHmRQLefD5nDF05iW5', 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36 OPR/91.0.4516.95', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibWZjZHo2QXB2cVRncjVNdE9uejNZc1lwSmZjdXRydzZGQXc2ZU9FQiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc2hvcHBlci9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQzQVB4SlAzM20zMy9mVE5zZzcyaDV1WEIwVGw2SWdnSmllUEpDdkZBSXZWOGJyRlFRS2h0bSI7czo1OiJmbGFzaCI7YTowOnt9fQ==', 1666613654);

-- --------------------------------------------------------

--
-- Table structure for table `shopping_lists`
--

CREATE TABLE `shopping_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `list_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `budget` decimal(9,2) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_lists`
--

INSERT INTO `shopping_lists` (`id`, `list_id`, `email`, `list_name`, `budget`, `total`, `is_deleted`, `is_completed`, `created_at`, `updated_at`) VALUES
(1, 'L00000001', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 1', '200.00', '153.00', 0, 0, '2022-09-18 05:26:13', '2022-09-18 19:44:58'),
(2, 'L00000002', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 2', '500.00', '500.00', 0, 0, '2022-09-18 05:26:14', '2022-09-18 18:53:55'),
(3, 'L00000003', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 3', '500.00', '443.50', 0, 0, '2022-09-18 05:26:14', '2022-09-18 18:55:26'),
(4, 'L00000004', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 4', '500.00', '477.25', 0, 0, '2022-09-18 05:26:14', '2022-09-18 18:57:11'),
(5, 'L00000005', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 5', '500.00', '358.50', 0, 0, '2022-09-18 05:26:14', '2022-09-18 18:58:55'),
(6, 'L00000006', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 6', '1000.00', '748.20', 0, 0, '2022-09-18 05:26:14', '2022-09-18 18:59:47'),
(7, 'L00000007', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 7', '1000.00', '962.00', 0, 0, '2022-09-18 05:26:14', '2022-09-18 19:23:53'),
(8, 'L00000008', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 8', '200.00', '147.50', 0, 0, '2022-09-18 05:26:15', '2022-09-18 19:25:52'),
(9, 'L00000009', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 9', '100.00', '44.50', 0, 0, '2022-09-18 05:26:15', '2022-09-18 19:26:56'),
(10, 'L00000010', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 10', '500.00', '423.00', 0, 0, '2022-09-18 05:26:15', '2022-09-18 19:39:23'),
(11, 'L00000011', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 11', '500.00', '390.00', 0, 0, '2022-09-18 05:26:15', '2022-09-25 10:12:55'),
(12, 'L00000012', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 12', '1000.00', '0.00', 0, 0, '2022-09-18 05:26:15', '2022-09-25 10:13:25'),
(13, 'L00000013', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 13', '500.00', '220.00', 0, 0, '2022-09-18 05:26:15', '2022-09-25 10:14:35'),
(14, 'L00000014', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 14', '600.00', '560.00', 0, 0, '2022-09-18 05:26:15', '2022-09-25 10:15:57'),
(15, 'L00000015', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 15', '500.00', '381.00', 0, 0, '2022-09-18 05:26:16', '2022-09-25 10:16:57'),
(16, 'L00000016', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 16', '600.00', '587.25', 0, 0, '2022-09-18 05:26:16', '2022-09-25 10:34:50'),
(17, 'L00000017', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 17', '500.00', '420.00', 0, 0, '2022-09-18 05:26:16', '2022-09-25 10:35:26'),
(18, 'L00000018', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 18', '500.00', '151.00', 0, 0, '2022-09-18 05:26:16', '2022-09-25 10:38:42'),
(19, 'L00000019', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 19', '1000.00', '619.00', 0, 0, '2022-09-18 05:26:16', '2022-09-25 10:40:51'),
(20, 'L00000020', 'nicky_pemberton@gmail.com', 'Nicky Pemberton\'s List 20', '500.00', '0.00', 0, 0, '2022-09-18 05:26:17', '2022-09-18 05:26:17'),
(21, 'L00000021', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 1', '1000.00', '886.25', 0, 0, '2022-09-18 05:26:17', '2022-09-25 10:50:06'),
(22, 'L00000022', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 2', '1000.00', '511.00', 0, 0, '2022-09-18 05:26:17', '2022-09-25 10:51:16'),
(23, 'L00000023', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 3', '1500.00', '1194.50', 0, 0, '2022-09-18 05:26:17', '2022-09-25 10:51:40'),
(24, 'L00000024', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 4', '500.00', '184.50', 0, 0, '2022-09-18 05:26:17', '2022-09-25 10:52:26'),
(25, 'L00000025', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 5', '500.00', '185.50', 0, 0, '2022-09-18 05:26:17', '2022-09-25 10:53:08'),
(26, 'L00000026', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 6', '500.00', '216.00', 0, 0, '2022-09-18 05:26:17', '2022-09-25 10:55:41'),
(27, 'L00000027', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 7', '500.00', '153.50', 0, 0, '2022-09-18 05:26:18', '2022-09-25 10:56:07'),
(28, 'L00000028', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 8', '500.00', '395.35', 0, 0, '2022-09-18 05:26:18', '2022-09-25 10:56:42'),
(29, 'L00000029', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 9', '500.00', '129.90', 0, 0, '2022-09-18 05:26:18', '2022-09-25 10:57:22'),
(30, 'L00000030', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 10', '500.00', '489.00', 0, 0, '2022-09-18 05:26:18', '2022-09-25 11:04:09'),
(31, 'L00000031', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 11', '1000.00', '613.00', 0, 0, '2022-09-18 05:26:18', '2022-09-25 11:04:56'),
(32, 'L00000032', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 12', '500.00', '490.00', 0, 0, '2022-09-18 05:26:18', '2022-09-25 11:05:36'),
(33, 'L00000033', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 13', '200.00', '155.50', 0, 0, '2022-09-18 05:26:19', '2022-09-25 11:06:08'),
(34, 'L00000034', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 14', '500.00', '485.00', 0, 0, '2022-09-18 05:26:19', '2022-09-25 11:06:37'),
(35, 'L00000035', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 15', '500.00', '384.00', 0, 0, '2022-09-18 05:26:19', '2022-09-25 11:07:19'),
(36, 'L00000036', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 16', '500.00', '403.00', 0, 0, '2022-09-18 05:26:19', '2022-09-25 11:07:43'),
(37, 'L00000037', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 17', '500.00', '314.25', 0, 0, '2022-09-18 05:26:19', '2022-09-25 11:08:07'),
(38, 'L00000038', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 18', '500.00', '410.00', 0, 0, '2022-09-18 05:26:19', '2022-09-25 11:08:50'),
(39, 'L00000039', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 19', '500.00', '454.00', 0, 0, '2022-09-18 05:26:19', '2022-09-25 11:09:21'),
(40, 'L00000040', 'martina_andrew@gmail.com', 'Martina Andrew\'s List 20', '500.00', '375.00', 0, 0, '2022-09-18 05:26:20', '2022-09-25 11:09:52'),
(41, 'L00000041', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 1', '500.00', '351.00', 0, 0, '2022-09-18 05:26:20', '2022-09-25 11:12:13'),
(42, 'L00000042', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 2', '500.00', '276.00', 0, 0, '2022-09-18 05:26:20', '2022-09-25 11:12:34'),
(43, 'L00000043', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 3', '1200.00', '0.00', 0, 0, '2022-09-18 05:26:20', '2022-09-25 11:12:53'),
(44, 'L00000044', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 4', '100.00', '85.50', 0, 0, '2022-09-18 05:26:20', '2022-09-25 11:13:30'),
(45, 'L00000045', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 5', '100.00', '98.00', 0, 0, '2022-09-18 05:26:20', '2022-09-25 11:13:51'),
(46, 'L00000046', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 6', '500.00', '275.00', 0, 0, '2022-09-18 05:26:21', '2022-09-25 11:14:21'),
(47, 'L00000047', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 7', '500.00', '276.00', 0, 0, '2022-09-18 05:26:21', '2022-09-25 11:14:55'),
(48, 'L00000048', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 8', '500.00', '475.00', 0, 0, '2022-09-18 05:26:21', '2022-09-25 11:15:30'),
(49, 'L00000049', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 9', '500.00', '425.00', 0, 0, '2022-09-18 05:26:21', '2022-09-25 11:15:54'),
(50, 'L00000050', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 10', '500.00', '318.00', 0, 0, '2022-09-18 05:26:22', '2022-09-25 11:16:20'),
(51, 'L00000051', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 11', '500.00', '378.00', 0, 0, '2022-09-18 05:26:22', '2022-09-25 11:16:44'),
(52, 'L00000052', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 12', '500.00', '320.00', 0, 0, '2022-09-18 05:26:22', '2022-09-25 11:17:00'),
(53, 'L00000053', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 13', '1500.00', '1490.00', 0, 0, '2022-09-18 05:26:22', '2022-09-25 11:17:33'),
(54, 'L00000054', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 14', '500.00', '383.00', 0, 0, '2022-09-18 05:26:22', '2022-09-25 11:18:09'),
(55, 'L00000055', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 15', '500.00', '415.00', 0, 0, '2022-09-18 05:26:22', '2022-09-25 11:18:33'),
(56, 'L00000056', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 16', '500.00', '326.00', 0, 0, '2022-09-18 05:26:22', '2022-09-25 11:19:07'),
(57, 'L00000057', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 17', '400.00', '216.00', 0, 0, '2022-09-18 05:26:23', '2022-09-25 11:19:48'),
(58, 'L00000058', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 18', '500.00', '430.00', 0, 0, '2022-09-18 05:26:23', '2022-09-25 11:20:09'),
(59, 'L00000059', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 19', '500.00', '375.00', 0, 0, '2022-09-18 05:26:23', '2022-09-25 11:20:37'),
(60, 'L00000060', 'pollyanna_edge@gmail.com', 'Pollyanna Edge\'s List 20', '300.00', '211.00', 0, 0, '2022-09-18 05:26:23', '2022-09-25 11:21:32'),
(61, 'L00000061', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 1', '500.00', '381.50', 0, 0, '2022-09-18 05:26:24', '2022-09-25 11:22:31'),
(62, 'L00000062', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 2', '500.00', '450.00', 0, 0, '2022-09-18 05:26:24', '2022-09-25 11:22:59'),
(63, 'L00000063', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 3', '2500.00', '0.00', 0, 0, '2022-09-18 05:26:24', '2022-09-25 11:23:23'),
(64, 'L00000064', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 4', '500.00', '223.50', 0, 0, '2022-09-18 05:26:24', '2022-09-25 11:23:53'),
(65, 'L00000065', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 5', '150.00', '102.00', 0, 0, '2022-09-18 05:26:24', '2022-09-25 11:24:25'),
(66, 'L00000066', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 6', '500.00', '423.50', 0, 0, '2022-09-18 05:26:24', '2022-09-25 11:25:03'),
(67, 'L00000067', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 7', '500.00', '322.70', 0, 0, '2022-09-18 05:26:25', '2022-09-25 11:25:33'),
(68, 'L00000068', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 8', '500.00', '412.30', 0, 0, '2022-09-18 05:26:25', '2022-09-25 11:26:19'),
(69, 'L00000069', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 9', '200.00', '193.50', 0, 0, '2022-09-18 05:26:26', '2022-09-25 11:26:40'),
(70, 'L00000070', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 10', '500.00', '298.00', 0, 0, '2022-09-18 05:26:26', '2022-09-25 11:26:57'),
(71, 'L00000071', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 11', '500.00', '424.50', 0, 0, '2022-09-18 05:26:26', '2022-09-25 11:27:34'),
(72, 'L00000072', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 12', '500.00', '380.75', 0, 0, '2022-09-18 05:26:26', '2022-09-25 11:28:09'),
(73, 'L00000073', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 13', '500.00', '488.50', 0, 0, '2022-09-18 05:26:26', '2022-09-25 11:28:42'),
(74, 'L00000074', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 14', '500.00', '435.50', 0, 0, '2022-09-18 05:26:27', '2022-09-25 11:29:15'),
(75, 'L00000075', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 15', '500.00', '323.50', 0, 0, '2022-09-18 05:26:27', '2022-09-25 11:30:13'),
(76, 'L00000076', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 16', '500.00', '453.75', 0, 0, '2022-09-18 05:26:28', '2022-09-25 11:30:44'),
(77, 'L00000077', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 17', '500.00', '427.00', 0, 0, '2022-09-18 05:26:28', '2022-09-25 11:31:08'),
(78, 'L00000078', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 18', '500.00', '373.50', 0, 0, '2022-09-18 05:26:28', '2022-09-25 11:31:30'),
(79, 'L00000079', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 19', '200.00', '181.00', 0, 0, '2022-09-18 05:26:29', '2022-09-25 11:32:02'),
(80, 'L00000080', 'safa_kavanagh@gmail.com', 'Safa Kavanagh\'s List 20', '1000.00', '622.00', 0, 0, '2022-09-18 05:26:29', '2022-09-25 11:32:49'),
(81, 'L00000081', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 1', '700.00', '520.00', 0, 0, '2022-09-18 05:26:29', '2022-09-25 11:34:30'),
(82, 'L00000082', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 2', '400.00', '320.00', 0, 0, '2022-09-18 05:26:30', '2022-09-25 11:34:53'),
(83, 'L00000083', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 3', '1100.00', '1050.00', 0, 0, '2022-09-18 05:26:30', '2022-09-25 11:35:30'),
(84, 'L00000084', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 4', '500.00', '449.00', 0, 0, '2022-09-18 05:26:30', '2022-09-25 11:35:57'),
(85, 'L00000085', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 5', '500.00', '448.00', 0, 0, '2022-09-18 05:26:30', '2022-09-25 11:36:36'),
(86, 'L00000086', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 6', '500.00', '326.00', 0, 0, '2022-09-18 05:26:30', '2022-09-25 11:36:52'),
(87, 'L00000087', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 7', '500.00', '360.00', 0, 0, '2022-09-18 05:26:31', '2022-09-25 11:37:18'),
(88, 'L00000088', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 8', '600.00', '563.00', 0, 0, '2022-09-18 05:26:31', '2022-09-25 11:37:51'),
(89, 'L00000089', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 9', '300.00', '276.00', 0, 0, '2022-09-18 05:26:31', '2022-09-25 11:38:44'),
(90, 'L00000090', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 10', '500.00', '451.00', 0, 0, '2022-09-18 05:26:31', '2022-09-25 11:39:12'),
(91, 'L00000091', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 11', '400.00', '228.50', 0, 0, '2022-09-18 05:26:31', '2022-09-25 11:39:48'),
(92, 'L00000092', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 12', '500.00', '301.50', 0, 0, '2022-09-18 05:26:32', '2022-09-25 11:40:29'),
(93, 'L00000093', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 13', '400.00', '340.35', 0, 0, '2022-09-18 05:26:32', '2022-09-25 11:41:16'),
(94, 'L00000094', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 14', '500.00', '337.50', 0, 0, '2022-09-18 05:26:32', '2022-09-25 11:41:41'),
(95, 'L00000095', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 15', '500.00', '423.00', 0, 0, '2022-09-18 05:26:32', '2022-09-25 11:42:01'),
(96, 'L00000096', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 16', '500.00', '396.50', 0, 0, '2022-09-18 05:26:32', '2022-09-25 11:42:24'),
(97, 'L00000097', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 17', '500.00', '474.00', 0, 0, '2022-09-18 05:26:33', '2022-09-25 11:42:50'),
(98, 'L00000098', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 18', '700.00', '680.00', 0, 0, '2022-09-18 05:26:33', '2022-09-25 11:43:23'),
(99, 'L00000099', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 19', '1000.00', '700.50', 0, 0, '2022-09-18 05:26:33', '2022-09-25 11:44:03'),
(100, 'L00000100', 'janae_monaghan@gmail.com', 'Janae Monaghan\'s List 20', '500.00', '413.00', 0, 0, '2022-09-18 05:26:33', '2022-09-25 11:44:30'),
(101, 'L00000101', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 1', '800.00', '780.00', 0, 0, '2022-09-18 05:26:33', '2022-09-25 11:45:20'),
(102, 'L00000102', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 2', '400.00', '320.00', 0, 0, '2022-09-18 05:26:34', '2022-09-25 11:45:52'),
(103, 'L00000103', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 3', '1500.00', '1320.00', 0, 0, '2022-09-18 05:26:34', '2022-09-25 11:46:15'),
(104, 'L00000104', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 4', '500.00', '480.00', 0, 0, '2022-09-18 05:26:34', '2022-09-25 11:46:40'),
(105, 'L00000105', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 5', '300.00', '204.00', 0, 0, '2022-09-18 05:26:34', '2022-09-25 11:47:15'),
(106, 'L00000106', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 6', '500.00', '435.00', 0, 0, '2022-09-18 05:26:34', '2022-09-25 11:47:44'),
(107, 'L00000107', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 7', '500.00', '432.00', 0, 0, '2022-09-18 05:26:35', '2022-09-25 11:48:16'),
(108, 'L00000108', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 8', '500.00', '459.00', 0, 0, '2022-09-18 05:26:35', '2022-09-25 11:48:39'),
(109, 'L00000109', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 9', '600.00', '557.00', 0, 0, '2022-09-18 05:26:35', '2022-09-25 11:49:51'),
(110, 'L00000110', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 10', '500.00', '414.00', 0, 0, '2022-09-18 05:26:36', '2022-09-25 11:50:11'),
(111, 'L00000111', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 11', '250.00', '210.50', 0, 0, '2022-09-18 05:26:36', '2022-09-25 11:50:44'),
(112, 'L00000112', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 12', '500.00', '444.00', 0, 0, '2022-09-18 05:26:36', '2022-09-25 11:51:17'),
(113, 'L00000113', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 13', '500.00', '403.50', 0, 0, '2022-09-18 05:26:36', '2022-09-25 11:52:03'),
(114, 'L00000114', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 14', '300.00', '262.50', 0, 0, '2022-09-18 05:26:36', '2022-09-25 11:52:28'),
(115, 'L00000115', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 15', '700.00', '616.00', 0, 0, '2022-09-18 05:26:37', '2022-09-25 11:53:07'),
(116, 'L00000116', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 16', '100.00', '89.30', 0, 0, '2022-09-18 05:26:37', '2022-09-25 11:53:45'),
(117, 'L00000117', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 17', '200.00', '168.30', 0, 0, '2022-09-18 05:26:37', '2022-09-25 11:54:26'),
(118, 'L00000118', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 18', '250.00', '244.00', 0, 0, '2022-09-18 05:26:37', '2022-09-25 11:55:05'),
(119, 'L00000119', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 19', '1000.00', '914.00', 0, 0, '2022-09-18 05:26:37', '2022-09-25 11:55:55'),
(120, 'L00000120', 'allan_davenport@gmail.com', 'Allan Davenport\'s List 20', '400.00', '338.00', 0, 0, '2022-09-18 05:26:37', '2022-09-25 11:56:23'),
(121, 'L00000121', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 1', '800.00', '744.00', 0, 0, '2022-09-18 05:26:38', '2022-09-25 11:58:01'),
(122, 'L00000122', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 2', '350.00', '310.00', 0, 0, '2022-09-18 05:26:38', '2022-09-25 11:58:31'),
(123, 'L00000123', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 3', '1500.00', '1490.00', 0, 0, '2022-09-18 05:26:38', '2022-09-25 11:58:51'),
(124, 'L00000124', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 4', '550.00', '516.00', 0, 0, '2022-09-18 05:26:38', '2022-09-25 11:59:41'),
(125, 'L00000125', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 5', '500.00', '448.00', 0, 0, '2022-09-18 05:26:39', '2022-09-25 12:00:22'),
(126, 'L00000126', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 6', '410.00', '402.00', 0, 0, '2022-09-18 05:26:39', '2022-09-25 12:01:13'),
(127, 'L00000127', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 7', '505.00', '504.00', 0, 0, '2022-09-18 05:26:39', '2022-09-25 12:02:25'),
(128, 'L00000128', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 8', '500.00', '473.00', 0, 0, '2022-09-18 05:26:39', '2022-09-25 12:02:54'),
(129, 'L00000129', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 9', '500.00', '455.00', 0, 0, '2022-09-18 05:26:41', '2022-09-25 12:03:25'),
(130, 'L00000130', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 10', '300.00', '291.00', 0, 0, '2022-09-18 05:26:41', '2022-09-25 12:04:08'),
(131, 'L00000131', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 11', '210.00', '207.00', 0, 0, '2022-09-18 05:26:41', '2022-09-25 12:05:39'),
(132, 'L00000132', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 12', '300.00', '276.00', 0, 0, '2022-09-18 05:26:41', '2022-09-25 12:06:08'),
(133, 'L00000133', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 13', '3000.00', '2617.50', 0, 0, '2022-09-18 05:26:41', '2022-09-25 12:06:48'),
(134, 'L00000134', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 14', '200.00', '142.50', 0, 0, '2022-09-18 05:26:42', '2022-09-25 12:07:28'),
(135, 'L00000135', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 15', '500.00', '433.00', 0, 0, '2022-09-18 05:26:42', '2022-09-25 12:08:12'),
(136, 'L00000136', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 16', '500.00', '357.00', 0, 0, '2022-09-18 05:26:43', '2022-09-25 12:08:50'),
(137, 'L00000137', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 17', '500.00', '352.50', 0, 0, '2022-09-18 05:26:43', '2022-09-25 12:09:26'),
(138, 'L00000138', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 18', '300.00', '253.50', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:10:59'),
(139, 'L00000139', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 19', '300.00', '236.50', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:11:37'),
(140, 'L00000140', 'nabiha_murray@gmail.com', 'Nabiha Murray\'s List 20', '400.00', '395.75', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:12:08'),
(141, 'L00000141', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 1', '500.00', '443.25', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:13:12'),
(142, 'L00000142', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 2', '500.00', '358.00', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:13:37'),
(143, 'L00000143', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 3', '500.00', '340.00', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:15:23'),
(144, 'L00000144', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 4', '500.00', '331.00', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:15:43'),
(145, 'L00000145', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 5', '500.00', '346.00', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:16:13'),
(146, 'L00000146', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 6', '500.00', '375.00', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:16:35'),
(147, 'L00000147', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 7', '220.00', '215.50', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:17:05'),
(148, 'L00000148', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 8', '200.00', '164.50', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:17:56'),
(149, 'L00000149', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 9', '50.00', '46.75', 0, 0, '2022-09-18 05:26:44', '2022-09-25 12:18:26'),
(150, 'L00000150', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 10', '500.00', '335.00', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:18:51'),
(151, 'L00000151', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 11', '500.00', '378.00', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:20:27'),
(152, 'L00000152', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 12', '500.00', '320.00', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:21:51'),
(153, 'L00000153', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 13', '220.00', '216.00', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:22:31'),
(154, 'L00000154', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 14', '500.00', '452.00', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:23:36'),
(155, 'L00000155', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 15', '700.00', '645.00', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:24:00'),
(156, 'L00000156', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 16', '500.00', '170.00', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:24:36'),
(157, 'L00000157', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 17', '500.00', '450.00', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:25:07'),
(158, 'L00000158', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 18', '500.00', '389.50', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:25:38'),
(159, 'L00000159', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 19', '500.00', '473.60', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:25:58'),
(160, 'L00000160', 'nadeem_beltran@gmail.com', 'Nadeem Beltran\'s List 20', '500.00', '415.50', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:26:24'),
(161, 'L00000161', 'harold_booth@gmail.com', 'Harold Booth\'s List 1', '700.00', '661.25', 0, 0, '2022-09-18 05:26:45', '2022-09-25 12:27:26'),
(162, 'L00000162', 'harold_booth@gmail.com', 'Harold Booth\'s List 2', '320.00', '303.50', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:27:55'),
(163, 'L00000163', 'harold_booth@gmail.com', 'Harold Booth\'s List 3', '2200.00', '2128.00', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:28:28'),
(164, 'L00000164', 'harold_booth@gmail.com', 'Harold Booth\'s List 4', '520.00', '513.25', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:29:01'),
(165, 'L00000165', 'harold_booth@gmail.com', 'Harold Booth\'s List 5', '500.00', '476.00', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:29:35'),
(166, 'L00000166', 'harold_booth@gmail.com', 'Harold Booth\'s List 6', '250.00', '240.50', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:30:16'),
(167, 'L00000167', 'harold_booth@gmail.com', 'Harold Booth\'s List 7', '200.00', '174.00', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:31:47'),
(168, 'L00000168', 'harold_booth@gmail.com', 'Harold Booth\'s List 8', '300.00', '295.50', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:32:47'),
(169, 'L00000169', 'harold_booth@gmail.com', 'Harold Booth\'s List 9', '300.00', '264.75', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:33:39'),
(170, 'L00000170', 'harold_booth@gmail.com', 'Harold Booth\'s List 10', '200.00', '154.60', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:34:04'),
(171, 'L00000171', 'harold_booth@gmail.com', 'Harold Booth\'s List 11', '500.00', '260.00', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:34:36'),
(172, 'L00000172', 'harold_booth@gmail.com', 'Harold Booth\'s List 12', '2000.00', '1875.00', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:34:58'),
(173, 'L00000173', 'harold_booth@gmail.com', 'Harold Booth\'s List 13', '500.00', '470.00', 0, 0, '2022-09-18 05:26:46', '2022-09-25 12:35:36'),
(174, 'L00000174', 'harold_booth@gmail.com', 'Harold Booth\'s List 14', '500.00', '417.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:36:01'),
(175, 'L00000175', 'harold_booth@gmail.com', 'Harold Booth\'s List 15', '300.00', '294.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:36:25'),
(176, 'L00000176', 'harold_booth@gmail.com', 'Harold Booth\'s List 16', '500.00', '438.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:36:43'),
(177, 'L00000177', 'harold_booth@gmail.com', 'Harold Booth\'s List 17', '400.00', '328.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:37:10'),
(178, 'L00000178', 'harold_booth@gmail.com', 'Harold Booth\'s List 18', '500.00', '403.50', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:37:30'),
(179, 'L00000179', 'harold_booth@gmail.com', 'Harold Booth\'s List 19', '250.00', '226.50', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:38:00'),
(180, 'L00000180', 'harold_booth@gmail.com', 'Harold Booth\'s List 20', '400.00', '376.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:38:32'),
(181, 'L00000181', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 1', '500.00', '443.25', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:39:09'),
(182, 'L00000182', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 2', '250.00', '240.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:39:32'),
(183, 'L00000183', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 3', '500.00', '480.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:39:47'),
(184, 'L00000184', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 4', '500.00', '197.50', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:40:08'),
(185, 'L00000185', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 5', '200.00', '152.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:40:32'),
(186, 'L00000186', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 6', '500.00', '375.00', 0, 0, '2022-09-18 05:26:47', '2022-09-25 12:40:56'),
(187, 'L00000187', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 7', '500.00', '280.50', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:41:15'),
(188, 'L00000188', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 8', '500.00', '315.00', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:41:41'),
(189, 'L00000189', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 9', '500.00', '439.00', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:42:02'),
(190, 'L00000190', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 10', '550.00', '532.50', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:42:29'),
(191, 'L00000191', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 11', '500.00', '444.00', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:42:48'),
(192, 'L00000192', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 12', '500.00', '220.50', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:43:07'),
(193, 'L00000193', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 13', '500.00', '352.00', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:43:35'),
(194, 'L00000194', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 14', '500.00', '300.75', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:44:00'),
(195, 'L00000195', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 15', '500.00', '346.00', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:44:24'),
(196, 'L00000196', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 16', '250.00', '233.00', 0, 0, '2022-09-18 05:26:48', '2022-09-25 12:44:45'),
(197, 'L00000197', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 17', '560.00', '552.00', 0, 0, '2022-09-18 05:26:49', '2022-09-25 12:45:18'),
(198, 'L00000198', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 18', '2500.00', '2419.50', 0, 0, '2022-09-18 05:26:49', '2022-09-25 12:45:46'),
(199, 'L00000199', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 19', '200.00', '172.45', 0, 0, '2022-09-18 05:26:49', '2022-09-25 12:46:12'),
(200, 'L00000200', 'teodor_cousins@gmail.com', 'Teodor Cousins\'s List 20', '450.00', '449.00', 0, 0, '2022-09-18 05:26:49', '2022-09-25 12:46:44'),
(201, 'L00000201', 'smarv036@gmail.com', 'Morning Drink', '100.00', '0.00', 0, 0, '2022-10-24 04:03:00', '2022-10-24 04:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategory_id`, `category_id`, `subcategory_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'S000001', 'C000001', 'Diapers & Wipes', 0, '2022-07-07 19:48:20', '2022-09-25 09:26:35'),
(2, 'S000002', 'C000001', 'Food & Nutrition', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(3, 'S000003', 'C000001', 'Formula Milk', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(4, 'S000004', 'C000002', 'Baking Needs', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(5, 'S000005', 'C000002', 'Bread', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(6, 'S000006', 'C000002', 'Cakes', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(7, 'S000007', 'C000003', 'Carbonated Drinks', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(8, 'S000008', 'C000003', 'Coffee & Tea', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(9, 'S000009', 'C000003', 'Water', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(10, 'S000010', 'C000004', 'Butter & Margarine', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(11, 'S000011', 'C000004', 'Cheese', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(12, 'S000012', 'C000004', 'Liquid Milk', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(13, 'S000013', 'C000005', 'Fresh Beef & Pork', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(14, 'S000014', 'C000005', 'Fresh Chicken', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20'),
(15, 'S000015', 'C000005', 'Fresh Seafood', 0, '2022-07-07 19:48:20', '2022-07-07 19:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'R3',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'R1', 'Admin', 'admin@shopculator.com', NULL, '$2y$10$AkolHf0cBRxOdo.crG1AG.DXetFrWTrmvhQcKm2AE7PQJteTsAFE6', NULL, NULL, NULL, 'PWGePmY16B9pslQjfOZgYLKAU0lo2qOUeR61XMuVFpBO689Vewp8C6vqt6d3', NULL, 'profile-photos/PyaKs1ajj6NvuhsgMgnCNFazCLWn4up4yZz1WM00.png', 0, '2022-08-23 01:57:42', '2022-09-13 07:41:19'),
(2, 'R2', 'SM Supermarket Bacolod', 'sm_bacolod@shopculator.com', NULL, '$2y$10$R1lhfxtSJ/66OE9w0/I/xusOxUh4u0N/HrGW.Ml.KQAVXZ9on4fHm', NULL, NULL, NULL, 'zvjCWDYWE3TXf5yYR9bHIKUtuA8xb0hh7LCB0hQgVSQzz8hzBd9X9N3s89SJ', NULL, 'profile-photos/VQ0PKGxCo9MtMxRjQdJWMnqJTZZaSbFhzQIlnsAT.png', 0, '2022-09-12 13:31:44', '2022-10-23 23:51:50'),
(3, 'R2', 'AllDay Supermarket Bacolod', 'allday_bacolod@shopculator.com', NULL, '$2y$10$k3lcEJzJzK.e1DT9g7dJbuxXnR/BjkFub7y/mKsPOG/4AQz6ytRbe', NULL, NULL, NULL, 'kOFv0eL2Wri8KLQKBhC2jhaKwhiw7JISupivfveJrnVs1rWbiX8iSMrAGurg', NULL, 'profile-photos/oIquyFWtNqcDNjlJhrPEznrBE40sYf2XNQSluDAM.png', 0, '2022-09-15 00:52:46', '2022-10-23 23:52:29'),
(4, 'R2', 'Robinsons Supermarket Bacolod', 'rob_bacolod@shopculator.com', NULL, '$2y$10$viMACkRbd0C1ZOBRvD9IgukRY20fFX/hF01iyM0V.tRFmbAj1502q', NULL, NULL, NULL, 'DrdhS8oTwkSjmV80n48pKl0E1zcvUPUlQC3maAHvpurKHDLCdg3HZiyErNtA', NULL, 'profile-photos/iZsJcGc50s8CO1UFAESe9LogIYcs6QVrF0piVmxa.png', 0, '2022-09-15 03:36:23', '2022-10-23 23:52:57'),
(5, 'R3', 'Nicky Pemberton', 'nicky_pemberton@gmail.com', NULL, '$2y$10$uKoAaNO78bdoEqbZ5BovjOODKM7nrqsk8hUu50gYL8LF6gXGCyX6u', NULL, NULL, NULL, 'wS15zHMLVPWVHXMGeCh236sVYT9aZZIsMU7OdHQwCOhMaO8QnbrkvSQL8TLV', NULL, NULL, 0, '2022-09-01 03:32:29', '2022-09-01 03:32:29'),
(6, 'R3', 'Martina Andrew', 'martina_andrew@gmail.com', NULL, '$2y$10$.klwCoqy2tF/A/7r6C9kvuKWoKdW7ZVtDBqvQ2c/TALaGmKk8WW2m', NULL, NULL, NULL, '6XeHxR5uVLuxb6LYUkOEiaBN30lePmjsluWbNH67ebZYufct27NTQOX6owFG', NULL, NULL, 0, '2022-09-02 03:32:59', '2022-09-02 03:32:59'),
(7, 'R3', 'Pollyanna Edge', 'pollyanna_edge@gmail.com', NULL, '$2y$10$y/W022/OJZzTkEUhjN7GVultlfR.AcLgD6zHWFvvBHfGNvWxJnZ4i', NULL, NULL, NULL, 'awBatH0d2Fz2xjXjWxUAIOEdKcbzCgIuOQgCdBJZKkIuqNRSWt8FpwaMX6PN', NULL, NULL, 0, '2022-09-02 03:33:22', '2022-09-02 03:33:22'),
(8, 'R3', 'Safa Kavanagh', 'safa_kavanagh@gmail.com', NULL, '$2y$10$yeAAtrmIbbp46dml4f8rju6OTL.uTZlyvBMicNlaFazuN8IzjC9Lm', NULL, NULL, NULL, 'l0xBtdJV12MMkd423104QprOPHYOiP8DMApFUoG6bGeC7IzTMkkakfa7Az6w', NULL, NULL, 0, '2022-09-03 03:33:47', '2022-09-03 03:33:47'),
(9, 'R3', 'Janae Monaghan', 'janae_monaghan@gmail.com', NULL, '$2y$10$UjH8uCuhXy4AgsEBVqVkyuRUHgV48xU54fwpHxjGXb21N.tzRSpvK', NULL, NULL, NULL, 'VHUjaIjfvomJKiBK6M5yucavhS521kSH77JO2681YaEj0xiKAtodjsn6fIUu', NULL, NULL, 0, '2022-09-04 03:32:01', '2022-09-04 03:32:01'),
(10, 'R3', 'Allan Davenport', 'allan_davenport@gmail.com', NULL, '$2y$10$9VsmTeArVmFDn8MJWO0h0OgXQscoX8w65dROprTKjpVwV88MQrvm6', NULL, NULL, NULL, 'uBfMgYvd6Hf7QiBhIWp6OYrwZOCNkYd3u9pnh3jW7IkyrmhtpOkCzsYjoLyY', NULL, NULL, 0, '2022-09-04 00:08:35', '2022-09-04 00:08:35'),
(11, 'R3', 'Nabiha Murray', 'nabiha_murray@gmail.com', NULL, '$2y$10$mSMHJEqtXc6gjFhQsVUa9OidJ6hz4LCU3Er/9PwkMSGXmbyicIi4.', NULL, NULL, NULL, 'ZF160ehsjcMwVDsoYZ4CYfUsvG9OZpnN0acfQDK348TRyr5Tf8R3iUUBc4KW', NULL, NULL, 0, '2022-09-04 00:09:52', '2022-09-04 00:09:52'),
(12, 'R3', 'Nadeem Beltran', 'nadeem_beltran@gmail.com', NULL, '$2y$10$ycAeg9t6mgwUcNBEo.0qyuum.lknlI1c7NDH7otcesPyxbuHHinmW', NULL, NULL, NULL, 'qbaf0KN7vGmxiBVzzHhxRVqBWNsMNnfO8cm0gvvCulrk7ZrnuASJiTQIoibH', NULL, NULL, 0, '2022-09-05 00:10:20', '2022-09-05 00:10:20'),
(13, 'R3', 'Harold Booth', 'harold_booth@gmail.com', NULL, '$2y$10$ea2xPGRqTGRMkRdxLSRhR.HuRBBsWS5GvndZYQ5Dy620DuYiTN6nm', NULL, NULL, NULL, 'Y21hwmg41oxd2oliunt0NYIynT0QEakHqHPoatmwKxm8NM1tr3adJaOHljbB', NULL, NULL, 0, '2022-09-05 00:10:20', '2022-09-05 00:10:20'),
(14, 'R3', 'Teodor Cousins', 'teodor_cousins@gmail.com', NULL, '$2y$10$7htMSx7cQPVxuklYAG0C..ZW8fs3L7AbDmO4IILq01oAI7RDOtFH2', NULL, NULL, NULL, 'ClltaPmpnFaZFAVe3SzFLvW621lx1PljHgKFNeNqDulIbqgRxMCvZi6WnkaS', NULL, NULL, 0, '2022-09-06 00:10:20', '2022-09-25 04:56:44'),
(15, 'R3', 'Sven Resuelo', 'smarv036@gmail.com', NULL, '$2y$10$3APxJP33m33/fTNsg72h5uXB0Tl6IggJiePJCvFAIvV8brFQQKhtm', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-10-23 23:29:14', '2022-10-23 23:29:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `list_details`
--
ALTER TABLE `list_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `detail_id` (`detail_id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `market_id` (`market_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_id` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shopping_lists`
--
ALTER TABLE `shopping_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `list_id` (`list_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategory_id` (`subcategory_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_details`
--
ALTER TABLE `list_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=547;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shopping_lists`
--
ALTER TABLE `shopping_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `studyjam2022`
--
CREATE DATABASE IF NOT EXISTS `studyjam2022` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `studyjam2022`;

-- --------------------------------------------------------

--
-- Table structure for table `subtopics`
--

CREATE TABLE `subtopics` (
  `id` int(11) NOT NULL,
  `topic_id` bigint(20) NOT NULL,
  `subtopic_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subtopics`
--

INSERT INTO `subtopics` (`id`, `topic_id`, `subtopic_name`) VALUES
(0, 0, 'Arrays'),
(1, 0, 'Data Types'),
(2, 1, 'Select'),
(3, 1, 'Insert'),
(4, 2, 'Strings');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) NOT NULL,
  `topic_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_name`) VALUES
(0, 'PHP'),
(1, 'SQL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subtopics`
--
ALTER TABLE `subtopics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
