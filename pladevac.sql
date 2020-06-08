-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2020 at 07:21 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pladevac`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `by_user` int(11) NOT NULL,
  `on_user` int(11) NOT NULL,
  `is_read` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_render` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `user_id`, `business_name`, `cover_photo`, `category`, `address`, `email`, `phone_no`, `web_address`, `service_render`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tadec', 'test.jpg', 'Entertainment', '13, folorunsho street', 'egin2k3@gmail.com', '09082544787', NULL, 'Compuer services', '2020-05-27 17:07:51', '2020-05-27 17:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `likes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `follower_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `follower_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, '2020-05-27 17:24:58', '2020-05-27 17:56:53'),
(2, 1, 2, 1, '2020-05-27 17:26:03', '2020-05-27 17:26:03'),
(3, 1, 2, 1, '2020-05-27 17:27:46', '2020-05-27 17:27:46'),
(4, 1, 2, 1, '2020-05-27 17:28:37', '2020-05-27 17:28:37');

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `following_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learns`
--

CREATE TABLE `learns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `media_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 2),
(4, '2019_10_21_120851_create_posts_table', 2),
(5, '2019_10_21_121221_create_posts_data_table', 2),
(6, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(7, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(8, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(9, '2016_06_01_000004_create_oauth_clients_table', 3),
(10, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(11, '2019_11_16_135605_create-likes-table__', 4),
(14, '2014_10_12_000000_create_users_table', 5),
(15, '2019_10_23_094248_create_comments_table', 6),
(16, '2019_11_25_133137_create_followers_table', 6),
(17, '2019_11_27_190628_create_followings_table', 6),
(18, '2020_01_22_094539_create_businesses_table', 6),
(19, '2020_01_22_103259_create_user_infos_table', 6),
(20, '2020_01_22_113639_create_user_friends_families_table', 6),
(21, '2020_01_22_135830_create_learns_table', 6),
(22, '2020_02_04_074456_create_vacations_table', 6),
(23, '2020_02_04_075603_create_vacation_invites_table', 6),
(24, '2020_02_05_072434_create_activities_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('067253defafa5fa398a7cd1b8ec9b48775fa5ac5c90790bb9221045fa6cb4bc2d2ce91948fcfae8f', 1, 3, 'MyApp', '[]', 0, '2019-11-05 09:43:30', '2019-11-05 09:43:30', '2020-11-05 10:43:30'),
('0888686ed4f1e11bf7a57e5df2b4a344ad2d343d97fc8873bd9f0a1b59609d5b05be99356670dcdb', 1, 3, 'MyApp', '[]', 0, '2019-11-07 12:49:11', '2019-11-07 12:49:11', '2020-11-07 13:49:11'),
('115a257c5e80ec5f0fba5353f79da39efe5c7c742f9d40bac5c0dbbbf894b59e29265717e689e3b3', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:19:33', '2019-11-10 15:19:33', '2020-11-10 16:19:33'),
('12ef8a525dfb07304c182878a06a7484c963a9a3c589764c03d0fda807ff1cd3a5f965ccd5cfbd0f', 1, 3, 'MyApp', '[]', 0, '2019-11-06 17:14:38', '2019-11-06 17:14:38', '2020-11-06 18:14:38'),
('153883f68ebd7ce1d35ea0437bb0c4d0e21f1877f96dc999a034702544db099e9b154124b93ea094', 2, 3, 'MyApp', '[]', 0, '2019-10-28 11:20:48', '2019-10-28 11:20:48', '2020-10-28 12:20:48'),
('175e165b12d40fa44311c92184668be4eeaa37adb1a00484adad8ac9f972a91de03e4bb68e39e6a9', 1, 3, 'MyApp', '[]', 0, '2019-10-28 13:41:53', '2019-10-28 13:41:53', '2020-10-28 14:41:53'),
('1c7171be7ebd7b21434398c5c533a927a52bc95cbabc8e95def40d1c49e402a50ba06adee283f1c0', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:19:45', '2019-11-10 15:19:45', '2020-11-10 16:19:45'),
('1c7ea7697d5ae5aae087b0470ea5f4f84409748366d839298d9496bd6fae195e03f289debc06f7ed', 1, 3, 'MyApp', '[]', 1, '2019-10-28 11:31:41', '2019-10-28 11:31:41', '2020-10-28 12:31:41'),
('2591441eb05e919721b09f979b77318126e712641823f205e635be1e2b17227a73186aa5d11f05c4', 1, 3, 'MyApp', '[]', 0, '2019-11-05 12:18:12', '2019-11-05 12:18:12', '2020-11-05 13:18:12'),
('27604e98a69c0023f6040f75d0f883ecb0fccb39fa79d692c72d21508a8df34adb8513306ece88b6', 1, 3, 'MyApp', '[]', 0, '2019-11-06 17:18:24', '2019-11-06 17:18:24', '2020-11-06 18:18:24'),
('2b450f05638495a84de339bc758f7d3d6a322147a981c486bca29418c6a87569a987186e6b421307', 1, 3, 'MyApp', '[]', 0, '2020-05-27 17:07:11', '2020-05-27 17:07:11', '2021-05-27 18:07:11'),
('2f06a9292f7aa214cb9ba1aaad29ddf3346c746854d98705f3f89982fd186ae498012941fee0c6ca', 1, 3, 'MyApp', '[]', 0, '2019-10-31 12:16:44', '2019-10-31 12:16:44', '2020-10-31 13:16:44'),
('30828bc607cbd9b553545c28855adc9825d295566f867f36e08e7815112e7a396c24ecb606db1ce0', 1, 3, 'MyApp', '[]', 0, '2019-11-05 10:37:02', '2019-11-05 10:37:02', '2020-11-05 11:37:02'),
('38ce0b613c6784d2ea059f3085b35fe08c053708667afbb2d86fb4f774cb4e2f3e6d3b77e596f4ae', 1, 3, 'MyApp', '[]', 0, '2019-11-07 12:31:57', '2019-11-07 12:31:57', '2020-11-07 13:31:57'),
('3c5a39ee778305b7bb92ef11eb99c8051b92ee5d3a1359f37bfc8fb409ccd67456449a76d68034fb', 1, 3, 'MyApp', '[]', 0, '2019-11-07 19:28:37', '2019-11-07 19:28:37', '2020-11-07 20:28:37'),
('49bb92313aa3723ba5a22030fd05e362db343bb7a1dc55f1302307ebc70807ff47604d8a20400d9f', 1, 3, 'MyApp', '[]', 0, '2019-11-05 09:46:15', '2019-11-05 09:46:15', '2020-11-05 10:46:15'),
('4a3f3c00f7e2dee6349801cbd175c2a80b95dfbb04f555f0e0c36fdda1ec3658d0842fb77f7203fd', 1, 3, 'MyApp', '[]', 0, '2019-11-07 12:30:15', '2019-11-07 12:30:15', '2020-11-07 13:30:15'),
('50c209a41409b0a4bbafc077558e609bf53bd66f3460c30d2c406ea7d765e312fdf6de64f4c92749', 2, 3, 'MyApp', '[]', 0, '2019-10-28 11:21:36', '2019-10-28 11:21:36', '2020-10-28 12:21:36'),
('57ae2161b3a70aa8877d96f79100403c795a363162ef18a6db8897e60c3769cb6b135bce1e62335a', 1, 3, 'MyApp', '[]', 0, '2019-11-05 09:43:32', '2019-11-05 09:43:32', '2020-11-05 10:43:32'),
('7118d2616a1ef68d08c47c0527c489ecc6b03004a9532505561b99f380bdb1346d3104d8655366d6', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:31:25', '2019-11-10 15:31:25', '2020-11-10 16:31:25'),
('721336241d65a37df92d079283b37792edaf63c7f0f45a9246029d2b94de695a69afba3d1de1fb7d', 1, 3, 'MyApp', '[]', 0, '2019-11-07 12:31:27', '2019-11-07 12:31:27', '2020-11-07 13:31:27'),
('779f1066e4dc0eb4095fb398ba657ddd3234aeed8b7181a820fce77bbf89118581c18beefdd34890', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:30:51', '2019-11-10 15:30:51', '2020-11-10 16:30:51'),
('82310644f8e85a1b59fd12a243a15ecb657be9b691cffee2c7ef9795d5090a4ab378552d922778c1', 1, 3, 'MyApp', '[]', 0, '2019-11-05 09:47:54', '2019-11-05 09:47:54', '2020-11-05 10:47:54'),
('8665b42ab977360f9ea00ed774526a58075d584bad87567c8b6c8da38deaf9b33141e3a5c8456506', 1, 3, 'MyApp', '[]', 0, '2019-10-28 11:26:05', '2019-10-28 11:26:05', '2020-10-28 12:26:05'),
('87fc7105be929e3ba4bc5bac7f074c7a3ed3c51fd06a897b5a6c853bdb2f8fac6fe13d8311771dd0', 1, 3, 'MyApp', '[]', 0, '2019-11-05 10:00:38', '2019-11-05 10:00:38', '2020-11-05 11:00:38'),
('88d8ba7398fe0e8acef433070fdca3e0350ec5f703e18498b05b68dab3a3f420e87983955e7c570a', 1, 3, 'MyApp', '[]', 0, '2019-11-11 21:04:43', '2019-11-11 21:04:43', '2020-11-11 22:04:43'),
('9fca18fa9f09809233ae523f00806b0a5ee7874f7691b4af9c2501342b1eabca6d9f8688988e38eb', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:39:28', '2019-11-10 15:39:28', '2020-11-10 16:39:28'),
('a4fbdb154114abcd9e322cb465fdb4dcf5cbf5c3200ba8f0480b91855d3ef07bd1ef7273442b1217', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:32:52', '2019-11-10 15:32:52', '2020-11-10 16:32:52'),
('a504a1de3ba9490c88aa86c825de76c2bf0794222f53a8bc93e17dc5e8ececca26023f0c5bd966dc', 1, 3, 'MyApp', '[]', 0, '2019-11-07 12:32:29', '2019-11-07 12:32:29', '2020-11-07 13:32:29'),
('aae93168105816d3f74752cc78dc446b6e237c5660ab45e53126b418705b6797f3f80841d04f0874', 2, 3, 'MyApp', '[]', 0, '2020-05-27 17:08:38', '2020-05-27 17:08:38', '2021-05-27 18:08:38'),
('ae1f8ec0f9ef140f50e67b9b8fa55e87dce5fd61ae0ecae6435d661908cea42b4e4f10a2e2c6e659', 1, 3, 'MyApp', '[]', 0, '2019-11-06 17:13:22', '2019-11-06 17:13:22', '2020-11-06 18:13:22'),
('b1b74f0e6eba696caf196fd001f05acf97e07df6e04d26c859eef6ff3fada83868a536fccdee846d', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:33:28', '2019-11-10 15:33:28', '2020-11-10 16:33:28'),
('c1c18aea070b2858df5fc8f70b556416cdfe67ae177f6cefc35c275b8cc2d6a382a4a750cf762873', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:39:12', '2019-11-10 15:39:12', '2020-11-10 16:39:12'),
('c52ddd9d191c968a609e82dd7d43bba4925a810a876557d4ab75b0538cdc3f0c99f24761c87d6f26', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:32:39', '2019-11-10 15:32:39', '2020-11-10 16:32:39'),
('c658af4aa95be9239650a5226e5a6dfedf021af9a7b5c2451e2c1d67d91499b90e833c9e07064bcd', 1, 3, 'MyApp', '[]', 0, '2019-11-11 21:00:59', '2019-11-11 21:00:59', '2020-11-11 22:00:59'),
('c9248591c9034a0267e2fd2a00855f9d63da361f4407b044344ae9c344bd027c34b00881387cb354', 1, 3, 'MyApp', '[]', 0, '2019-11-11 21:04:28', '2019-11-11 21:04:28', '2020-11-11 22:04:28'),
('c949829e592ba8a8fcaa0de027a290751279387f696d7add78910b61e063737d8dd0330f73cc3ff1', 1, 3, 'MyApp', '[]', 0, '2019-11-07 12:33:09', '2019-11-07 12:33:09', '2020-11-07 13:33:09'),
('de447945833a062f1a34be7249496280d29e6679f99ed10f23e9ab128a7ccd7a0cc494da49d1b666', 1, 3, 'MyApp', '[]', 0, '2019-11-10 15:40:45', '2019-11-10 15:40:45', '2020-11-10 16:40:45'),
('e625ac99f85e0a21a8efb00aa22ea5d1a6fc998cddf08e1bf6ff5cc6b79588acb491cde8996946a5', 1, 3, 'MyApp', '[]', 0, '2019-11-11 21:05:01', '2019-11-11 21:05:01', '2020-11-11 22:05:01'),
('e6de74e2748df0923a913b63429ed88c950dbfd6b00b291e6a4f5a7472cfae8232e31c6be5d35c75', 1, 3, 'MyApp', '[]', 0, '2019-11-05 09:10:29', '2019-11-05 09:10:29', '2020-11-05 10:10:29'),
('e83f9bb6150790295c7cbc805e27812bba0762ccbd99f0fc95e6b23e0c1f1dd3ce6d190f564d0dba', 1, 3, 'MyApp', '[]', 0, '2020-05-27 17:06:58', '2020-05-27 17:06:58', '2021-05-27 18:06:58'),
('f23145097951ff81f5d5d6a5126c11d31365ee0c776443969ab6b262572322e86f84259a32f5ec7f', 1, 3, 'MyApp', '[]', 0, '2019-11-06 17:13:30', '2019-11-06 17:13:30', '2020-11-06 18:13:30'),
('f6b4271cb2b72bc6279a6b2e7e7798c4ef6c9a4c9d05eb358f62dfbb7ad3b462d7d699b8e0126edc', 1, 3, 'MyApp', '[]', 0, '2019-10-28 11:26:10', '2019-10-28 11:26:10', '2020-10-28 12:26:10'),
('f9c43f438dbc235b1347383e91d2b4dcca8ee201721c07a6293fecb101bf2052f154affaca29aa68', 1, 3, 'MyApp', '[]', 0, '2019-11-11 21:57:50', '2019-11-11 21:57:50', '2020-11-11 22:57:50'),
('ff817f2282585f93c4b18199ac821365ec80af94b0bee845e560f91532b210f8b1da41ac40909bb7', 1, 3, 'MyApp', '[]', 0, '2019-11-07 17:20:14', '2019-11-07 17:20:14', '2020-11-07 18:20:14');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'lr8OJ5widnoohgypYV2vGEoYaIaM2fadl6zdLV6l', 'http://localhost', 1, 0, 0, '2019-10-28 07:24:07', '2019-10-28 07:24:07'),
(2, NULL, 'Laravel Password Grant Client', '75GvihzEiRfDaD7Hkw84sDhcVCxe8hzyIz4CTdZa', 'http://localhost', 0, 1, 0, '2019-10-28 07:24:07', '2019-10-28 07:24:07'),
(3, NULL, 'Laravel Personal Access Client', 'MFwN1nmXrjZELsDr9h6ReZFjyxJehNXehtufnllB', 'http://localhost', 1, 0, 0, '2019-10-28 07:24:18', '2019-10-28 07:24:18'),
(4, NULL, 'Laravel Password Grant Client', 'AstYPXk31JNiSTC90eqp7TZTekaSVQRxPN0KudA8', 'http://localhost', 0, 1, 0, '2019-10-28 07:24:19', '2019-10-28 07:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-10-28 07:24:07', '2019-10-28 07:24:07'),
(2, 3, '2019-10-28 07:24:19', '2019-10-28 07:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `likes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `likes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(2, 2, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(3, 1, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(4, 2, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(5, 1, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(6, 2, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(7, 1, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(8, 2, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(9, 2, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(10, 1, '0', '2019-10-21 23:00:00', '2019-10-21 23:00:00', NULL),
(18, 1, '0', '2019-11-19 22:29:30', '2019-11-19 22:29:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_data`
--

CREATE TABLE `posts_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `caption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_data`
--

INSERT INTO `posts_data` (`id`, `post_id`, `caption`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'maximize granular users', '1.jpg', NULL, NULL, NULL),
(2, 5, 'target transparent niches', '1.jpg', NULL, NULL, NULL),
(3, 6, 'innovate visionary infrastructures', '1.jpg', NULL, NULL, NULL),
(4, 1, 'productize collaborative e-services', '1.jpg', NULL, NULL, NULL),
(5, 1, 'leverage sticky solutions', '1.jpg', NULL, NULL, NULL),
(6, 9, 'recontextualize distributed relationships', '1.jpg', NULL, NULL, NULL),
(7, 7, 'expedite open-source e-tailers', '1.jpg', NULL, NULL, NULL),
(8, 1, 'target 24/365 web-readiness', '1.jpg', NULL, NULL, NULL),
(9, 2, 'innovate end-to-end paradigms', '1.jpg', NULL, NULL, NULL),
(10, 4, 'maximize compelling bandwidth', '1.jpg', NULL, NULL, NULL),
(11, 4, 'grow sexy supply-chains', '1.jpg', NULL, NULL, NULL),
(12, 6, 'utilize rich architectures', '1.jpg', NULL, NULL, NULL),
(13, 3, 'synergize rich solutions', '1.jpg', NULL, NULL, NULL),
(14, 9, 'innovate B2C convergence', '1.jpg', NULL, NULL, NULL),
(15, 3, 'mesh global experiences', '1.jpg', NULL, NULL, NULL),
(16, 5, 'integrate revolutionary platforms', '1.jpg', NULL, NULL, NULL),
(17, 4, 'syndicate front-end portals', '1.jpg', NULL, NULL, NULL),
(18, 10, 'enable distributed applications', '1.jpg', NULL, NULL, NULL),
(19, 7, 'productize visionary communities', '1.jpg', NULL, NULL, NULL),
(20, 5, 'synergize plug-and-play communities', '1.jpg', NULL, NULL, NULL),
(23, 18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor consequuntur molestiae distinctio sit ratione', '1.jpg', '2019-11-19 22:29:30', '2019-11-19 22:29:30', NULL),
(24, 18, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolor consequuntur molestiae distinctio sit ratione', '2.jpg', '2019-11-19 22:29:30', '2019-11-19 22:29:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_photographer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `is_photographer`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Adesanoye Samson', 'egin2k31@gmail.com', NULL, '$2y$10$Eszg1OvKcjU4YuHKeSlqpeemrIZ1WWMXOdhs3EK0A2jEsKgunz93K', 'egin2k31rihmqsg2r7', '1', 'Female', NULL, '2020-05-27 17:06:58', '2020-05-27 17:06:58'),
(2, 'Adesanoye Samson', 'egin2k311@gmail.com', NULL, '$2y$10$3w87flR7lJMb4ZfN54rOKuFmZ0hw/tarttwRkhFaegidZ9SS66MRS', 'egin2k311sk5ytlhxdk', '1', 'Female', NULL, '2020-05-27 17:08:38', '2020-05-27 17:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `user_friends_families`
--

CREATE TABLE `user_friends_families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_town` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_of_origin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_history` text COLLATE utf8mb4_unicode_ci,
  `work_history` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

CREATE TABLE `vacations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vacation_invites`
--

CREATE TABLE `vacation_invites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vacation_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `businesses_email_unique` (`email`),
  ADD UNIQUE KEY `businesses_phone_no_unique` (`phone_no`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learns`
--
ALTER TABLE `learns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_data`
--
ALTER TABLE `posts_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_friends_families`
--
ALTER TABLE `user_friends_families`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_friends_families_email_unique` (`email`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacation_invites`
--
ALTER TABLE `vacation_invites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `learns`
--
ALTER TABLE `learns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts_data`
--
ALTER TABLE `posts_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_friends_families`
--
ALTER TABLE `user_friends_families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vacations`
--
ALTER TABLE `vacations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vacation_invites`
--
ALTER TABLE `vacation_invites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
