-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2019 at 01:51 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_vuejs_spa`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_17_205249_create_statuses_table', 1),
(5, '2019_10_20_194855_create_reviews_table', 2);

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
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'Jon Doe',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT 'Good Work',
  `avater` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'https://placeimg.com/90/90/any',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `description`, `avater`, `created_at`, `updated_at`) VALUES
(1, 'Md Alamin', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Rerum, nihil. Commodi exercitationem quisquam doloremque veniam ex est', 'https://placeimg.com/90/90/any', '2019-10-20 18:00:00', '2019-10-20 18:00:00'),
(2, 'MD AB', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit 2', 'https://placeimg.com/90/90/any?22', '2019-10-20 15:24:20', '2019-10-20 15:24:20'),
(3, 'MD AB2', 'ok ok', 'https://placeimg.com/90/90/any?2', '2019-10-20 16:15:39', '2019-10-20 16:15:39'),
(4, 'Frances M. Brian', 'No depending be convinced in unfeeling he. Excellence she unaffected and too sentiments her. Rooms he doors there ye aware in by shall. Education remainder in so cordially. His remainder and own dejection daughters sportsmen. Is easy took he shed to kind.', 'https://placeimg.com/90/90/any?3', '2019-10-20 16:17:06', '2019-10-20 16:17:06'),
(5, 'Nancy L. Williford', 'Out too the been like hard off. Improve enquire welcome own beloved matters her. As insipidity so mr unsatiable increasing attachment motionless cultivated. Addition mr husbands unpacked occasion he oh. Is unsatiable if projecting boisterous insensible. It recommend be resolving pretended middleton.', 'https://placeimg.com/90/90/any?4', '2019-10-20 16:17:30', '2019-10-20 16:17:30'),
(6, 'Milagro J. Villines', 'In it except to so temper mutual tastes mother. Interested cultivated its continuing now yet are. Out interested acceptance our partiality affronting unpleasant why add. Esteem garden men yet shy course. Consulted up my tolerably sometimes perpetual oh. Expression acceptance imprudence particular had eat unsatiable.', 'https://placeimg.com/90/90/any?5', '2019-10-20 16:17:53', '2019-10-20 16:17:53'),
(7, 'Alejandra P. Farrington', 'Drawings me opinions returned absolute in. Otherwise therefore sex did are unfeeling something. Certain be ye amiable by exposed so. To celebrated estimating excellence do. Coming either suffer living her gay theirs. Furnished do otherwise daughters contented conveying attempted no.', 'https://placeimg.com/90/90/any?6', '2019-10-20 16:18:18', '2019-10-20 16:18:18'),
(8, 'James F. Lane', 'Adieus except say barton put feebly favour him. Entreaties unpleasant sufficient few pianoforte discovered uncommonly ask. Morning cousins amongst in mr weather do neither. Warmth object matter course active law spring six. Pursuit showing tedious unknown winding see had man add.', 'https://placeimg.com/90/90/any?7', '2019-10-20 16:18:41', '2019-10-20 16:18:41'),
(9, 'Willard C. Moye', 'And park eyes too more him. Simple excuse active had son wholly coming number add. Though all excuse ladies rather regard assure yet. If feelings so prospect no as raptures quitting.', 'https://placeimg.com/90/90/any?8', '2019-10-20 16:19:04', '2019-10-20 16:19:04'),
(10, 'Susan G. Starks', 'He difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living.', 'https://placeimg.com/90/90/any?9', '2019-10-20 16:19:32', '2019-10-20 16:19:32'),
(11, 'Marco C. Wisneski', 'Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like.', 'https://placeimg.com/90/90/any?9', '2019-10-20 16:19:54', '2019-10-20 16:19:54'),
(12, 'Melanie P. Touchet', 'Fat new smallness few supposing suspicion two. Course sir people worthy horses add entire suffer. How one dull get busy dare far. At principle perfectly by sweetness do.', 'https://placeimg.com/90/90/any?10', '2019-10-20 16:20:25', '2019-10-20 16:20:25'),
(13, 'Ann F. Lutz', 'Questions explained agreeable preferred strangers too him her son. Set put shyness offices his females him distant. Improve has message besides shy himself cheered however how son. Quick judge other leave ask first chief her.', 'https://placeimg.com/90/90/any?10', '2019-10-20 16:21:06', '2019-10-20 16:21:06'),
(14, 'Nancy N. Tovar', 'Indeed or remark always silent seemed narrow be. Instantly can suffering pretended neglected preferred man delivered. Perhaps fertile brandon do imagine to cordial cottage.', 'https://placeimg.com/90/90/any?11', '2019-10-20 16:21:29', '2019-10-20 16:21:29'),
(15, 'Dora S. Ma', 'Repulsive questions contented him few extensive supported. Of remarkably thoroughly he appearance in. Supposing tolerably applauded or of be. Suffering unfeeling so objection agreeable allowance me of.', 'https://placeimg.com/90/90/any?13', '2019-10-20 16:22:06', '2019-10-20 16:22:06'),
(16, 'Ila D. Long', 'Ask within entire season sex common far who family. As be valley warmth assure on. Park girl they rich hour new well way you. Face ye be me been room we sons fond.', 'https://placeimg.com/90/90/any?14', '2019-10-20 16:22:23', '2019-10-20 16:22:23'),
(17, 'Kenneth L. Ginn', 'Delightful remarkably mr on announcing themselves entreaties favourable. About to in so terms voice at. Equal an would is found seems of. The particular friendship one sufficient terminated frequently themselves.', 'https://placeimg.com/90/90/any?15', '2019-10-20 16:22:53', '2019-10-20 16:22:53'),
(18, 'Pasquale D. Good', 'It more shed went up is roof if loud case. Delay music in lived noise an. Beyond genius really enough passed is up.', 'https://placeimg.com/90/90/any?16', '2019-10-20 16:23:18', '2019-10-20 16:23:18'),
(19, 'Leonard F. Scott', 'Carriage quitting securing be appetite it declared. High eyes kept so busy feel call in. Would day nor ask walls known', 'https://placeimg.com/90/90/any?17', '2019-10-20 16:23:45', '2019-10-20 16:23:45'),
(20, 'Virginia S. Alexander', 'But preserved advantage are but and certainty earnestly enjoyment. Passage weather as up am exposed. And natural related man subject. Eagerness get situation his was delighted.', 'https://placeimg.com/90/90/any?18', '2019-10-20 16:24:04', '2019-10-20 16:24:04'),
(21, 'Bruce L. Fields', 'Do in laughter securing smallest sensible no mr hastened. As perhaps proceed in in brandon of limited unknown greatly.', 'https://placeimg.com/90/90/any?19', '2019-10-20 16:24:22', '2019-10-20 16:24:22'),
(22, 'Bradley M. Smith', 'Distrusts fulfilled happiness unwilling as explained of difficult. No landlord of peculiar ladyship attended if contempt ecstatic. Loud wish made on is am as hard.', 'https://placeimg.com/90/90/any?20', '2019-10-20 16:24:49', '2019-10-20 16:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 12,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'This is my status', '2019-10-17 02:21:50', '2019-10-17 15:21:50'),
(2, 1, 'Secoend Status', '2019-10-17 15:40:21', '2019-10-17 15:40:21'),
(3, 1, 'asdfasdf', '2019-10-18 09:40:30', '2019-10-18 09:40:30'),
(4, 1, 'Add A New Status', '2019-10-18 09:51:40', '2019-10-18 09:51:40'),
(5, 1, 'MD AB IS NOOB GAMMER & CODDER', '2019-10-18 10:00:14', '2019-10-18 10:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Timmothy Thiel', 'garett.okuneva@example.net', '2019-10-17 15:19:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YsS4cixJjM', '2019-10-17 15:19:49', '2019-10-17 15:19:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
