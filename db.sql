-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.11:3306
-- Waktu pembuatan: 22 Jul 2024 pada 05.24
-- Versi server: 10.11.8-MariaDB-cll-lve
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u304475625_profile`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `avatar` varchar(191) NOT NULL,
  `cover` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `taglines` longtext DEFAULT NULL,
  `social_links` longtext DEFAULT NULL,
  `cv` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id`, `name`, `avatar`, `cover`, `email`, `phone`, `address`, `description`, `taglines`, `social_links`, `cv`, `created_at`, `updated_at`) VALUES
(1, 'Desa Wisata Punjulharjo', 'assets/common/img/avatar/H54BIlPVPk_1693327881.jpg', 'assets/common/img/cover/8LupC6OCa9_1692672796.jpg', 'kontak@desawisatapunjulharjo.com', '6289673988491', 'Rembang, Jawa Tengah, Indonesia', 'SELAMAT DATANG DI DESA WISATA PUNJULHARJO! SEBUAH TEMPAT DI MANA SEMANGAT GOTONG ROYONG, KEBERSAMAAN DALAM GUYUB RUKUN, DAN SEMANGAT BERKARYA, MENGALIR DALAM SETIAP ASPEK KEHIDUPANNYA. Terdapat 2 tempat wisata, yaitu Pantai Karang Jahe dan Situs Perahu Kuno', '[\"Karang Jahe Beach\",\"Situs Perahu Kuno\"]', '[{\"title\":\"Gallery\",\"link\":\"https:\\/\\/gallery.desawisatapunjulharjo.com\",\"iconClass\":\"fas fa-ship\"},{\"title\":\"Instagram Situs Perahu Kuno\",\"link\":\"https:\\/\\/www.instagram.com\\/eduparksitusperahukuno\\/\",\"iconClass\":\"fab fa-instagram\"},{\"title\":\"Maps\",\"link\":\"https:\\/\\/goo.gl\\/maps\\/qboKDW7vkNzp7aQBA\",\"iconClass\":\"fas fa-map-marked-alt\"},{\"title\":\"Instagram Karang Jahe Beach\",\"link\":\"https:\\/\\/www.instagram.com\\/karangjahe_beach\\/\",\"iconClass\":\"fab fa-instagram\"},{\"title\":\"Story Map\",\"link\":\"https:\\/\\/storymaps.arcgis.com\\/stories\\/a598ee0e4e07477084f64448d1e0d456\",\"iconClass\":\"fas fa-map-signs\"}]', 'assets/common/cv/default.pdf', '2023-08-03 07:06:29', '2023-10-19 00:31:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$rvzlTbNR8vxO1HFRbIs/0eNDaOnbWZg.5f.6LQg0qe3lWtjGvYhMC', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institution` varchar(191) NOT NULL,
  `period` varchar(191) DEFAULT NULL,
  `degree` varchar(191) DEFAULT NULL,
  `cgpa` varchar(191) DEFAULT NULL,
  `department` varchar(191) DEFAULT NULL,
  `thesis` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `education`
--

INSERT INTO `education` (`id`, `institution`, `period`, `degree`, `cgpa`, `department`, `thesis`, `created_at`, `updated_at`) VALUES
(1, 'University of Colorado Boulder', '2006-2010', 'Bachelor of Science', '4.00 out of 4.00', 'Computer Science & Engineering', 'Web Development Track', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'James Buchanan High School', '2002-2006', 'Technology Magnet Program', '3.75 out of 4.00', NULL, NULL, '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `experiences`
--

CREATE TABLE `experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(191) NOT NULL,
  `period` varchar(191) DEFAULT NULL,
  `position` varchar(191) NOT NULL,
  `details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `experiences`
--

INSERT INTO `experiences` (`id`, `company`, `period`, `position`, `details`, `created_at`, `updated_at`) VALUES
(1, 'ABC LIMITED', '2019-Present', 'Senior Software Engineer', 'Adipisci voluptatem explicabo et corrupti rerum velit est. Sit excepturi modi placeat est.', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'ABC LIMITED', '2017-2019', 'Software Engineer', 'Inventore ut temporibus ratione. Est optio sunt nulla inventore. Ab architecto eveniet inventore facere ut at. Numquam rerum cum optio asperiores reprehenderit consequuntur alias.', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 'XYZ LIMITED', '2015-2017', 'Junior Software Engineer', 'Distinctio illum nihil consequatur ea maiores omnis ipsum. Aut et itaque voluptatem omnis aut. Laborum odio et mollitia voluptatem itaque. Commodi eos unde accusamus laborum accusantium.', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` longtext NOT NULL,
  `replied` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'reply back status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `body`, `replied`, `created_at`, `updated_at`) VALUES
(1, 'Reinhold Kihn', 'carli57@herman.com', 'Possimus cumque qui quis laborum voluptatem.', 'Est totam qui optio odio perspiciatis voluptas ut. Voluptatum voluptas iste nobis aut. Consequatur sint molestias cum animi beatae sint natus.', 0, '2023-07-05 00:38:10', '2023-08-03 07:06:30'),
(2, 'Mrs. Magnolia Ortiz MD', 'clyde.roberts@cormier.com', 'Nihil quia aperiam deserunt non enim expedita exercitationem.', 'Iste amet repudiandae vero ut rerum quo. Et reiciendis aut quidem incidunt debitis qui repellat. Sunt aut porro error deserunt.', 0, '2023-07-28 09:05:06', '2023-08-03 07:06:30'),
(3, 'Unique Harber', 'ycassin@kohler.com', 'Voluptatem vero atque quo nam enim.', 'Dolorum reiciendis ut est adipisci. Sunt nesciunt consequatur nobis cumque.', 0, '2023-07-09 04:01:30', '2023-08-03 07:06:30'),
(4, 'Verona Kshlerin MD', 'runolfsson.finn@gmail.com', 'Quia odio quo qui harum.', 'Excepturi molestias mollitia odio. Aspernatur eligendi dolores vitae autem repellat non perspiciatis incidunt. Voluptatem hic distinctio maiores tenetur.', 1, '2023-07-18 03:17:32', '2023-08-03 07:06:30'),
(5, 'Kris Altenwerth', 'celia35@gmail.com', 'Distinctio maiores et est aliquam.', 'Itaque sit repudiandae similique quis omnis id. In in recusandae quasi dolor. Debitis quidem maxime rem earum sit. Natus fuga provident fuga cum nihil corporis dicta.', 1, '2023-07-17 13:28:53', '2023-08-03 07:06:30'),
(6, 'Adele Ritchie', 'jennifer.blanda@hotmail.com', 'Ea quia modi voluptatem voluptatibus.', 'Placeat cupiditate expedita eum facere provident illo perferendis. Consectetur asperiores eius non consectetur veritatis. Porro ad unde perferendis et autem. Error consequatur similique at qui aut.', 1, '2023-07-27 02:05:02', '2023-08-03 07:06:30'),
(7, 'Bernita Botsford', 'obrekke@marvin.com', 'Impedit odio et ipsam inventore dolorem.', 'Inventore est sequi quas et. Quo recusandae doloribus repellat nulla quam repudiandae velit. Dolorum dolorum harum velit doloribus officia non est id. Dolores tempore eligendi odit ipsum.', 0, '2023-07-12 08:20:39', '2023-08-03 07:06:30'),
(8, 'Osborne Barrows', 'regan10@batz.info', 'Nihil perferendis nesciunt aut at ab libero.', 'Officia eligendi alias ipsam fuga omnis. Voluptatibus dolorem perspiciatis quos est itaque autem. Quis maiores nemo architecto laboriosam.', 0, '2023-07-26 22:53:48', '2023-08-03 07:06:30'),
(9, 'Alexa Oberbrunner', 'tbatz@macejkovic.com', 'Blanditiis doloribus non iure eius ut.', 'Quibusdam iure porro magnam recusandae et. Libero reiciendis cupiditate in.', 0, '2023-07-20 03:59:55', '2023-08-03 07:06:30'),
(10, 'Gage Blick I', 'dicki.jeanette@gutmann.com', 'Illum ut nulla deleniti odio possimus.', 'Sunt id itaque aliquam doloribus. Molestiae error quae nobis quis non ducimus praesentium rem. Perspiciatis dolorem natus ad quaerat ipsam nesciunt nulla.', 0, '2023-07-17 04:54:47', '2023-08-03 07:06:30'),
(11, 'Anita Bashirian', 'sschaden@yahoo.com', 'Voluptatem eos rerum id a deserunt ut.', 'Et corporis porro nesciunt ut nostrum nesciunt architecto. Et nesciunt explicabo quia sint qui tempora atque. Id sunt cumque rem vel dolorem est a.', 1, '2023-07-05 22:59:21', '2023-08-03 07:06:30'),
(12, 'Rhiannon Kautzer', 'dach.molly@hotmail.com', 'Reprehenderit consequatur itaque sint.', 'Cupiditate in illo aut perferendis corrupti quibusdam est. Odit qui veniam eum deserunt neque qui. Id est officia quae quis illum sed id. Deleniti dolorem vero illo earum necessitatibus fugit.', 1, '2023-07-07 06:35:08', '2023-08-03 07:06:30'),
(13, 'Shannon Lebsack', 'thompson.karlee@hotmail.com', 'Voluptas quo nostrum eligendi deleniti consectetur magnam.', 'Non voluptatem corporis consequatur voluptatem libero doloremque est commodi. Quibusdam nobis est nulla suscipit. Dicta deleniti numquam dolor repellat ut soluta sequi. Porro aspernatur est eos ea.', 1, '2023-07-29 18:27:57', '2023-08-03 07:06:30'),
(14, 'Joshua Donnelly', 'stark.leila@hermann.biz', 'Facilis ducimus nam ea iste qui distinctio.', 'Placeat iusto exercitationem assumenda laboriosam aliquam. Vel quia rerum beatae et dolor. Molestiae perspiciatis repellendus impedit molestias.', 0, '2023-07-11 11:50:43', '2023-08-03 07:06:30'),
(15, 'Lilla D\'Amore', 'reid52@gmail.com', 'Et eligendi qui nihil animi inventore placeat.', 'Porro ea quaerat nesciunt laudantium adipisci. Est alias ut voluptatem non aut fugiat saepe.', 0, '2023-07-10 06:16:45', '2023-08-03 07:06:30'),
(16, 'Rubye Schneider', 'kuphal.kirk@romaguera.org', 'Est explicabo dolorem eum adipisci nostrum accusantium quis.', 'Tempora ratione dolorum voluptatem eos voluptatem sint. Est sit sequi voluptatem esse laboriosam. Sint minus voluptatem quae officia quidem ut ut hic.', 1, '2023-07-12 16:46:09', '2023-08-03 07:06:30'),
(17, 'Rollin Bogisich', 'aurelie86@yahoo.com', 'Odit facere dolorem quis sequi optio.', 'Eius iure laudantium et recusandae velit. Velit laborum et et. Culpa molestiae odio recusandae eos qui est. Ullam repellendus dolorum rerum suscipit ab.', 1, '2023-07-19 00:04:47', '2023-08-03 07:06:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_03_16_170627_create_settings_table', 1),
(2, '2021_03_16_170856_create_admins_table', 1),
(3, '2021_03_16_172519_create_about_table', 1),
(4, '2021_03_17_064942_create_admin_password_resets_table', 1),
(5, '2021_04_06_071031_create_portfolio_configs_table', 1),
(6, '2021_04_11_160456_create_education_table', 1),
(7, '2021_04_12_120441_create_skills_table', 1),
(8, '2021_04_13_174019_create_experiences_table', 1),
(9, '2021_04_14_075437_create_projects_table', 1),
(10, '2021_04_14_113222_create_services_table', 1),
(11, '2021_04_15_213517_create_visitors_table', 1),
(12, '2021_04_16_104901_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolio_configs`
--

CREATE TABLE `portfolio_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` int(11) NOT NULL,
  `setting_value` longtext NOT NULL,
  `default_value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `portfolio_configs`
--

INSERT INTO `portfolio_configs` (`id`, `setting_key`, `setting_value`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'rigel', 'procyon', '2023-08-03 07:06:29', '2023-08-03 10:08:26'),
(2, 2, '#795548', '#1890ff', '2023-08-03 07:06:29', '2023-08-17 00:16:27'),
(3, 3, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(4, 4, '0', '0', '2023-08-03 07:06:29', '2023-08-21 20:00:11'),
(5, 5, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(6, 6, '0', '1', '2023-08-03 07:06:29', '2023-08-17 00:19:43'),
(7, 7, '0', '1', '2023-08-03 07:06:29', '2023-08-17 00:21:16'),
(8, 8, '0', '1', '2023-08-03 07:06:29', '2023-08-17 00:21:19'),
(9, 9, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(10, 10, '0', '1', '2023-08-03 07:06:29', '2023-08-18 01:38:36'),
(11, 11, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(12, 12, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(13, 19, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(14, 20, '1', '1', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(15, 13, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(16, 14, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(17, 15, 'Punjulharjo', '', '2023-08-03 07:06:29', '2023-08-29 18:00:05'),
(18, 16, 'KKNT Desa Punjulharjo Rembang', '', '2023-08-03 07:06:29', '2023-08-29 17:50:58'),
(19, 17, 'Punjulharjo, Desa Punjulharjo, Desa Wisata Punjulharjo, Situs Perahu Kuno, Karang Jahe Beach.', '', '2023-08-03 07:06:29', '2023-08-29 17:50:58'),
(20, 18, '', '', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `categories` longtext NOT NULL,
  `thumbnail` text NOT NULL,
  `images` longtext NOT NULL,
  `details` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `title`, `categories`, `thumbnail`, `images`, `details`, `link`, `created_at`, `updated_at`) VALUES
(5, 'Sejarah Situs Perahu Kuno', '[\"Situs Perahu Kuno\"]', 'assets/common/img/projects/1692261800_rOAhmCMPoq.png', '[\"assets\\/common\\/img\\/projects\\/1692261800_rqtbiHyn7H.png\"]', 'Situs Prahu Kuno di temukan oleh warga sabtu 26 Juli 2008 ketika sedang melakukan penggalian untuk tambak garam. Temuan berupa  prahu utuh dan juga di sekitarsitus ditemukan beberapa benda bersejarah selain kapal, yakni 239 pecahan tembikar, 54 tempurung kelapa dan 4 logam pemberat kapal serta kepala arca wanita etnis Tionghoa.Yang keberadaanya sebagian sekarang diBalai Arkeologi Yogyakarta D.I. Yogyakarta.\r\nHasil Rekostruksi  menimpulkan bahwa prahu kuno ada sejak abad ke-7 sampai abad 13 seumuran dengan  kerajaan mataram kuno dan Sriwijaya kesimpulan ini diperkuat dari hasil', 'https://situsperahukuno.com', '2023-08-17 01:43:20', '2023-08-17 01:43:20'),
(6, 'Video Profile Desa', '[\"Karang Jahe Beach\",\"desa punjulharjo\",\"Situs Perahu Kuno\"]', 'assets/common/img/projects/1709209171_3tP7oEUrM4.png', '[\"assets\\/common\\/img\\/projects\\/1709209171_dKodXJUeq6.png\"]', NULL, 'https://www.youtube.com/watch?v=--jw814v-80&t=6s', '2023-08-17 19:46:24', '2024-02-29 12:19:31'),
(7, 'ARTIKEL DAYA DUKUNG DAN DAYA TAMPUNG SITUS PERAHU KUNO', '[\"Situs Perahu Kuno\"]', 'assets/common/img/projects/1692856601_RZU5u1NUKp.png', '[\"assets\\/common\\/img\\/projects\\/1692856601_Yz6GA7v80X.png\"]', 'Artikel ini berisis kajian mengenai daya dukung dan daya tampung wisatawan situs perahu kuno, agar dapat menjadi acuan bagi pengelola dalam menentukan maksimal pengunjung agar tidak merusak lingkungan sekitar karena terlalu banyak pengunjung', 'https://drive.google.com/drive/folders/1fI6dAxq5fnt_EeRVftVuSgGVPcUXU4WW', '2023-08-24 05:56:41', '2023-08-24 05:56:41'),
(8, 'Peta Atraksi Wisata', '[\"Situs Perahu Kuno\"]', 'assets/common/img/projects/1693206867_0SPmQB9XtS.png', '[\"assets\\/common\\/img\\/projects\\/1693206867_XBXKakDbDH.png\"]', 'Berisi peta infografis mengenai rute paket wisata Desa Punjulharjo.', NULL, '2023-08-25 17:43:47', '2023-08-28 07:14:27'),
(9, 'Video pengenalan tanaman hias dari kegiatan reboisasi di Situs Perahu Kuno sebagai penunjang Edupark', '[\"Situs Perahu Kuno\"]', 'assets/common/img/projects/1693013273_85tcnp8ikU.png', '[\"assets\\/common\\/img\\/projects\\/1693013273_u2tgtNBJjG.png\"]', 'Video klasifikasi, penanaman, dan pemeliharaan dari tanaman hias yang ada di situs perahu kuno', 'https://youtu.be/0IeX937_SOI', '2023-08-26 01:27:53', '2023-08-26 01:27:53'),
(10, 'Peta Wisata Punjulharjo', '[\"desa punjulharjo\"]', 'assets/common/img/projects/1693013560_AIjk5xd9z5.png', '[\"assets\\/common\\/img\\/projects\\/1693013560_GATQ5srdSG.png\"]', 'Peta Wisata Punjulharjo digunakan untuk memberikan gambaran kepada para pengunjung mengenai berbagai destinasi wisata yang ada di Desa Punjulharjo', NULL, '2023-08-26 01:32:40', '2023-08-26 01:32:40'),
(11, 'Sejarah Situs Perahu Kuno di Desa Punjulharjo', '[\"Situs Perahu Kuno\"]', 'assets/common/img/projects/1693015805_gX3CUWkeq6.png', '[\"assets\\/common\\/img\\/projects\\/1693015805_nq2GnztaBu.png\"]', 'Menilik Wisata Maritim Rembang, Ini Dia Sejarah Situs Perahu Kuno di Desa Punjulharjo', 'https://www.suaramerdeka.com/jawa-tengah/049795809/menilik-wisata-maritim-rembang-ini-dia-sejarah-situs-perahu-kuno-di-desa-punjulharjo', '2023-08-26 02:10:05', '2023-08-26 02:10:05'),
(12, 'Belajar Situs Perahu Kuno Sekaligus Liburan di Pantai Karang Jahe', '[\"Situs Perahu Kuno\",\"Karang Jahe Beach\"]', 'assets/common/img/projects/1693015948_ZdZJXUFVbc.png', '[\"assets\\/common\\/img\\/projects\\/1693015948_qpVcGeRKOq.png\"]', 'Asyiknya Belajar Situs Perahu Kuno Sekaligus Liburan di Pantai Karang Jahe', 'https://www.portaljateng.id/2023/08/13/asyiknya-belajar-situs-perahu-kuno-sekaligus-liburan-di-pantai-karang-jahe/', '2023-08-26 02:12:28', '2023-08-26 02:12:28'),
(13, 'SEMAK', '[\"Keanekaragaman Hayati\"]', 'assets/common/img/projects/1697675403_uqnrC1tV2t.png', '[\"assets\\/common\\/img\\/projects\\/1697675403_eVnuV8Go7K.png\",\"assets\\/common\\/img\\/projects\\/1697675403_c7IVAiP64O.png\",\"assets\\/common\\/img\\/projects\\/1697675403_CzM56pq7Vq.png\",\"assets\\/common\\/img\\/projects\\/1697675403_9R6UW5mhF1.png\"]', 'FLORA DI DESA PUNJULHARJO\r\n\r\n\r\nSEMAK\r\n\r\nBiduri \r\n\r\n\r\n(Dokumen Pribadi, 2023)\r\nBiduri (Calotropis gigantea) merupakan anggota Famili Apocynaceae yang berhabitus semak dengan tinggi tanaman yang dapat mencapai 3-8 meter. Srikaya memiliki daun berwarna hijau tua dengan susunan daun majemuk, berbentuk lonjong, ujung runcing, panjang sekitar 5-15 cm dan lebar sekitar 2,5-7,5 cm. Bunga Srikaya berwarna putih dan merupakan bunga tunggal yang terletak di ketiak daun. Buah Srikaya memiliki kulit yang kasar dan berbentuk seperti jala, dengan tonjolan-tonjolan. Daging buahnya terdiri dari segmen-segmen yang lembut, yang masing-masing berisi biji yang relatif besar. Buah srikaya biasanya berwarna hijau saat belum matang, dan kemudian berubah menjadi warna kuning atau kecokelatan saat matang. Srikaya dapat hidup pada wilayah tropis dan dapat ditanam pada pekarangan rumah. Buah srikaya biasanya dikonsumsi segar sebagai buah makan atau dibuat olahan makanan lainnya. Daun dan akar pohon srikaya bisa digunakan dalam ramuan herbal untuk berbagai tujuan kesehatan.\r\n\r\nTelang\r\n\r\n(Dokumen Pribadi, 2023)\r\nTelang (Clitoria ternatea) merupakan anggota Famili Fabaceae yang berhabitus semak \r\ndengan tinggi tanaman yang dapat mencapai 1-2 meter. Bunga telang merupakan tanaman merambat dengan daun berbentuk oval, ujung meruncing, tumbuh berjajar secara bergantian di sepanjang batang atau cabang. Bunga telang memiliki bentuk seperti kupu-kupu dengan kelopak yang melengkung ke belakang dan bervariasi dalam warna antara biru, ungu, dan merah muda tergantung pada varietasnya. Warna bunga telang dapat berubah menjadi warna yang berbeda tergantung pada tingkat keasaman atau kebasaan tanah atau air di mana tanaman tumbuh. Bunga telang umumnya tumbuh di daerah tropis dan subtropis di seluruh dunia. Bunga telang dapat ditemukan di hutan terbuka, pinggir jalan, atau ditanam di taman dan pekarangan sebagai tanaman hias. Bunga telang sering digunakan dalam berbagai masakan dan minuman tradisional di beberapa budaya. Bunga telang dapat memberikan warna alami yang indah pada makanan dan minuman, seperti teh atau minuman dingin.\r\n\r\nTapak Dara\r\n\r\n(Dokumen Pribadi, 2023)\r\nTapak dara (Catharanthus roseus) merupakan anggota Famili Apocynaceae yang berhabitus semak dengan tinggi tanaman yang dapat mencapai 25-60 cm. Daun Tapak dara berbentuk oval atau elips dengan tepi yang rata atau sedikit bergerigi, berwarna hijau gelap dan permukaan daun mengkilap. Bunga tapak dara termasuk bunga tunggal yang tumbuh di ketiak daun, berbentuk seperti terompet, mahkota berjumlah 5, warna antara putih, merah muda, ungu, atau merah tergantung pada varietasnya. Tapak dara biasanya dapat ditemukan pada pekarangan umah, tepi jalan, dan perkebunan. Tapak dara sering ditanam sebagai tanaman hias di taman, pot, dan pekarangan karena warna bunga nya yang menarik. Tapak dara memiliki potensi dalam dunia pengobatan tradisonal.\r\n\r\nKirinyuh\r\n\r\n(Dokumen Pribadi, 2023)\r\nKirinyuh (Chromolaena odorata L) merupakan anggota Famili Asteraceae yang berhabitus semak dengan tinggi tanaman yang dapat mencapai 1-3 meter. Tanaman ini bisa tumbuh dalam kelompok yang padat, menciptakan tampilan yang kuat. Daun Kirinyuh merupakan daun tunggal dengan kedudukan daun berhadapan, berbentuk oval atau lanset, ujung dan pangkal runcing, tepi daun berombak, tulang daun menyirip, dan tekstur daun berbulu halus. Bunga Kirinyuh muncul dalam bongkol-bongkol di ujung ranting-ranting, berukuran kecil dan berwarna putih hingga ungu pucat. Kirinyuh hampir dapat ditemukan di berbagai habitat, seperti hutan, kebun, dan pekarangan. Kirinyuh memiliki reputasi sebagai gulma invasif yang dapat menyebar dengan cepat dan mengambil alih area yang tidak terkendali. Ini dapat mengganggu ekosistem asli dan pertanian.\r\n\r\nBeluntas\r\n\r\n(Dokumen Pribadi, 2023)\r\nBeluntas (Pluchea indica) merupakan anggota Famili Asteraceae yang berhabitus semak dengan tinggi tanaman yang dapat mencapai 1-2 meter, dengan batang bergerigi dan cabang-cabangnya bercabang. Daun beluntas merupakan daun tunggal, berbentuk oval, dengan pangkal meruncing dan ujung membulat, tepi bergerigi atau bergigi, dan warna hijau muda sampai gelap. Bunga beluntas merupakan bunga majemuk yang tumbuh pada ujung ranting dan berwarna putih atau ungu pucat. Tanaman beluntas umumnya tumbuh di daerah beriklim hangat dan umumnya ditemukan di dataran rendah hingga sedang dan sering ditemukan di pinggir jalan, tepi sungai, dan daerah terganggu lainnya. Di beberapa budaya, daun dan bagian lain tanaman beluntas telah digunakan dalam pengobatan tradisional untuk berbagai masalah kesehatan, seperti masalah pernapasan dan peradangan. Minyak esensial yang diekstrak dari tanaman ini juga memiliki potensi dalam bidang pengobatan. Di beberapa wilayah, tanaman beluntas dapat menjadi invasif dan mengganggu ekosistem asli.\r\n\r\nKaktus Centong\r\n\r\nKaktus Centong (Opuntia cochenillifera) merupakan tanaman anggota Famili Cactaceae yang tumbuh dengan bentuk yang merimbun. Batangnya datar dan berbentuk oval, seringkali dengan banyak daerah percabangan yang tumbuh dari batang utama. Tanaman ini bisa tumbuh menjadi semak yang cukup besar dan mencapai ketinggian sekitar 1-2 meter. Bunga Cactus centong berukuran kecil hingga sedang yang muncul dari bagian tepi segmen-segmen daun. Bunga ini bisa berwarna kuning atau oranye tergantung pada varietasnya. Buah Kaktus Centong berbentuk seperti buni berwarna merah yang dapat dimakan dan memiliki rasa manis. Kaktus Centong dapat dijumpai pada daerah lahan kering atau gurun. Beberapa varietas Kaktus centong digunakan sebagai tanaman hias, terutama karena bentuk dan warna segmen-segmen daunnya yang menarik.\r\n\r\nBunga Landak\r\n\r\nBunga Landak (Barleria prionitis) merupakan tanaman anggota Famili Acanthaceae yang berhabitus semak. Tanaman ini memiliki batang bercabang dan daun-daun berbentuk lanset yang berduri di tepinya, memberikannya penampilan yang khas. Bunga-bunga Barleria prionitis muncul dalam kelompok-klompok di ujung ranting-ranting, dengan kelopak merah atau ungu cerah yang mencolok. Tanaman ini memiliki nilai dalam pengobatan tradisional, terutama dalam pengobatan Ayurveda dan Unani, dengan bagian tanamannya digunakan untuk meredakan masalah kesehatan seperti peradangan dan gangguan kulit. Meskipun memiliki manfaat medis, perlu diingat bahwa penggunaan tanaman ini untuk tujuan pengobatan harus didukung oleh penelitian yang lebih mendalam dan konsultasi dengan ahli medis yang kompeten. \r\n\r\nGandarusa\r\n\r\n(Dokumentasi Pribadi, 2023)\r\nGandarusa (Justicia gendarussa Burm.f.) merupakan tanaman anggota Famili Acanthaceae yang berhabitus Semak. Tanaman ini memiliki daun berbentuk mirip dengan daun willow, dengan tepi bergerigi dan ujung meruncing. Bunga-bunga gandarussa muncul dalam kelompok-klompok di ujung ranting-ranting, dengan kelopak berwarna putih atau krim dan mahkota berwarna merah atau ungu. Beberapa bagian tanaman ini telah dipelajari karena potensi efek farmakologisnya, termasuk dalam pengobatan tradisional untuk berbagai masalah kesehatan. Namun, penggunaannya perlu mendapat dukungan lebih lanjut dari penelitian ilmiah yang lebih mendalam sebelum dijadikan pilihan pengobatan yang valid.', NULL, '2023-08-26 06:55:49', '2023-10-19 00:30:03'),
(14, 'POHON', '[\"Keanekaragaman Hayati\"]', 'assets/common/img/projects/1697675383_PRxFJr6xl2.png', '[\"assets\\/common\\/img\\/projects\\/1697675383_qYl7LbEomv.png\",\"assets\\/common\\/img\\/projects\\/1697675383_YIoSHn7E1s.png\",\"assets\\/common\\/img\\/projects\\/1697675383_bW1jJHpocv.png\",\"assets\\/common\\/img\\/projects\\/1697675383_rCFLXxHWin.png\"]', 'FLORA DI DESA PUNJULHARJO\r\n\r\n\r\nPOHON\r\n\r\nMimba\r\n\r\n\r\n(Dokumen Pribadi, 2023)\r\nPohon Mimba (Azadirachta indica) atau Neem tree merupakan anggota Famili Meliaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 15-20 meter atau lebih dan tipe percabangan monopodial. Pohon Mimba memiliki daun berwarna hijau tua dengan susunan daun majemuk, berbentuk bulat telur, tepi bergelombang, dan tekstur yang khas. Bunga Mimba tumbuh dalam kelompok yang menggantung di ujung ranting-rantingnya. Bunga ini umumnya berwarna putih hingga krim, dan memiliki aroma yang khas. Buah Mimba berbentuk seperti biji jambu yang berwarna kuning hingga hijau ketika masih muda, kemudian berubah menjadi warna cokelat saat matang. Buah ini berisi biji-biji dalam daging buah yang berair. Pohon Mimba dapat ditemukan hampir diseluruh wilayah hutan tropis dan biasanya pada kebun atau digunakan sebagai peneduh pekarangan rumah. Daun, buah, kulit batang, dan biji Mimba memiliki sifat-sifat yang bermanfaat dalam bidang kesehatan, pertanian, dan industri. Minyak neem yang diekstraksi dari biji mimba memiliki sifat insektisida dan antijamur, dan sering digunakan dalam produk-produk perawatan taman, pertanian organik, dan produk-produk perawatan kulit.\r\n\r\nMangga\r\n\r\n(Dokumen Pribadi, 2023)\r\nPohon Mangga (Mangifera indica) merupakan anggota Famili Anacardiaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 3-12 meter atau lebih dan tipe percabangan dikotom. Pohon Mangga memiliki daun berwarna hijau tua dengan susunan daun majemuk spiral, berbentuk elips atau lanset dengan ujung meruncing. Bunga Mangga termasuk bunga majemuk bertandan yang terletak di ujung ranting-ranting, berukuran kecil dan berwarna kuning atau krem. Buah mangga memiliki bentuk, ukuran, dan warna tergantung pada varietasnya. Umumnya, buah mangga berbentuk bulat atau oval dengan kulit yang bisa berwarna hijau, kuning, oranye, merah, atau kombinasi dari beberapa warna. Daging buah mangga bisa bervariasi dari kuning pucat hingga oranye terang. Buah ini memiliki biji di dalamnya. Pohon mangga berasal dari wilayah Asia Selatan, tetapi telah menyebar ke seluruh dunia dan tumbuh dengan baik di daerah-daerah dengan iklim tropis dan subtropis. Pohon Mangga biasanya ditemukan di pekarangan, atau dibudidayakan di kebun sebagai komoditas ekonomi. Buah mangga sering dikonsumsi segar sebagai buah makan dan dapat diolah menjadi olahan makanan dan minuman.\r\n\r\nCemara Laut\r\n\r\n(Dokumen Pribadi, 2023)\r\nCemara Laut (Casuarina equisetifolia) merupakan anggota Famili Casuarinaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 15-35 meter atau lebih. Pohon Cemara memiliki tipe percabangan batang monopodial. Daun pohon Cemara berwarna hijau tua dengan susunan daun majemuk spiral, berbentuk seperti jarum kecil dan halus. Bunga cemara laut biasanya tidak mencolok dan tersembunyi dalam braktea yang tampak seperti sisik. Bunga jantan dan betina terpisah dalam pohon yang sama. Bunga jantan menghasilkan serbuk sari yang dibawa oleh angin untuk penyerbukan bunga betina. Setelah penyerbukan, bunga betina berkembang menjadi buah kecil yang berisi biji. Buah ini memiliki ukuran yang relatif kecil dan tahan lama. Pohon cemara laut tumbuh dengan baik di daerah pantai dan wilayah beriklim tropis. Selain itu, pohon Cemara memiliki banyak manfaat dalam pengendalian erosi pantai karena akarnya yang kuat dan cabang-cabangnya yang bisa mengurangi efek angin asin.\r\n\r\nAkasia\r\n\r\n(Dokumen Pribadi, 2023)\r\nAkasia (Acacia crassicarpa) merupakan anggota Famili Fabaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 10-25 meter dan tipe percabangan monopodial. Daun Acacia crassicarpa merupakan daun majemuk dengan 4 hingga 8 pasang daun anak yang berbentuk lonjong atau bundar, tepi yang bergelombang, berwarna hijau tua dan memiliki permukaan yang mengkilap. Bunga Acacia crassicarpa merupakan bunga majemuk bertandan yang melingkar di ujung ranting-ranting dan berwarna kuning cerah. Buah Acacia crassicarpa biasanya berupa polong yang berbentuk panjang dan datar. Polong-polong ini mengandung biji-biji kecil yang dikelilingi oleh daging yang umumnya berwarna hitam atau cokelat tua saat matang. Pohon akasia dapat ditemukan pada hutan tropis hingga subtropic dan dapat ditemukan pada pekarangan rumah hingga tepi jalan sebagai peneduh. Secara ekologis, pohon Akasia berperan dalam penanaman kembali tanah-tanah yang terdegradasi atau erosi. Akasia dapat membantu meningkatkan kondisi tanah dan memperbaiki ekosistem setempat.\r\n\r\nKetapang Merah\r\n\r\n(Dokumen Pribadi, 2023)\r\nKetapang Merah (Terminalia catappa) merupakan anggota Famili Combretaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 20-30 meter atau lebih dan tipe percabangan sympodial. Daun ketapang termasuk daun tidak lengkap yang berwarna merah dan hijau gelap, berbentuk bulat telur terbalik dengan ujung yang meruncing, helaian di pangkal bentuk jantung, pangkal dengan kelenjar di kiri-kanan ibu tulang daun di sisi bawah. Helaian serupa kulit, licin di atas, berambut halus di sisi bawah tersebar, sebagian besarnya berjejalan di ujung ranting, bertangkai pendek atau hampir duduk. Bunga Ketapang berukuran kecil, terkumpul dalam bulir dekat ujung ranting, panjang 8–25 cm, hijau kuning. Bunga tak bermahkota, dengan kelopak bertaju-5, bentuk piring atau lonceng, 4–8 mm, putih atau krem. Benang sari dalam 2 lingkaran, tersusun lima-lima. Buah batu bulat telur gepeng, bersegi atau bersayap sempit, 2,5–7 x 4–5,5 cm, hijau-kuning-merah, atau ungu kemerahan jika masak. Pohon ketapang merah umumnya ditemukan di daerah tropis dan subtropis di seluruh dunia. Pohon ketapang merah memiliki nilai dekoratif dan sering ditanam sebagai pohon taman atau pohon pelindung. Daun-daunnya yang jatuh membentuk lapisan bawah yang sering digunakan sebagai penutup tanah. Buahnya juga dimanfaatkan dalam pengobatan tradisional di beberapa budaya.\r\n\r\nRandu\r\n\r\n(Dokumen Pribadi, 2023)\r\nRandu (Ceiba pentandra) merupakan anggota Famili Malvaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 20-70 meter atau lebih, tipe percabangan monopodial, batang silinder dan sering kali memiliki taji atau tonjolan-tonjolan. Daun randu merupakan daun majemuk menjari  dengan bentuk daun lonjong, ujung meruncing, dasar segitiga sungsang terpisah satu sama lain, hijau tua di bagian atas dan hijau muda di bagian bawah. Bunga randu merupakan bunga majemuk, bergetombol pada ranting, hemafrofit,berwarna putih sampai merah muda. Buah randu biasanya berbentuk seperti kapsul panjang dan berduri-duri kecil. Setelah matang, buah ini pecah dan mengeluarkan biji-biji halus yang dikelilingi oleh serat-serat yang lembut. Pohon randu banyak tumbuh di daerah tropis dan subtropis di seluruh dunia. Pada umunya, pohon randu dapat ditemukan di hutan atau kebun sekitar. Pohon randu memiliki peran ekologi yang penting dalam hutan-hutan tropis, karena menyediakan tempat bertengger bagi berbagai hewan dan juga memiliki sifat penahan angin dan erosi tanah. Selain itu, serat-serat dari kulit dalam batang randu, yang dikenal sebagai kapuk, telah digunakan dalam berbagai budaya untuk membuat bahan serat, seperti pakaian tradisional atau peralatan rumah tangga.\r\n\r\nTrembesi\r\n\r\n(Dokumen Pribadi, 2023)\r\nTrembesi (Albizia saman) merupakan anggota Famili Fabaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 15-20 meter atau lebih, tipe percabangan monopodial dengan cabang-cabang utama dan lateralnya menjulang ke samping dan ke atas. Daun trembesi adalah daun majemuk dengan banyak helai daun anak yang menyerupai daun runcing. Bunga trembesi termasuk ke dalam bunga majemuk bertandan yang menggantung dari cabang-cabang dan ranting-ranting, dan berwarna putih atau merah muda. Buah trembesi adalah polong panjang berwarna cokelat atau merah muda. Polong-polong ini mengandung biji-biji dalam jumlah banyak yang terbungkus dalam lapisan daging yang kering. Pohon trembesi dapat ditemukan pada hutan wilayah subtropic hingga tropis, biasanya trembesi ditemukan di hutan, kebun, pekarangan, atau pinggir jalan sebagai peneduh.\r\n\r\nWaru\r\n\r\n(Dokumen Pribadi, 2023)\r\nWaru (Hibiscus tiliaceus) merupakan anggota Famili Malvaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 10-25 meter atau lebih, tipe percabangan monopodial. Daun Waru merupakan daun tunggal dengan pertulangan daun menjari, bentuk bulat telur terbalik, ujung meruncing, pangkal terbelah sehingga membentuk morfologi daun seperti hati. Bunga waru berbentuk seperti lonceng dan memiliki kelopak yang tajam dengan warna yang bervariasi, seperti kuning, oranye, atau merah. Buah waru biasanya berbentuk bulat dan berdiameter sekitar 5 cm. Buah-buah ini mengandung biji-biji kecil yang terbungkus dalam serat-serat yang keras. Pohon waru banyak tumbuh di wilayah tropis dan subtropis di seluruh dunia, khususnya di daerah pantai dan pesisir. Akar pohon waru yang kuat membantu dalam mencegah erosi dan melindungi pantai dari abrasi.\r\n\r\nFlamboyan\r\n\r\n(Dokumen Pribadi, 2023)\r\nFlamboyan (Delonix regia) merupakan anggota Famili Fabaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 5-12 meter atau lebih dan tipe percabangan monopodial. Daun flamboyan merupakan daun majemuk dengan daun-daun anak yang tersusun berjajar, berbentuk seperti daun runcing dan memiliki warna hijau terang. Bunga flamboyant termasuk bunga majemuk dengan 5 kelopak berbentuk seperti kipas. Setelah berbunga, bunga flamboyan berkembang menjadi polong berwarna cokelat yang panjangnya sekitar 30 cm. Polong ini mengandung biji-biji yang datar dan bulat. Pohon flamboyan tumbuh dengan baik di daerah tropis dan subtropis, terutama di daerah yang hangat, biasanya flamboyan ditemukan di hutan, kebun, pekarangan, atau pinggir jalan sebagai peneduh.\\\r\n\r\nKelapa\r\n\r\n(Dokumen Pribadi, 2023)\r\nKelapa (Cocos nucifera) merupakan anggota Famili Arecaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 10 meter atau lebih dengan batag silindris kokoh dan memiliki bekas daun lama yang terkelupas. Daun kelapa merupakan daun majemuk dengan susunan daun roset batang. Anak daun kelapa bertulang daun seajar, dengan bentuk daun menyirip, perkamenteus, berjajar dalam barisan di sepanjang tulang daun utama. Buah kelapa adalah buah besar berbentuk bulat atau oval yang terkenal dengan kulit kerasnya yang berwarna cokelat. Di dalam kulit ini terdapat lapisan daging berair yang disebut kopra, yang dapat dimakan atau diolah menjadi minyak kelapa. Pohon kelapa banyak tumbuh di daerah pantai dan pesisir, di mana kondisi tanah pasir dan iklim hangat mendukung pertumbuhannya. Pohon kelapa memiliki nilai ekonomi yang tinggi karena manfaatnya dalam penghasilan makanan, minyak, dan produk-produk lainnya. Industri kelapa merupakan sumber penghidupan bagi banyak komunitas.\r\n\r\nApi-api Putih\r\nApi-api Putih (Avicennia marina) merupakan mangrove yang berasal dari Famili Avicenniaceae. Avicennia marina memiliki morfologi berupa habitus pohon yang biasanya membentuk gerombol, memiliki akar napas (pneumatofora), batang berwarna abu-abu dengan bercak hijau dengan tinggi pohon berkisar 6-11 m. Avicennia marina memiliki daun berbentuk bulat memanjang dan meruncing, bunga berbentuk seperti trisula bergerombol yang terletak di ketiak daun, berwarna hijau agak keabu-abuan. Permukaan buah berambut halus dan ujung buah agak tajam seperti paruh. Avicennia marina termasuk jenis mangrove sejati (true mangrove) yang berada pada wilayah pasang surut laut dan terlihat mendominasi pada wilayah pesisir pantai, kemudian Avicennia marina memiliki kemampuan untuk mengeluarkan dan mengeluarkan garam. Pada tingkat akar, mikrofiltrasi akan memastikan bahwa paling banyak 10% salinitas air laut akan ditemukan dalam getah pohon. Karena adanya kelenjar garam pada daun, kelebihan garam bisa dikeluarkan.\r\n\r\nApi-api Hitam\r\n\r\n(Dokumen Pribadi, 2023)\r\nApi-api Hitam (Avicennia alba) merupakan mangrove yang berasal dari Famili Avicenniaceae Avicennia alba memiliki morfologi berupa habitus pohon, memiliki akar napas (pneumatofora), batang berwarna abu-abu gelap sampai hitam dengan tinggi pohon mencapai 15 m. Daun tunggal berbentuk lanset dengan ujung runcing, susunan daun tunggal, bunga majemuk warna putih kekuningan yang berada di ketiak daun, dan buah bulat berwarna kehijauan. Avicennia marina termasuk jenis mangrove sejati (true mangrove) yang berada pada wilayah pasang surut laut. Secara ekologis, mangrove berfungsi sebagai penahan abrasi dan nursery ground bagi beberapa jenis biota laut maupun darat.\r\n\r\nJati\r\n\r\n(Dokumen Pribadi, 2023)\r\nJati (Tectona grandis) merupakan anggota Famili Lamiaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 20-10 meter atau lebih, tipe percabangan tertragonal. Daun jati merupakan daun majemuk dengan daun anak berbentuk bulat telur terbalik yang tumbuh dalam barisan di sepanjang tulang daun utama. Daun-daun jati berwarna hijau tua dan memberikan tampilan yang rimbun pada mahkota pohon. Bunga jati biasanya kecil dan tak mencolok. Bunga-bunga ini berkumpul dalam tandan yang muncul di ujung ranting-ranting. Buah jati berbentuk seperti kapsul kayu kecil yang mengandung biji-biji yang dikelilingi oleh daging buah. Pohon jati tumbuh dengan baik di daerah tropis, khususnya di Asia Tenggara. Mereka tumbuh terutama di daerah dataran rendah hingga sedang. Pohon jati dikenal memiliki kayu yang berkualitas. Kayu jati memiliki nilai ekonomi yang tinggi dan sering kali menjadi produk ekspor yang penting. Industri kayu jati memberikan sumber penghidupan bagi banyak masyarakat di daerah yang tumbuhnya jati.\r\n\r\nMengkudu\r\n\r\n(Dokumen Pribadi, 2023)\r\nMengkudu (Morinda citrifolia) merupakan anggota Famili Rubiaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 3-10 meter atau lebih dan tipe percabangan monopodial. Daun-daun mengkudu berbentuk elips atau bulat telur dengan ujung meruncing, berwarna hijau tua dan tumbuh berlawanan di sepanjang batang. Bunga mengkudu kecil dan putih atau kuning pucat. Bunga-bunga ini tumbuh dalam tandan yang muncul di ujung ranting-ranting. Buah mengkudu berbentuk bulat atau hampir oval, berukuran sekitar 4 hingga 7 cm. Kulit buahnya kasar dan mengandung banyak bintik-bintik. Daging buahnya berwarna putih atau kuning pucat, berair, dan memiliki aroma yang kuat dan khas. Pohon Mengkudu sering ditemukan di pantai, dataran rendah, dan hutan terbuka. Buah mengkudu telah digunakan dalam pengobatan tradisional di beberapa budaya karena diyakini memiliki sifat penyembuhan. Buah mengkudu juga telah diekstraksi untuk dijadikan minuman atau suplemen. Selain manfaat kesehatan, tanaman mengkudu juga memiliki nilai dalam industri tekstil dan produksi pewarna alami dari akarnya.\r\n\r\nBeringin\r\n\r\n(Dokumen Pribadi, 2023)\r\nBeringin (Ficus benjamina) merupakan anggota Famili Moraceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 15-30 meter atau lebih dan tipe percabangan sympodial, dan memiliki akar gantung. Pohon beringin memiliki daun tunggal berwarna hijau gelap, berbentuk oval atau elips dengan ujung meruncing. Buah beringin berbentuk bulat kecil dan biasanya berwarna hijau hingga ungu ketika matang. Buah ini berkembang dari bunga-bunga kecil yang tidak mencolok. Beringin tumbuh dengan baik di daerah tropis dan subtropic pada daerah dataran rendah hingga sedang, dan sering ditemukan di tepi sungai, taman, dan kawasan perkotaan. Pohon beringin sering ditanam sebagai tanaman hias karena keindahan bentuknya yang elegan dan akar-akar gantung yang mencolok. Pohon beringin memiliki nilai simbolis dalam berbagai budaya dan agama. Di beberapa masyarakat, pohon ini dianggap suci dan dihormati.\r\n\r\nGlodokan Tiang\r\n\r\n(Dokumen Pribadi, 2023)\r\nGlodokan Tiang (Nauclea orientalis) merupakan anggota Famili Rubiaceae yang berhabitus pohon dengan tinggi tanaman yang dapat mencapai 15-30 meter atau lebih. Pohon ini memiliki batang lurus dan tegak dengan kulit berwarna abu-abu atau coklat yang sering mengelupas. Daun-daunnya berbentuk bulat telur dengan tepi yang rata atau bergelombang, tumbuh berlawanan di batang. Bunga-bunga kecil yang berwarna putih hingga kuning muncul dalam kelompok-klompok di ujung ranting-ranting. Buah-buahnya bulat, berwarna hitam atau ungu gelap ketika matang, dengan isi yang berair dan biji yang keras. Pohon Glodokan Tiang memiliki beberapa penggunaan dalam pengobatan tradisional di berbagai budaya, dan kayu dari pohon ini digunakan dalam konstruksi dan pembuatan furnitur. Tanaman ini juga memiliki nilai ekologis sebagai penyedia makanan bagi berbagai hewan, serta sebagai pohon peneduh di daerah pedesaan dan perkotaan.', NULL, '2023-08-26 07:02:33', '2023-10-19 00:29:43'),
(15, 'PERDU', '[\"Keanekaragaman Hayati\"]', 'assets/common/img/projects/1697675358_IWAYD6VCcl.png', '[\"assets\\/common\\/img\\/projects\\/1697675358_B8Op02OAx3.png\",\"assets\\/common\\/img\\/projects\\/1697675358_Mb7HvQXPDe.png\",\"assets\\/common\\/img\\/projects\\/1697675358_YvlkcjN5tb.png\",\"assets\\/common\\/img\\/projects\\/1697675358_JdWaq0Oj8K.png\"]', 'FLORA DI DESA PUNJULHARJO\r\n\r\n\r\nPERDU\r\n\r\nSrikaya\r\n\r\n(Dokumen Pribadi, 2023)\r\nSrikaya (Annona squmosa) merupakan anggota Famili Annonaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 3-8 meter. Srikaya memiliki daun berwarna hijau tua dengan susunan daun majemuk, berbentuk lonjong, ujung runcing, panjang sekitar 5-15 cm dan lebar sekitar 2,5-7,5 cm. Bunga Srikaya berwarna putih dan merupakan bunga tunggal yang terletak di ketiak daun. Buah Srikaya memiliki kulit yang kasar dan berbentuk seperti jala, dengan tonjolan-tonjolan. Daging buahnya terdiri dari segmen-segmen yang lembut, yang masing-masing berisi biji yang relatif besar. Buah srikaya biasanya berwarna hijau saat belum matang, dan kemudian berubah menjadi warna kuning atau kecokelatan saat matang. Srikaya dapat hidup pada wilayah tropis dan dapat ditanam pada pekarangan rumah. Buah srikaya biasanya dikonsumsi segar sebagai buah makan atau dibuat olahan makanan lainnya. Daun dan akar pohon srikaya bisa digunakan dalam ramuan herbal untuk berbagai tujuan kesehatan.\r\n\r\nKelengkeng\r\n\r\n(Dokumen Pribadi, 2023)\r\nKelengkeng (Dimocarpus longan) merupakan anggota Famili Annonaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 3-10 meter dengan tipe percabangan sympodial. Daun kelengkeng adalah daun majemuk dengan beberapa helai daun anak yang tumbuh dari satu tangkai daun. Daun-daun ini memiliki warna hijau tua dan bentuk elips atau lonjong. Bunga kelengkeng biasanya kecil dan tak mencolok. Bunga-bunga ini tumbuh dalam tandan yang muncul di ujung ranting-ranting. Buah kelengkeng adalah buah berkulit tipis yang berbentuk bulat atau lonjong. Kulitnya biasanya cokelat atau kuning ketika matang, dan memiliki duri-duri halus yang menonjol. Daging buahnya transparan, berair, dan manis, serta mengandung biji yang besar di tengahnya. Kelengkeng tumbuh dengan baik di daerah tropis dan subtropis, khususnya di wilayah Asia Tenggara pada daerah dataran rendah hingga sedang. Kelengkeng pada umumnya dimanfaatkan sebagai buah makan dan dapat dibudidayakan untuk kemudian diperjualbelikan.\r\n\r\nStigi\r\nStigi (Pemphis acidula) merupakan anggota Famili Lythraceae yang berhabitus perdu dengan tinggi tanaman yang umumnya mencapai 2 meter atau lebih. Daun Stigi merupakan daun majenuk dengan anak daun berbentuk lonjong dengan ujung merumcing. Daun-daun ini biasanya berwarna hijau tua dan dapat menghadap arah angin untuk mengurangi kehilangan air melalui penguapan. Bunga Stigi biasanya kecil dan tak mencolok, berwarna putih atau merah muda dan menghasilkan nektar yang menarik serangga, terutama lebah. Buah Stigi biasanya bulat dan berukuran kecil, dan mengandung biji-biji yang dapat tumbuh menjadi pohon baru jika terbawa oleh air laut atau angin. Stigi biasanya tumbuh di pantai berpasir dan daerah pesisir yang dipengaruhi oleh air asin. Mereka ditemukan di wilayah pantai di seluruh daerah tropis dan subtropis, termasuk di Asia, Afrika, dan Pasifik. Stigi memiliki peran penting dalam ekosistem pantai. Akarnya membantu dalam mencegah erosi pantai dan memberikan tempat perlindungan bagi kehidupan laut di sekitarnya.\r\n\r\nLamtoro\r\n\r\n(Dokumen Pribadi, 2023)\r\nLamtoro (Leucaena leucocephala) merupakan anggota Famili Fabaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 10 meter atau lebih dengan tipe percabangan sympodial. Daun lamtoro merupakan daun majemuk dengan anak daun yang tersusun berjajar, berbentuk bulat telur atau elips dengan tepi yang rata. Bunga lamtoro merupakan bunga majemuk bertandan berbentuk seperti bulir-bulir kecil yang berwarna putih atau kuning muda. Buah lamtoro biasanya berbentuk polong yang panjang dan berisi biji-biji kecil. Polong-polong ini membentuk grup yang panjang dan dapat mengering setelah matang. Habitat lamtoro berada pada dataran rendah hingga tinggi pada iklim tropis. Lamtoro dapat ditemukan pada kebun atau pekarangan. Daun dan batang Lamtoro umumnya dapat digunakan sebagai pakan ternak dan biji pada buahnya dapat dikonsumsi sebagai makanan sehari-hari.\r\n\r\nJambu Air\r\n\r\n(Dokumen Pribadi, 2023)\r\nJambu Air (Syzygium aqueum) merupakan anggota Famili Myrtaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 3-6 meter dengan tipe percabangan sympodial. Daun jambu air merupakan daun tunggal, berbentuk oval atau elips, ujung meruncing dan tepi yang rata. Daun jambu air biasanya berwarna hijau tua. Bunga jambu air berukuran kecil dan putih, dengan lima kelopak yang membentuk bintang. Bunga-bunga jambu air tumbuh sendiri atau dalam kelompok di ujung ranting-ranting. Buah jambu air memiliki bentuk bulat atau lonjong mirip seperti lonceng dengan kulit yang tipis dan daging yang tebal. Kulit jambu air dapat bervariasi dari hijau hingga kuning ketika matang. Daging buahnya dapat berwarna putih atau merah muda, tergantung pada varietasnya. Pohon jambu air umumnya tumbuh di dataran rendah dan memiliki toleransi terhadap berbagai jenis tanah. Pohon jambu air juga dapat ditemukan dalam taman dan pekarangan sebagai pohon hias. Jambu air biasanya dimakan segar sebagai buah makanan penutup atau camilan, jus, selai, atau makanan lainnya. Daun jambu air juga dapat digunakan dalam masakan tradisional dalam beberapa budaya.\r\n\r\nPucuk Merah\r\n\r\n(Dokumen Pribadi, 2023)\r\nPucuk Merah (Syzygium myrtifolium) merupakan anggota Famili Myrtaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 2-6 meter dengan tipe percabangan sympodial. Daun pucuk merah merupakan daun tunggal berbentuk bulat telur atau elips dengan ujung meruncing dan tepi yang rata. Daun pucuk merah biasanya berwarna hijau gelap dan mengkilap dan berwarna kemerahan pada yang masih daun muda. Bunga pucuk merah merupakan bunga majemuk berukuan kecil, berwarna putih, dan berkumpul dalam tandan-tandan yang muncul di ujung ranting-ranting. Buah pucuk merah biasanya berbentuk bulat atau lonjong dengan kulit yang tipis dan berwarna merah ketika matang. Pucuk merah tumbuh baik di hutan-hutan, tepi sungai, dan daerah beriklim hangat. Pada umumnya pucuk merah digunakan sebagai tanaman peneduh dan estetika.\r\n\r\nKersen\r\n\r\n(Dokumen Pribadi, 2023)\r\nKersen (Muntingia calabura) merupakan anggota Famili Muntingiaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 5-10 meter dengan tipe percabangan sympodial. Kersen memiliki daun majemuk berwarna hijau muda, berbentuk bulat telur atau oval dengan tepi yang rata atau bergerigi, dan pertulangan daun menyirip. Bunga kersen merupakan bunga majemuk berukuran kecil, berwarna putih, dan memiliki kelopak berbentuk lima hingga tujuh kelopak. Buah kersen adalah buah bulat kecil berwarna merah ceri yang sering kali berdiameter sekitar 1 hingga 2 cm. Daging buahnya berair, manis, dan memiliki biji-biji di dalamnya. Kersen  tumbuh baik di daerah dataran rendah dan seringkali ditemukan di sepanjang jalan atau di kawasan perkotaan. Kersen dapat memberikan peneduh dan berperan dalam ekosistem tempat mereka tumbuh dengan menyediakan makanan bagi berbagai hewan. Selain itu, buah kersen umumnya dapat dimakan segar sebagai camilan atau buah makanan penutup.\r\n\r\nBidara\r\nBidara (Ziziphus mauritiana) merupakan anggota Famili Rhamnaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 5-12 meter. Daun bidara termasuk daun tunggal berbentuk oval atau lanset dengan tepi yang bergerigi dan berwarna hijau gelap. Bunga bidara berukuran kecil berwarna kuning-hijau muncul dalam kelompok-klompok di ujung ranting-ranting. Buah bidara berbentuk bulat atau ovoid, dengan kulit yang berwarna kuning-hijau hingga coklat saat matang. Buah ini memiliki daging yang manis dan biji yang keras di dalamnya. Buah bidara sering dikonsumsi segar atau diolah menjadi jus, selai, atau hidangan lainnya. Selain nilai pangan, beberapa bagian tanaman ini juga memiliki penggunaan dalam pengobatan tradisional di beberapa budaya.\r\n\r\nTabebuya\r\n\r\n(Dokumen Pribadi, 2023)\r\nTabebuya (Handroanthus chrysotrichus) merupakan anggota Famili Bignoniaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 5-30 meter. Daun Tabebuya bersifat majemuk, berbentuk menyirip, dengan tepi rata atau bergerigi. Namun, daya tarik utama Tabebuya terletak pada bunga-bunga spektakuler yang mekar selama musim kering, membentuk kluster bunga berbentuk trompet yang datang dalam berbagai warna mencolok, termasuk kuning, merah muda, ungu, atau putih. Bunga-bunga ini menghiasi pohon seperti hujan bunga yang menggairahkan. Tabebuya sering ditanam sebagai tanaman hias perkotaan karena bunga-bunga yang mencolok, tetapi juga memiliki nilai ekologis dengan menarik serangga penyerbuk dan memainkan peran dalam ekosistem lokal. Selain itu, kayu Tabebuya digunakan dalam pembuatan furnitur dan konstruksi karena sifat keras dan tahan lamanya.\r\n\r\nDelima\r\n\r\n(Dokumen Pribadi, 2023)\r\nDelima (Punica granatum) merupakan anggota Famili Lythraceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 5-8 meter, memiliki batang yang bercabang-cabang dengan kulit yang halus dan kadang-kadang memiliki duri-duri kecil. Daun delima berbentuk oval-lanset, berwarna hijau terang, dan tumbuh secara berlawanan di batang. Bunga delima muncul dalam kelompok-kelompok di ujung ranting-ranting dengan kelopak merah atau oranye cerah yang melingkari mahkota warna serupa. Buah delima adalah bola besar berwarna merah atau kuning ketika matang, memiliki kulit keras dan dalamnya terdapat biji-biji yang dikelilingi oleh biji berdaging yang enak. Buah ini dikenal karena kaya akan antioksidan dan nutrisi, serta digunakan dalam makanan, minuman, dan dalam pengobatan tradisional dalam beberapa budaya. Pohon delima juga memiliki nilai estetika dan ekologis, menarik serangga penyerbuk dan memiliki peran dalam ekosistem lokal.\r\n\r\nPandan Laut\r\n\r\n(Dokumen Pribadi, 2023)\r\nPandan Laut (Pandanus fascicularis) merupakan anggota Famili Pandanaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 3-7 meter. Tanaman ini memiliki batang bercabang dengan akar tunjang yang menjulur dari batangnya, memungkinkannya tumbuh stabil di pantai berpasir. Daun Pandan Laut berbentuk panjang dan sempit, dengan tepi berduri yang melengkung dan menonjol ke luar, dan mereka tumbuh dalam spiral di sepanjang batang. Bunga-bunga kecil yang tak mencolok muncul di tengah daun-daun yang berduri, dengan aroma harum yang khas. Buah yang dihasilkan adalah buah oval berwarna hijau yang dapat dimakan dan memiliki biji di dalamnya. Tanaman ini memiliki banyak kegunaan dalam budaya setempat, seperti dalam pembuatan tikar, anyaman, dan makanan tradisional. Selain nilai budayanya, Pandan Laut juga memiliki manfaat ekologis sebagai penahan erosi pantai dan tempat berkembang biak bagi beberapa spesies burung dan serangga.\r\n\r\nKetela Pohon\r\n\r\n(Dokumen Pribadi, 2023)\r\nKetela Pohon (Manihot esculenta), juga dikenal sebagai singkong atau cassava, adalah tumbuhan akar yang memiliki peran penting dalam pangan di berbagai wilayah tropis dan subtropis. Tanaman ini memiliki batang berbentuk tegak dan tumbuh dengan ketinggian antara 1 hingga 3 meter. Daun-daunnya berbentuk seperti tangan dengan lima hingga tujuh lobus yang tumbuh dari tangkai panjang. Akar Ketela Pohon adalah bagian yang paling berharga, digunakan sebagai sumber karbohidrat penting dalam diet manusia. Akar tersebut dapat berwarna putih atau kuning, tergantung pada varietasnya. Tanaman ini juga menghasilkan buah-buahan yang dapat dimakan tetapi lebih jarang dikonsumsi daripada akarnya. Ketela Pohon tumbuh baik dalam berbagai jenis tanah dan kondisi iklim, dan menjadi tanaman penting dalam pangan, pakan ternak, dan industri berbagai produk seperti tepung dan pati. Selain nilai pangan dan ekonominya, tanaman ini juga memiliki nilai dalam pertanian berkelanjutan karena toleransinya terhadap tanah berpasir dan kemampuannya menghasilkan panen yang baik di daerah dengan musim hujan yang pendek.\r\n\r\nAsoka\r\n\r\n(Dokumen Pribadi, 2023)\r\nAshoka (Saraca indica) merupakan anggota Famili Fabaceae yang berhabitus perdu dengan tinggi tanaman yang dapat mencapai 6-9 meter. Dengan batang tegak dan tajuk melengkung, pohon ini menghasilkan daun berbentuk oval berwarna hijau tua yang menonjol berlawanan di batangnya. Namun, daya tarik utama Ashoka adalah bunganya yang menonjol dengan kelopak merah muda atau oranye cerah yang kontras dengan daunnya. Dalam konteks budaya Hindu, Ashoka memiliki makna yang dalam dan sering dianggap sebagai simbol cinta dan kecantikan. Di samping nilai budayanya, beberapa bagian tanaman Ashoka telah digunakan dalam pengobatan tradisional, terutama dalam pengobatan Ayurveda, untuk masalah kesehatan tertentu.', NULL, '2023-08-26 07:07:15', '2023-10-19 00:29:18'),
(16, 'Adas', '[\"Keanekaragaman Hayati\"]', 'assets/common/img/projects/1697675226_B3szL6j8k0.png', '[\"assets\\/common\\/img\\/projects\\/1697675226_oq9W2XBNmz.png\"]', 'Adas\r\n\r\n(Dokumen Pribadi, 2023)\r\nAdas (Artemisia scoparia), juga dikenal sebagai \"redstem wormwood\" atau \"Russian wormwood,\" adalah tumbuhan herba yang tersebar di berbagai wilayah di seluruh dunia. Tanaman ini memiliki batang tegak yang tumbuh dengan ketinggian sekitar 50 hingga 150 cm, dengan daun-daun berbentuk lanset yang memiliki permukaan berambut dan tepi yang bergerigi. Bunga-bunga kecil berwarna kuning-hijau muncul dalam kelompok-klompok di ujung ranting-ranting. Selain keindahan fisiknya, Artemisia scoparia juga memiliki nilai dalam pengobatan tradisional dalam beberapa budaya, dengan bagian tanamannya digunakan untuk meredakan masalah kesehatan seperti peradangan dan gangguan pencernaan. Meskipun memiliki potensi manfaat medis, perlu diingat bahwa penggunaannya harus didukung oleh penelitian lebih lanjut dan konsultasi dengan ahli medis yang kompeten.', NULL, '2023-08-26 07:11:58', '2023-10-19 00:27:06'),
(17, 'Paket wisata maritim, paket wisata desa punjulharjo, paket sewa tempat', '[\"desa punjulharjo\"]', 'assets/common/img/projects/1693034371_JSbsKZWpb2.png', '[\"assets\\/common\\/img\\/projects\\/1693034371_nqW6BZTdsi.png\",\"assets\\/common\\/img\\/projects\\/1693034371_mNMpkUY10B.png\"]', 'Paket wisata desa punjulharjo berisi tentang lokasi-lokasi tempat wisata dan', NULL, '2023-08-26 07:19:31', '2023-08-26 07:19:31'),
(18, 'Geologi Sejarah Kecamatan Rembang, Kabupaten Rembang', '[\"Kabupaten Rembang\"]', 'assets/common/img/projects/1693034863_2aZnayUQsZ.png', '[\"assets\\/common\\/img\\/projects\\/1693034863_E6qTNxNK8H.png\"]', 'Geologi Sejarah merupakan salah satu cabang ilmu geologi yang menceritakan khusus peristiwa yang pernah terjadi dalam kurun waktu tertentu dan lokasi tertentu', 'https://youtu.be/S6a0Mdj43dg', '2023-08-26 07:27:43', '2023-08-26 07:27:43'),
(19, 'PETA GEOLOGI KABUPATEN REMBANG', '[\"Kabupaten Rembang\"]', 'assets/common/img/projects/1693035452_EgMPLLnna1.png', '[\"assets\\/common\\/img\\/projects\\/1693035452_C2VdhkLl4l.png\"]', 'PETA GEOLOGI KABUPATEN REMBANG\r\nPeta geologi merupakan peta yang menunjukkan formasi batuan yang ada di Kabupaten Rembang yang ditunjukkan dengan warna yang berbeda sesuai dengan legenda yang ada. Pada legenda menunjukkan urutan formasi dimulai dari umur yang paling muda hingga yang paling tua. Berikut penjelasan dari masing-masing formasi dari yang paling muda :\r\nAlluvium\r\nEndapan alluvium terbentuk pada kala holosen yang terdiri dari kerakal, kerikil, pasir, lanau, dan lempung. Pada peta, alluvium ditunjukkan dengan warna hijau muda. \r\nBreksi Vulkanik\r\nBreksi vulkanik merupakan produk dari gunung api lasem yang terbentuk pada kala plistosen yang merupakan batuan breksi. Pada peta, ditunjukkan dengan warna coklat. \r\nAndesit Lasem\r\nAndesit Lasem merupakan produk dari gunung api lasem yang terbentuk pada kala plistosen yang merupakan batuan andesit. Pada peta, ditunjukkan dengan warna merah. \r\nFormasi Lidah\r\nFormasi Lidah secara selaras berada di atas Formasi Mundu. Formasi ini berumur Pleistosen (N22-N23 zonasi blow). Ciri pengenal dari formasi ini adalah batu lempung kebiruan, napal berlapis dengan sisipan batupasir dengan lensa-lensa fossiliferous grainstone/rudstone(coquina). Formasi Lidah pada bagian atas batuannya menunjukkan produk pengendapan dari lingkungan yang semakin mendangkal, hingga akhirnya bagian teratas berupa lempung hasil pengendapan air tawar. Pada peta, ditunjukkan dengan warna hijau kekuningan.\r\nFormasi Paciran\r\nFormasi Paciran memiliki kedudukan jari-jemari dengan Formasi Bulu (Miosen Tengah). Pada lintasan Jojogan-Guwoterus, Formasi Paciran berkedudukan jari-jemari dengan Formasi Wonocolo (Miosen Tengah – Miosen Akhir). Pada peta ditunjukkan dengan warnabiru tua.\r\nFormasi Mundu\r\nFormasi Mundu selaras berada di atas Formasi Ledok. Formasi ini berumur Miosen akhir hingga Pliosen(N18-N21 zonasi blow). Ciri pengenal dari formasi ini adalah napal kehijauan, berwarma kuning jika kondisi lapuk, masif, kaya sekali akan forminifera plankton, dan tidak berlapis. Selain itu juga terdapat kandungan galukonit, namun hanya dalam jumlah yang sedikit. Bagian dari formasi ini secara berangsur berubah menjadi batu gamping pasiran di beberapa tempat. Pada peta, ditunjukkan dengan warna hijau kecoklatan.\r\nFormasi Ledok\r\nFormasi Ledok selaras berada di atas Formasi Wonocolo. Formasi ini berumur Miosen akhir(N16-N18 zonasi blow). Ciri pengenal dari formasi ini adalah perulangan antara napal pasiran, kalkarenit dengan napal dan batu pasir. Batu pasir pada formasi ini berwarna kehijauan hingga kecoklatan, berbutir halus hingga sedang, dengan komposisi mineral kuarsa, fragmen kalsit serta glaukonit yang secara keseluruhan terpilah sedang. Konsentrasi glaukonit yang tinggi terutama pada batu pasir di bagian atas formasi ini juga menjadi ciri khas dari Formasi Ledok. Pada peta, ditunjukkan dengan warna hijau lembayung tua. \r\nFormasi Wonocolo\r\nFormasi Wonocolo selaras berada di atas Formasi Bulu. Formasi ini berumur Miosen tengah hingga Miosen akhir(N14-N16 zonasi blow). Ciri pengenal dari formasi ini adalah napal, napal lempungan hingga napal pasiran, berwarna abu-abu kehijauan hingga abu-abu kecoklatan dengan perselingan kakarenit berwarna putih kekuningan setebal 5-20 cm. bagian bawahnya tersusun oleh batu gamping pasiran dan batu pasir gampingan, yang secara umum menunjukkan gejala pengendapan transgresif. Pada peta, ditunjukkan dengan warna hijau lumut.\r\nFormasi Bulu\r\nFormasi Bulu terletak di atas batu pasir Ngrayong, mempunyai penyebaran yang luas di Antiklinorium rembang Utara. Formasi ini berumur Miosen tengah (N13 zonasi blow). Ciri pengenal dari Formasi Bulu adalah batu gamping hingga batu gamping pasiran, berwarna putih kekuningan, kecoklatan hingga keabu-abuan, keras, kompak, berlapis tipis(berpelat) hingga pejal. Pada peta, ditunjukkan dengan warna biru muda.\r\nFormasi Ngrayong\r\nFormasi Ngrayong kadang berstatus sebagai anggota pada Formasi Tawun. Ciri pengenal dari formasi ini adalah litologinya batupasir kuarsa lepas( Mineral kuarsa hampir 90%). Pasir kuarsa ini diendapkan dalam lingkungan fase regresi yang berbeda-beda di beberapa tempat. Formasi ini merupakan reservoir minyak yang baik di zona Rembang Bagian selatan(lapangan Kawengan, Ledok, Nglobo-Semanggi dll). Pada peta, ditunjukkan dengan warna hijau.\r\nFormasi Tuban\r\nFormasi Tuban berumur Miosen awal hingga Miosen tengah (N5-N8 zonasi blow). Ciri pengenal dari formasi ini adalah litologinya terdiri lempung, napal dengan sisipan batugamping klastik yang banyak mengandung foraminifera. Pada peta, ditunjukkan dengan warna hijau keabuan.', NULL, '2023-08-26 07:37:32', '2023-08-26 07:37:32');
INSERT INTO `projects` (`id`, `title`, `categories`, `thumbnail`, `images`, `details`, `link`, `created_at`, `updated_at`) VALUES
(20, 'Produk UMKM Oleh-oleh Khas Desa Punjulharjo', '[\"Oleh-Oleh\"]', 'assets/common/img/projects/1693270168_CqqPHpznwF.png', '[\"assets\\/common\\/img\\/projects\\/1693270168_7WAltGnxBz.png\"]', 'Selamat datang di dunia kelezatan dan keindahan dari Punjulharjo. Kami dengan bangga mempersembahkan produk ungulan UMKM kami yang banyak diminati wisatawan diantaranya sebagai berikut :\r\n1.	Otak-otak Bandeng: Dibuat dari daging bandeng segar yang berasal dari budidaya lokal. Dibumbui dengan rempah pilihan dan resep turun-temurun, memberikan rasa lezat dan tekstur istimewa.\r\n2.	Bandeng Presto: Ikan bandeng diolah dengan metode presto, membuat daging ikan lembut sehingga tulangnya bisa dimakan.\r\n3.	Bawang Lanang: Bawang putih berumbi tunggal dengan khasiat kesehatan, mengandung organosulfida yang membantu detoksifikasi tubuh.\r\n4.	Kopi Lelet: Bubuk kopi super halus yang biasanya di jadikan untuk ngelelet rokok atau nge-batik rokok oleh masyarakat sekitar.\r\n5.	Manisan Kraiku: Terbuat dari timun krei (timun jepang) dengan manfaat kesehatan seperti menurunkan tekanan darah dan berat badan.\r\n6.	Terasi: Memberikan rasa gurih dan aroma khas pada masakan. Terasi Punjulharjo memiliki aroma khas yang kuat namun tidak terlalu menyengat.\r\n7.	Serbuk Jahe Mprit: Terbuat dari jahe berkualitas tinggi, serbuk ini praktis dan serbaguna untuk dicampur dalam makanan dan minuman.\r\n8.	Serbuk kuyit asem: Kunyit dan asam dipercaya bermanfaat untuk melancarkan haid. Kini muncul dalam bentuk minuman serbuk yang enak dan menyegarkan.\r\n9.	Serbuk Rempah: Campuran harmonis temulawak, kunyit, sereh, kayu manis, dan jahe, menciptakan profil rasa dan aroma unik.\r\n10.	Sirup Latoh: Terbuat dari rumput laut Caulerpa Racemosa, produk langka yang menjadi khas Desa Punjulharjo.\r\n11.	Batik ecoprint: ini merupakan salah satu jenis batik yang metode pembuatannya memanfaatkan pewarna alami dari tanin atau zat warna daun.\r\nSaat Anda mengunjungi Desa Wisata Punjulharjo, jangan lewatkan kesempatan untuk mencicipi dan membeli produk-produk istimewa ini. Setiap produk memiliki cerita dan cita rasa yang menggambarkan warisan budaya kami.\r\n\r\nTertarik untuk memiliki produk unggulan UMKM kami.\r\nKlik berikut untuk link pemesanan', 'https://shp.ee/8v42bjb', '2023-08-29 00:09:52', '2023-08-29 00:49:28'),
(21, 'Digitalisasi Konservasi Situs Cagar Budaya Dalam Perspektif Ilmu Geodesi', '[\"Situs Cagar Budaya\"]', 'assets/common/img/projects/1693314351_9PlOVEO59O.png', '[\"assets\\/common\\/img\\/projects\\/1693314351_oKjnLKwo7n.png\"]', 'Digitalisasi Konservasi Situs Cagar Budaya Dalam Perspektif Ilmu Geodesi\r\n\r\nOleh : Abdul Mujiib (Mahasiswa KKN-T UNDIP Prodi Teknik Geodesi)\r\n\r\n	Budaya nusantara telah menjadi jiwa bangsa, dan menjadi hal yang tak terpisahkan dari identitas bangsa indonesia. Indonesia berada diantara samudra pasifik dan samudra hindia, yang menandakan sebagian besar budaya indonesia merupakan budaya maritim. Salah satu bentuk budaya maritim tersebut adalah perahu atau kapal sebagai alat transportasi dari zaman kuno. Dari sabang sampai merauke bentuk dan model kapal sangat beragam karena mengalami modifikasi dan penyesuaian fungsi serta karakteristik laut. Namun, perahu dan kapal tersebut secara garis besar memiliki bentuk dan teknik pembuatan yang khas atau hampir sama di seluruh nusantara atau bahkan hingga daerah melayu ataupun indocina.\r\nSiahaan (2007) menyebutkan bahwa konservasi adalah tindakan perawatan, perlindungan dan pemeliharaan benda atau bangunan untuk mengembalikan keadaan benda atau bangunan mendekati keadaan aslinya. Kementerian Pendidikan dan Kebudayaan (2019) mendeskripsikan konservasi sebagai upaya pelestarian atau perlindungan baik terhadap lingkungan hutan beserta isi sumber daya alam, budaya, dan peninggalan-peninggalan masa lampau yang memiliki informasi sejarah yang bernilai penting. Konservasi budaya dipandang sebagai upaya melestarikan kebudayaan, warisan budaya yang wajib dijaga dan dilindungi agar tetap eksis dan berkembang seiring berjalannya waktu (Supriono, 2020).  Sejalan dengan hal tersebut, Pemerintah melalui Undang-Undang Republik Indonesia Nomor 11 Tahun 2010, mendefinisikan benda peninggalan masa lampau atau yang disebut juga sebagai benda cagar budaya adalah benda alam dan/atau benda buatan manusia, baik bergerak maupun tidak bergerak, berupa kesatuan atau kelompok, atau bagian-bagiannya, atau sisa-sisanya yang memiliki hubungan erat dengan kebudayaan dan sejarah perkembangan manusia. Sehingga, konservasi benda cagar budaya adalah upaya pelestarian dan perlindungan terhadap benda alam atau buatan manusia yang berkaitan erat dengan kebudayaan dan sejarah perkembangan manusia.\r\nKonservasi benda cagar budaya menjadi penting karena beberapa alasan. Pertama, benda-benda tersebut memberikan wawasan tentang sejarah dan tradisi suatu masyarakat. Benda cagar budaya membantu memahami masa lalu dan nilai-nilai budaya yang telah membentuk masa kini. Kedua, pelestarian benda cagar budaya meningkatkan identitas dan kebanggaan budaya. Dengan melestarikan warisan budaya dapat menjaga kesinambungan dan keterhubungan dengan masa lalu. Terakhir, benda cagar budaya menarik pariwisata dan menghasilkan pendapatan bagi masyarakat lokal. Misalnya, situs warisan budaya dan museum merupakan tujuan wisata populer yang dapat membantu mendukung perekonomian lokal. Melestarikan benda cagar budaya memerlukan serangkaian tindakan konservasi preventif. Upaya konservasi benda cagar budaya di era teknologi saat ini sangat dapat dilakukan dengan cara digitalisasi (Agustinova, 2022).\r\nDigitalisasi cagar budaya sendiri dapat diartikan sebagai bentuk pengelolaan benda cagar budaya dengan menggunakan teknologi digital (Agustinova, 2022). Pemanfaatan teknologi digital ini akan memberikan efektivitas dan efisiensi dalam perlindungan warisan budaya. Dalam konteks ini, media digital dapat digunakan untuk mengumpulkan data, mencatat, menyimpan, mengelola dan menyebarkan informasi warisan budaya. Digitisasi benda cagar budaya dapat bermacam-macam bentuknya (Kemendikbud), antara lain pemindaian dan pemodelan 3D, teknik pencitraan seperti fotogrametri dan CT scan, serta digitalisasi teks tertulis dan manuskrip melalui transkripsi dan pengenalan karakter optik. Pemindaian dan pemodelan 3D memungkinkan representasi digital yang akurat dari suatu objek, yang dapat digunakan untuk membuat museum atau galeri virtual. Teknik pencitraan seperti fotogrametri dan CT scan dapat memberikan informasi detail mengenai struktur dan komposisi suatu objek, sehingga dapat berguna untuk tujuan konservasi.\r\nPelestarian warisan budaya melalui digitalisasi penting dilakukan untuk mempertahankan keberadaan warisan budaya yang terancam rusak atau hilang di kemudian hari. Digitalisasi akan mempermudah promosi kekayaan budaya secara internasional dan dapat melibatkan lebih banyak komunitas dalam konservasinya. Digitalisasi warisan budaya di Indonesia juga menghadapi tantangan tersendiri, seperti keterbatasan sumber daya manusia dan infrastruktur, kurangnya standar operasional prosedur, dan kesulitan mengakses objek warisan budaya dalam kondisi tertentu.\r\nKonservasi cagar budaya dapat dilakukan digitalisasi dengan memanfaatkan kemajuan ilmu pengetahuan dan teknologi, salah satunya memanfaatkan ilmu geodesi dalam digitalisasi cagar budaya. Beberapa upaya konservasi tersebut dapat dilakukan pada tiap jenis cagar budaya (BPBC Banten, 2019) yaitu benda cagar budaya, bangunan cagar budaya, struktur cagar budaya, situs cagar budaya, dan kawasan cagar budaya. Konservasi warisan budaya dapat dilakukan melalui kegiatan dokumentasi yang bertujuan untuk melindungi keaslian aset. Metode closed range photogrammetry dapat berperan dalam proses pendokumentasian cagar budaya yang berwujud fisik. Proses pembentukan model 3D dengan metode closed range photogrammetry membuat proses replikasi menjadi lebih efisien dengan foto sebagai alat pengukurannya. Teknik tersebut dapat digunakan untuk menganalisis struktur, deteksi kerusakan, pergeseran, bagian yang hilang, dan rekayasa rekonstruksi ulang struktur bangunan atau benda. Upaya konservasi tersebut dapat dilakukan secara aerial survey maupun secara terestrial/on ground. Metode yang sering digunakan adalah fotogrametri maupun videogrametri dengan mengakuisisi image pada cagar budaya. Atau bisa juga dengan menggunakan teknologi LiDAR yang akurat, memungkinkan rekonstruksi 3D secara detail dan dipadukan dengan beberapa metode Image Analysis untuk mendeteksi secara efektif bekas kerusakan, cacat, retak, dan berlubang pada dinding atau bahkan kebakaran dari suatu benda atau bangunan dengan menerapkan metode Image Analysis tertentu. Penggambaran    3D  dari objek cagar budaya  akan     lebih    membantu memperjelas   maksud   dari   rancangan   objek   karena bentuk  sesungguhnya  dari  objek  akan  divisualisasikan secara nyata. Dengan kemampuan dan kegunaan dari metode closed range photogrammetry tersebut, dapat dimanfaatkan untuk konservasi cagar budaya yang rawan akan kerusakan karena faktor usia. \r\nSelai dari metode fotogrametri diatas, kurang pahamnya masyarakat umum mengenai definisi cagar budaya serta bagaimana bentuk  penanganan cagar budaya mengakibatkan pengawasan serta program tindak lanjut pengembangan bangunan cagar budaya menjadi terhambat. Maka dengan adanya sistem informasi bangunan cagar budaya berbasis webgis dapat menjadi salah satu sarana informasi untuk masyarakat umum agar dapat ikut berpartisipasi secara aktif dalam pengawasan dan pengelolaan. Dengan adanya sistem informasi bangunan cagar budaya berbasis webgis, maka inventarisasi terhadap bangunan-bangunan yang bernilai historis tinggi dapat dilakukan dengan mudah. Informasi-informasi yang ditampilkan merupakan data yang menunjukkan persebaran dari bangunan cagar budaya yang ada di suatu daerah.\r\nCagar Budaya di masa kini sudah kehilangan pandangannya di masyarakat khususnya anak remaja yang dimana nanti di masa depan akan memimpin dan mewarisi budaya yang ada di daerahnya (Hermawan, 2017). Banyak cara yang sudah dilakukan untuk melestarikan Cagar Budaya.  Namun, terdapat masalah yang perlu diatasi untuk melestarikan Cagar Budaya ini menurut Dinas Kebudayaan dan Pariwisata Kota Malang (2013) dalam Wijaya (2013) menyatakan masalah tentang adanya masyarakat yang masih belum adanya kesadaran dan pengetahuan akan pentingnya benda cagar budaya dan nilai-nilai kebudayaan. Serta faktor dari alam dan pencurian yang akan menghilangkan benda Cagar Budaya yang ada. Salah satu pemecah masalah supaya dapat diatasinya masalah tersebut yaitu dengan mengembangkan Sistem Informasi Geografi Cagar Budaya berbasis web atau biasa disingkat WebGIS (Web based GIS). \r\nMenurut Kusumahati et al (2014) WebGIS (Web based GIS) adalah Aplikasi Sistem Informasi Geografis yang terdistribusi didalam jaringan komputer untuk menyebarluaskan dan mengintegrasikan informasi geografi secara visual pada jaringan internet. WebGIS dibandingkan dengan desktop GIS memberikan beberapa manfaat seperti pemangkasan kurva pembelajaran untuk pengguna akhir, efisiensi beban kerja sumber daya manusia untuk instalasi, efisiensi biaya, dukungan dan pemeliharaan teknis dan keunggulan dalam hal integrasi data non spatial dan data spatial.\r\nPengembangan sistem informasi yang ditujukan untuk membantu melestarikan Cagar Budaya sudah pernah diteliti sebelumya Olukole, 2014. Penelitian ini menggunakan SIG untuk membuat database sumber daya warisan budaya Osogbo sehingga informasi budaya situs warisan ini dapat diarsipkan dan diambil dengan demikian menampilkan potensi pariwisata mereka. Dokumentasi tersebut diwujudkan dalam presentasi digital karena hal ini bermaksud untuk menyoroti warisan budaya Osogbo dan mengembangkan potensi pariwisatanya.\r\nBerdasarkan observasi lapangan yang dilakukan di situs perahu kuno, benda cagar budaya dan barang temuan lainnya dapat dilakukan konservasi dengan cara digitalisasi. Digitalisasi tersebut bertujuan untuk melindungi benda cagar budaya sekaligus media edukasi kepada wisatawan. Perahu Kuno yang ada dapat dilakukan digitalisasi dan dibuat 3D model dengan metode closed range photogrammetry. Kemudian 3D model tersebut dibuat menjadi Augmented Reality untuk dijadikan media edukasi bagi wisatawan. Lalu situs cagar budaya perahu kuno dapat dilakukan digitalisasi konservasi dengan pembuatan WebGIS, dimana WebGIs yang ada terintegrasi dengan seluruh situs cagar budaya satu kabupaten, untuk mempermudah inventarisasi dan pemantauan kondisi untuk menjaga bata-batas cagar budaya yang ada, supaya tetap utuh dan terjaga.', NULL, '2023-08-29 13:05:51', '2023-08-29 13:05:51'),
(22, 'Membongkar Mitos Pompa Hydram: Edukasi dan Inovasi untuk Desa', '[\"desa punjulharjo\"]', 'assets/common/img/projects/1693316908_hEybN7EHQa.png', '[\"assets\\/common\\/img\\/projects\\/1693316908_nC1x9qjYNW.png\"]', 'Oleh: Mohammad Rizqi Abdul Basyith\r\n\r\n\r\n\r\nSaat ini, informasi menyebar dengan cepat melalui media sosial. Namun, terkadang informasi palsu atau hoax juga ikut tersebar. Fenomena ini terlihat dalam kasus beredarnya video hoax tentang pompa hydram yang dianggap sebagai solusi hemat energi listrik oleh warga. Ketika upaya warga untuk menciptakan pompa tersebut gagal dan mengecewakan, rasa kekecewaan dan kerugian dirasakan oleh banyak pihak.\r\nADVERTISEMENT\r\n\r\nProgram \"Perancangan Hydraulic Ram Pump sebagai Media Edukasi Pompa tanpa Listrik kepada Masyarakat\" memiliki tujuan yang kuat untuk memberikan pemahaman yang jelas dan akurat kepada masyarakat mengenai pompa hydram yang sebenarnya. Dengan demikian, program ini bertujuan untuk menghilangkan kebingungan, meningkatkan literasi teknologi, dan mendorong penggunaan teknologi ramah lingkungan.\r\nProgram ini dirancang untuk membangun kesadaran dan keterampilan di seluruh lapisan masyarakat desa Punjulharjo. Dengan pendekatan yang sederhana dan inklusif, program ini dapat diikuti oleh semua warga yang ingin memahami dan mengadopsi teknologi ini.\r\nPada tanggal 08 Agustus 2023, dimulailah program dengan bincang-bincang bersama warga desa Punjulharjo. Warga melaporkan tentang pompa tanpa listrik yang disebut sebagai hydram, yang telah tersebar melalui media sosial. Sayangnya, upaya replikasi pompa tersebut mengalami kegagalan dan menimbulkan kebingungan. Pada tanggal 13 Agustus 2023, dalam rangka membuktikan validitas konsep, pembuatan pompa hydram dimulai. Pada tahap selanjutnya, pelatihan diselenggarakan pada tanggal 19 Agustus 2023, memberikan pemahaman komprehensif tentang prinsip kerja dan cara pembuatan pompa hydram kepada warga. Selain itu, upaya edukasi diperluas melalui pembuatan video YouTube yang menjelaskan secara visual langkah-langkah pembuatan dan konsep pompa hydram.\r\nProgram ini berhasil mencapai sejumlah hasil yang signifikan:\r\nKesadaran masyarakat Punjulharjo terhadap informasi yang perlu disaring semakin meningkat, membantu mengurangi persebaran hoaks.\r\nPemahaman mendalam mengenai prinsip kerja pompa hydram telah menanamkan keterampilan yang berguna dalam penerapan teknologi ini di kehidupan sehari-hari.\r\nVideo edukasi di YouTube tidak hanya mengedukasi warga desa, tetapi juga menjadi sumber belajar bagi masyarakat lebih luas.\r\nProgram ini mendorong terciptanya budaya inovasi dan pemahaman teknologi yang positif di kalangan masyarakat desa.\r\nDengan adanya program ini, masyarakat Punjulharjo memiliki bekal untuk mengambil langkah-langkah nyata menuju keberlanjutan, sambil memastikan bahwa informasi yang mereka peroleh adalah yang terpercaya.', 'https://youtu.be/wN3lYKM7Wyg?si=R98PE_vN0kDGi8_b', '2023-08-29 13:40:54', '2023-08-29 13:48:28'),
(23, 'Logo Situs Perahu Kuno', '[\"Situs Perahu Kuno\"]', 'assets/common/img/projects/1694094456_azV22h3PXH.png', '[\"assets\\/common\\/img\\/projects\\/1694094456_hiauO1Ok5j.png\"]', NULL, NULL, '2023-09-07 13:47:36', '2023-09-07 13:47:36'),
(24, 'Virtual Tour Situs Perahu Kuno', '[\"Situs Perahu Kuno\"]', 'assets/common/img/projects/1694094538_rKS6lwNrML.png', '[\"assets\\/common\\/img\\/projects\\/1694094538_9LH3Z4eF0a.png\"]', NULL, 'https://webobook.com/public/64ed6bec1a6ac42fe663b6a2,en', '2023-09-07 13:48:58', '2023-09-07 13:48:58'),
(25, 'Kencana Ungu', '[\"Keanekaragaman Hayati\"]', 'assets/common/img/projects/1697675022_KZxeRu328p.png', '[\"assets\\/common\\/img\\/projects\\/1697675022_s12fqfUNCE.png\"]', '(Dokumen Pribadi, 2023)\r\nKencana Ungu (Ruellia simplex) merupakan anggota Famili Acanthaceae yang berhabitus herba. Tanaman ini memiliki batang yang berdiri tegak dan tumbuh dengan ketinggian sekitar 30 hingga 60 cm. Daun-daunnya berbentuk oval dengan ujung meruncing, ditempatkan secara berlawanan di batang, dan sering kali memiliki warna hijau gelap yang kontras dengan bunga. Bunga-bunga kencana ungu hadir dalam berbagai warna, termasuk ungu, merah muda, putih, dan merah. Tanaman ini sering ditanam sebagai tanaman hias di taman dan pot, serta memiliki manfaat dalam pengobatan tradisional dalam beberapa budaya. Selain nilai estetika, Kencana Ungu juga memiliki manfaat ekologi sebagai tanaman yang menarik serangga penyerbuk dan memberikan kontribusi estetika dan warna dalam lanskap.', NULL, '2023-10-19 00:23:42', '2023-10-19 00:23:42'),
(26, 'Bambu Petung', '[\"Keanekaragaman Hayati\"]', 'assets/common/img/projects/1697675128_uWJ4BnfUJO.png', '[\"assets\\/common\\/img\\/projects\\/1697675128_BAR75TiyS5.png\"]', '(Dokumen Pribadi,  2023)\r\nBambu Petung (Dendrocalamus asper) merupakan tanaman anggota Famili Poaceae. Bambu dikenal dengan batang yang kuat, seringkali berongga, yang disebut \"ruas,\" dan tumbuh dengan berbagai tinggi, mulai dari spesies semusim yang rendah hingga jenis-jenis besar yang dapat mencapai ketinggian lebih dari 30 meter. Daun-daun bambu umumnya berbentuk lanset atau oval dengan ujung meruncing, tumbuh dalam kelompok-klompok di ruas-ruas batang. Tanaman ini menghasilkan bunga-bunga kecil yang muncul dalam tandan yang dapat bervariasi tergantung pada jenisnya. Bambu memiliki banyak manfaat, termasuk sebagai bahan bangunan, peralatan rumah tangga, alat musik, dan bahan kerajinan. Selain itu, bambu memiliki nilai ekologis karena pertumbuhannya yang cepat dan kemampuannya mengurangi erosi tanah, serta memberikan habitat bagi berbagai hewan.', NULL, '2023-10-19 00:25:28', '2023-10-19 00:25:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'fas fa-code', 'Eligendi explicabo nisi totam quia. Nemo est eius nam exercitationem nesciunt qui libero.', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'UI/UX Design', 'fas fa-basketball-ball', 'Delectus ut sit et nobis. Rerum quod suscipit quia. Velit velit enim ipsa.', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 'Security', 'fas fa-shield-alt', 'Vel maiores quaerat in voluptatibus pariatur. Ipsum quas dolor nihil id. Aut sed quia ut impedit amet laborum sint. Quas dolore ut quod qui.', '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` int(11) NOT NULL,
  `setting_value` longtext NOT NULL,
  `default_value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `default_value`, `created_at`, `updated_at`) VALUES
(1, 2, '#1890ff', '#1890ff', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 3, '0', '0', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 7, 'mix', 'mix', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(4, 8, 'light', 'light', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(5, 9, 'light', 'light', '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(6, 4, 'assets/common/img/logo/74N6vrNKUU_1693327841.jpg', 'assets/common/img/logo/default.png', '2023-08-03 07:06:29', '2023-08-29 16:50:41'),
(7, 5, 'assets/common/img/favicon/tGpAbTuv7N_1693327844.jpg', 'assets/common/img/favicon/default.png', '2023-08-03 07:06:29', '2023-08-29 16:50:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `proficiency` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id`, `name`, `proficiency`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 100, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(2, 'PHP', 100, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(3, 'JavaScript', 95, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(4, 'React.js', 95, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(5, 'Vue.js', 90, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(6, 'jQuery', 90, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(7, 'MySQL', 90, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(8, 'CSS', 90, '2023-08-03 07:06:29', '2023-08-03 07:06:29'),
(9, 'Node.js', 80, '2023-08-03 07:06:29', '2023-08-03 07:06:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tracking_id` varchar(191) NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT 1,
  `ip` varchar(191) DEFAULT NULL,
  `is_desktop` tinyint(1) DEFAULT NULL,
  `browser` varchar(191) DEFAULT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `location` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visitors`
--

INSERT INTO `visitors` (`id`, `tracking_id`, `is_new`, `ip`, `is_desktop`, `browser`, `platform`, `location`, `created_at`, `updated_at`) VALUES
(1, '5ohuT78QhpgXy09SZdGgPqVx97LRpB', 0, '195.3.28.203', 0, 'Edge', 'Windows', 'Slovakia (Slovak Republic)', '2023-07-03 07:26:37', '2023-08-03 07:06:29'),
(2, '75mzucpXjvysXX0dJZrIR45DtoyV01', 1, '78.116.203.95', 0, 'Chrome', 'Windows', 'Costa Rica', '2023-07-14 15:26:30', '2023-08-03 07:06:29'),
(3, 'tFzbdKrBX96U39PVjf9b10EtjGewZv', 0, '196.190.48.186', 1, 'Safari', 'iOS', 'Angola', '2023-07-08 17:56:40', '2023-08-03 07:06:29'),
(4, 'qLkGNMitypQlk7W3Kq4Lz3odyC5iMg', 0, '49.125.78.215', 1, 'Safari', 'iOS', 'Armenia', '2023-07-18 20:17:31', '2023-08-03 07:06:29'),
(5, 'IONAchn6LyqknZilTTgAuN11wmTeCa', 1, '245.81.17.221', 1, 'Opera', 'OS X', 'Gibraltar', '2023-07-20 17:56:24', '2023-08-03 07:06:29'),
(6, 'T3kRP59eQfTfhHFkHCMjQb9Kr5SBk9', 1, '134.2.26.153', 0, 'Safari', 'iOS', 'Seychelles', '2023-08-02 14:13:54', '2023-08-03 07:06:29'),
(7, 'aLhkyQq6XIqlzdKLMjicggwMxSUA0h', 0, '248.67.77.158', 0, 'Opera', 'Windows', 'Saint Barthelemy', '2023-07-14 03:43:25', '2023-08-03 07:06:29'),
(8, 'ZyME8EwX5nItMaOBINbQXluXVmzCXV', 1, '220.142.207.78', 1, 'Edge', 'iOS', 'Namibia', '2023-07-11 00:29:58', '2023-08-03 07:06:29'),
(9, 'SpQovP6pDwp7Yfs2n3SZS0AHs0YoP9', 1, '63.44.212.234', 1, 'Firefox', 'Windows', 'Lao People\'s Democratic Republic', '2023-07-18 19:47:22', '2023-08-03 07:06:29'),
(10, 'm9n2K6L0q0kFjn0fKL0mjIwsPcGvvL', 1, '172.224.92.50', 1, 'Edge', 'OS X', 'Guinea', '2023-08-01 11:51:12', '2023-08-03 07:06:29'),
(11, 'Tzj95qQsoSgoypTRHus0KOInjSdweL', 0, '23.17.201.206', 0, 'Chrome', 'iOS', 'Iraq', '2023-07-29 08:16:28', '2023-08-03 07:06:29'),
(12, 'tRg4fD2UciT0zHAPj5W2nvWi2cdkOo', 1, '57.68.78.173', 1, 'Opera', 'AndroidOS', 'El Salvador', '2023-07-07 13:34:55', '2023-08-03 07:06:29'),
(13, '2FVYtYnmu215A17r0dr40vRhe3kNI6', 1, '43.53.10.135', 1, 'Firefox', 'Windows', 'Netherlands Antilles', '2023-08-02 18:39:36', '2023-08-03 07:06:29'),
(14, 'Zv9YUzhozBWARm123mEbPOnRPsc8X7', 1, '178.200.157.182', 0, 'Edge', 'Windows', 'Gibraltar', '2023-07-12 17:02:00', '2023-08-03 07:06:29'),
(15, 'PqvK6YZelSZTb7qu5ixdE60oLRDyJ1', 1, '3.104.209.241', 1, 'Opera', 'OS X', 'Bulgaria', '2023-07-13 05:54:27', '2023-08-03 07:06:30'),
(16, 'H9FNJDBjEJTvOahaICyFffj1JvRtZA', 1, '85.156.211.165', 1, 'Chrome', 'Windows', 'Oman', '2023-08-01 05:55:32', '2023-08-03 07:06:30'),
(17, 'RLjZBGRbKexeZtMH5ynX7wawwBHR2v', 1, '198.206.252.60', 1, 'Chrome', 'OS X', 'Eritrea', '2023-07-20 07:12:19', '2023-08-03 07:06:30'),
(18, 'uBUqIMY8G8Ff4CduB58C5wB7be3Kbh', 1, '66.98.97.212', 0, 'Firefox', 'OS X', 'Nauru', '2023-07-28 22:47:40', '2023-08-03 07:06:30'),
(19, '5mrpmzrv2lQvSsKKtqMZbfUDzcSucP', 0, '161.5.137.84', 0, 'Firefox', 'OS X', 'Sao Tome and Principe', '2023-07-24 14:09:39', '2023-08-03 07:06:30'),
(20, 'BgJIKJH4Rkz2gYTbBDU0s7jjl3bInh', 1, '218.35.163.177', 1, 'Chrome', 'iOS', 'Trinidad and Tobago', '2023-08-01 05:41:26', '2023-08-03 07:06:30'),
(21, 'NirGWVdbA216HXhYQm21Wm8rPR2oYl', 0, '5.16.142.192', 1, 'Firefox', 'AndroidOS', 'Uganda', '2023-07-19 04:54:46', '2023-08-03 07:06:30'),
(22, 'TpxaBZCpqIOi8sGpFXdZEUKSFgmAzJ', 1, '172.108.23.233', 1, 'Chrome', 'AndroidOS', 'Papua New Guinea', '2023-07-24 07:41:34', '2023-08-03 07:06:30'),
(23, 'BaVUog2QCtlS1ke6UcIpq3gxQLagKr', 1, '236.80.20.133', 1, 'Opera', 'iOS', 'United States Virgin Islands', '2023-08-03 01:43:57', '2023-08-03 07:06:30'),
(24, 'ZQvKIkXHDHYSJQrCKhtgKOnVdrEqeB', 1, '144.213.92.226', 1, 'Chrome', 'Windows', 'Brunei Darussalam', '2023-07-07 06:00:15', '2023-08-03 07:06:30'),
(25, '1TlwosjBilp9oOF4q908PhsOu7uGrH', 1, '213.17.62.168', 1, 'Edge', 'AndroidOS', 'Turkey', '2023-07-09 16:31:31', '2023-08-03 07:06:30'),
(26, '00CQ6JvUc65KaRxpbgT9OULdUfAqgr', 1, '192.129.255.119', 0, 'Opera', 'iOS', 'Kuwait', '2023-07-15 08:34:30', '2023-08-03 07:06:30'),
(27, '3rtGPYkfrPvqMjeK9jSjXJPBXCvcba', 0, '240.220.177.15', 0, 'Opera', 'iOS', 'United States of America', '2023-07-17 13:13:34', '2023-08-03 07:06:30'),
(28, 'D5IougMO8jhswymHOCgYdbKrVSliCO', 0, '32.168.195.250', 1, 'Opera', 'Windows', 'Greenland', '2023-07-11 04:24:41', '2023-08-03 07:06:30'),
(29, '3sccJvY2cUl2RlfKc9FZL5p57nSTHW', 1, '169.115.175.93', 1, 'Opera', 'AndroidOS', 'Saint Kitts and Nevis', '2023-08-02 03:43:34', '2023-08-03 07:06:30'),
(30, 'gDXVg05HEzwcpyYmHOH0gOo4NhY6tr', 1, '94.157.7.142', 1, 'Safari', 'AndroidOS', 'Brazil', '2023-07-19 17:01:50', '2023-08-03 07:06:30'),
(31, '6ayWf9Az28gtmFKYiYfck7HfLGpBBc', 0, '128.180.98.33', 1, 'Chrome', 'iOS', 'Morocco', '2023-07-31 18:45:42', '2023-08-03 07:06:30'),
(32, 'qgC78MBLZNow6VoHems5bNVo2ssZci', 1, '170.254.149.151', 1, 'Opera', 'iOS', 'Cape Verde', '2023-07-16 14:43:12', '2023-08-03 07:06:30'),
(33, 'nbRNPYQV1D6YF44q6jViDNMNSAnU8O', 0, '60.253.68.232', 1, 'Chrome', 'iOS', 'Netherlands Antilles', '2023-07-04 17:11:54', '2023-08-03 07:06:30'),
(34, 'eB9vlQdZ9yp5tFWrJeIUEKQ6vDAJIU', 1, '71.80.179.135', 1, 'Chrome', 'AndroidOS', 'Denmark', '2023-07-15 21:52:10', '2023-08-03 07:06:30'),
(35, 'N3WRlAHbhSmuqF6jzMKojgt3TKd2gx', 0, '218.22.137.114', 1, 'Safari', 'OS X', 'Bermuda', '2023-07-24 22:13:10', '2023-08-03 07:06:30'),
(36, '20lKZXEbA18OhkiwXmGgUUkBwMfjRM', 1, '32.203.178.149', 1, 'Safari', 'AndroidOS', 'Grenada', '2023-07-25 21:26:43', '2023-08-03 07:06:30'),
(37, 'RwOLGt9cmDQm52liFrA48ZPJjsO827', 1, '196.208.13.159', 1, 'Opera', 'iOS', 'Haiti', '2023-07-14 23:19:28', '2023-08-03 07:06:30'),
(38, 'lJrfN9XcvDII2XhDOom0G3K9WRhVrv', 1, '19.220.235.8', 1, 'Chrome', 'iOS', 'San Marino', '2023-07-31 00:36:34', '2023-08-03 07:06:30'),
(39, 'jyhgSgI0bzy0DNNr901cfH8zRs5laW', 0, '199.149.83.151', 0, 'Edge', 'OS X', 'New Caledonia', '2023-07-23 01:24:52', '2023-08-03 07:06:30'),
(40, 'OFQWir9eXFc6zLPtx2jPwXKJdXK0zG', 1, '244.25.118.241', 1, 'Edge', 'iOS', 'Falkland Islands (Malvinas)', '2023-07-27 13:02:38', '2023-08-03 07:06:30'),
(41, 'CMfWBDvECDoPq25TfNneaS1xodXoLU', 0, '5.45.153.252', 0, 'Firefox', 'iOS', 'Reunion', '2023-07-15 08:13:05', '2023-08-03 07:06:30'),
(42, 'ARDXC07OPH3ZUFeD3mLyHnoxTRRL92', 1, '243.89.181.122', 0, 'Chrome', 'iOS', 'Lao People\'s Democratic Republic', '2023-07-28 14:43:58', '2023-08-03 07:06:30'),
(43, 'd84p14uzZxgAW9Q0kMBZmPiIRu6cMo', 1, '43.57.87.114', 0, 'Opera', 'OS X', 'Central African Republic', '2023-07-09 07:26:18', '2023-08-03 07:06:30'),
(44, 'OFKD0FdusIg7Hn3B7NobUatTTNHnin', 1, '128.108.2.154', 0, 'Opera', 'OS X', 'Myanmar', '2023-07-19 19:24:09', '2023-08-03 07:06:30'),
(45, 'jRstC2TYvYAx9iAix3gGYyEwdqYXpe', 0, '221.40.192.218', 1, 'Chrome', 'Windows', 'Trinidad and Tobago', '2023-07-06 22:03:56', '2023-08-03 07:06:30'),
(46, 'KBY4ID9d6w90fJ23GoDwCDyVHfr1bR', 1, '139.254.56.86', 1, 'Chrome', 'OS X', 'Timor-Leste', '2023-07-18 09:36:54', '2023-08-03 07:06:30'),
(47, 'KR9SgYiyXlat2xlucbURjhJLt3uNsc', 0, '172.136.69.64', 1, 'Firefox', 'OS X', 'Kiribati', '2023-07-25 04:13:46', '2023-08-03 07:06:30'),
(48, 'iuP8lWud4i7NNJ7xmXGaYomzaiRoJR', 1, '145.177.99.135', 1, 'Safari', 'OS X', 'Christmas Island', '2023-07-31 18:10:42', '2023-08-03 07:06:30'),
(49, 'TEsu0WNM99b7rbccEWSWtO8QsuTiKM', 0, '199.108.40.184', 1, 'Firefox', 'AndroidOS', 'Chile', '2023-07-19 10:35:44', '2023-08-03 07:06:30'),
(50, 'stk3DdpOeu4aHU4NDrnM8DiIR04Qav', 1, '12.82.239.91', 1, 'Opera', 'iOS', 'Guadeloupe', '2023-07-05 09:05:10', '2023-08-03 07:06:30'),
(51, 'Ig4L3zcwkVeximmiCZv5tf64WU67Av', 1, '206.64.94.142', 0, 'Firefox', 'iOS', 'Romania', '2023-07-17 15:25:22', '2023-08-03 07:06:30'),
(52, 'fw7fGLxmxFKrchuksPv4ulvPiZ3EhH', 0, '222.11.93.206', 0, 'Safari', 'iOS', 'Macao', '2023-07-12 23:58:41', '2023-08-03 07:06:30'),
(53, 'YxUSM3JcWPjOdKSNmuF7a9pFf419Kd', 0, '57.139.248.197', 1, 'Edge', 'iOS', 'Tuvalu', '2023-07-19 05:16:33', '2023-08-03 07:06:30'),
(54, 'AImxBFGiOBHSEFNAQnyb9c0sbC15qN', 0, '105.152.210.81', 1, 'Opera', 'Windows', 'Macao', '2023-07-19 18:37:28', '2023-08-03 07:06:30'),
(55, 'lbfD0Fn4WnsucpOloiagmMvbeYTuO7', 0, '70.6.63.87', 1, 'Firefox', 'AndroidOS', 'Papua New Guinea', '2023-07-09 21:43:37', '2023-08-03 07:06:30'),
(56, '0CI4gsUoobVe960nK2o3M0T8jV8vOK', 1, '97.115.230.0', 1, 'Firefox', 'iOS', 'Liberia', '2023-07-30 14:00:52', '2023-08-03 07:06:30'),
(57, 'LjrMQShz7hsEicpPsnyUp8dUv3Nqgt', 0, '190.215.71.178', 0, 'Safari', 'iOS', 'Chad', '2023-07-16 14:15:32', '2023-08-03 07:06:30'),
(58, 'kGnxbAb1rXab3F2aH4AbrjcHvkDnV5', 0, '71.86.162.242', 1, 'Chrome', 'Windows', 'Slovakia (Slovak Republic)', '2023-07-11 17:43:50', '2023-08-03 07:06:30'),
(59, 'hd7VUCBvnI77j4IlcioVYW5e6L3CCf', 1, '81.68.123.24', 1, 'Opera', 'OS X', 'French Guiana', '2023-07-18 15:37:29', '2023-08-03 07:06:30'),
(60, 'ZUGxQosSc0MrxFYwV9hhQVk2Z2Cyyr', 0, '89.90.5.84', 1, 'Opera', 'iOS', 'Philippines', '2023-07-12 08:48:08', '2023-08-03 07:06:30'),
(61, '1xv2xG8aVtIjzp5s0mDCsQGlCi3SmB', 0, '32.132.225.15', 1, 'Chrome', 'OS X', 'Haiti', '2023-07-21 04:29:04', '2023-08-03 07:06:30'),
(62, 'm89ioCsfoKrjuzpbuQeo41HIdqVszm', 1, '255.90.151.113', 0, 'Edge', 'AndroidOS', 'Cote d\'Ivoire', '2023-07-13 17:59:37', '2023-08-03 07:06:30'),
(63, 'ClqZMz2lWQhGWUSNUaFApVJBH6dIOD', 0, '55.24.225.226', 1, 'Chrome', 'OS X', 'Dominican Republic', '2023-07-05 10:16:51', '2023-08-03 07:06:30'),
(64, 'BrAWSVaepyOSZVeBvXhmwhg0X9N5kf', 1, '70.235.165.87', 0, 'Safari', 'AndroidOS', 'Faroe Islands', '2023-08-03 06:29:16', '2023-08-03 07:06:30'),
(65, 'mdoWSh6bO53sS6UWaoqm3by2vA7Wdd', 1, '28.225.64.247', 0, 'Chrome', 'Windows', 'United States Minor Outlying Islands', '2023-08-03 04:06:30', '2023-08-03 07:06:30'),
(66, 'v7ikkXZmLSwwgWHLGP5ugghyb4bNk6', 1, '173.226.121.240', 1, 'Safari', 'iOS', 'Somalia', '2023-08-02 05:44:04', '2023-08-03 07:06:30'),
(67, '6sVFB2Ol1gMiwC5qkjamEa7Lzy3HCI', 1, '209.39.24.239', 1, 'Safari', 'Windows', 'Philippines', '2023-07-30 16:12:33', '2023-08-03 07:06:30'),
(68, 'IAt3Uz1ihPzKXb7b4QRMfXNReUprSP', 1, '236.51.68.64', 1, 'Edge', 'OS X', 'Malta', '2023-07-07 15:58:09', '2023-08-03 07:06:30'),
(69, 'bS8K2kvIK1dEfOGD1RkcOi8JOIMw7i', 0, '166.197.106.3', 0, 'Edge', 'Windows', 'Angola', '2023-07-09 21:42:25', '2023-08-03 07:06:30'),
(70, 'PMO3ku09y591388NqpS5pmomDE2O3J', 1, '176.43.80.210', 0, 'Edge', 'iOS', 'Northern Mariana Islands', '2023-07-16 18:53:33', '2023-08-03 07:06:30'),
(71, 'MfXawXpanEWE3DjUSFaAyWJZ6RsFud', 0, '156.37.7.249', 1, 'Firefox', 'Windows', 'Namibia', '2023-08-02 02:02:24', '2023-08-03 07:06:30'),
(72, 'xwaW8ZdRbWZaAit5eYNIkbW4Zu9260', 0, '44.134.67.105', 0, 'Safari', 'OS X', 'Paraguay', '2023-07-24 12:20:17', '2023-08-03 07:06:30'),
(73, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 1, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 07:14:08', '2023-08-03 07:14:08'),
(74, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 07:35:49', '2023-08-03 07:35:49'),
(75, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 07:51:54', '2023-08-03 07:51:54'),
(76, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 08:17:08', '2023-08-03 08:17:08'),
(77, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 08:18:30', '2023-08-03 08:18:30'),
(78, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:08:40', '2023-08-03 10:08:40'),
(79, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:09:04', '2023-08-03 10:09:04'),
(80, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:10:02', '2023-08-03 10:10:02'),
(81, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:26:49', '2023-08-03 10:26:49'),
(82, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 10:30:00', '2023-08-03 10:30:00'),
(83, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-03 20:11:05', '2023-08-03 20:11:05'),
(84, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-13 20:43:29', '2023-08-13 20:43:29'),
(85, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-13 20:44:45', '2023-08-13 20:44:45'),
(86, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-15 21:02:22', '2023-08-15 21:02:22'),
(87, '0HHnF1wl54s9TXAwfRv0dS4558YCQz', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-15 21:04:29', '2023-08-15 21:04:29'),
(88, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 1, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:14:59', '2023-08-17 00:14:59'),
(89, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:16:36', '2023-08-17 00:16:36'),
(90, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:19:15', '2023-08-17 00:19:15'),
(91, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:19:57', '2023-08-17 00:19:57'),
(92, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:21:23', '2023-08-17 00:21:23'),
(93, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:25:48', '2023-08-17 00:25:48'),
(94, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:30:52', '2023-08-17 00:30:52'),
(95, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:43:08', '2023-08-17 00:43:08'),
(96, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 00:47:11', '2023-08-17 00:47:11'),
(97, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 01:28:48', '2023-08-17 01:28:48'),
(98, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 01:43:27', '2023-08-17 01:43:27'),
(99, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 01:49:02', '2023-08-17 01:49:02'),
(100, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 01:50:57', '2023-08-17 01:50:57'),
(101, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 01:51:06', '2023-08-17 01:51:06'),
(102, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 01:52:43', '2023-08-17 01:52:43'),
(103, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 01:54:33', '2023-08-17 01:54:33'),
(104, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 19:44:09', '2023-08-17 19:44:09'),
(105, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 19:44:40', '2023-08-17 19:44:40'),
(106, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 19:46:29', '2023-08-17 19:46:29'),
(107, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 23:25:54', '2023-08-17 23:25:54'),
(108, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 23:26:12', '2023-08-17 23:26:12'),
(109, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-17 23:26:17', '2023-08-17 23:26:17'),
(110, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-18 00:11:41', '2023-08-18 00:11:41'),
(111, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-18 00:11:55', '2023-08-18 00:11:55'),
(112, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-18 00:18:34', '2023-08-18 00:18:34'),
(113, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-18 01:38:13', '2023-08-18 01:38:13'),
(114, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-18 01:38:41', '2023-08-18 01:38:41'),
(115, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-18 02:01:36', '2023-08-18 02:01:36'),
(116, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-21 19:48:57', '2023-08-21 19:48:57'),
(117, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-21 19:52:24', '2023-08-21 19:52:24'),
(118, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-21 19:53:08', '2023-08-21 19:53:08'),
(119, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-21 19:53:23', '2023-08-21 19:53:23'),
(120, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-21 19:54:47', '2023-08-21 19:54:47'),
(121, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-21 19:59:25', '2023-08-21 19:59:25'),
(122, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-21 20:00:15', '2023-08-21 20:00:15'),
(123, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-21 20:17:29', '2023-08-21 20:17:29'),
(124, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-23 07:11:30', '2023-08-23 07:11:30'),
(125, 'E6Cirno8ZhHn877nGSKAGyoV6a0gLn', 0, '127.0.0.1', 1, 'Chrome', 'Windows', 'Unknown', '2023-08-23 07:20:07', '2023-08-23 07:20:07'),
(126, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 1, '182.2.52.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 14:56:54', '2023-08-23 14:56:54'),
(127, 'hZ3oXS9NttSrW5o5Q2HA4JmiCKZcoS', 1, '182.2.52.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-23 14:57:35', '2023-08-23 14:57:35'),
(128, '02xSX8ljOcVKnXOw2qs48P7dfAFtkK', 1, '103.181.255.45', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 14:57:40', '2023-08-23 14:57:40'),
(129, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 1, '182.2.52.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-23 14:57:48', '2023-08-23 14:57:48'),
(130, 'RT8FXmizsPS9ZmiCS15Y9vC6XiW0AT', 1, '140.213.171.97', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 14:58:16', '2023-08-23 14:58:16'),
(131, 'DHC7pgObWRtaRLmWMnkmK6KJnecKw0', 1, '2001:448a:4030:297b:84dd:c614:c72a:be9a', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-23 14:59:41', '2023-08-23 14:59:41'),
(132, 'DHC7pgObWRtaRLmWMnkmK6KJnecKw0', 0, '2001:448a:4030:297b:84dd:c614:c72a:be9a', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-23 15:00:25', '2023-08-23 15:00:25'),
(133, 'gHSQBHpdNDomlY7OSBI6SD8FILjMbF', 1, '182.2.51.74', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:00:28', '2023-08-23 15:00:28'),
(134, 'FjjUu97FjTPBU9PgiJAWsSv3xeeuH2', 1, '182.2.37.34', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:01:06', '2023-08-23 15:01:06'),
(135, '51JLGxf8Tc8Zx4OsjXhZZfEjMIvFer', 1, '2001:448a:4030:297b:b0f2:1de7:4b1f:7512', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:01:33', '2023-08-23 15:01:33'),
(136, 'Pj31uEbAQ42dRhlcMvWEh1GsR9I7Jd', 1, '202.43.172.5', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:02:35', '2023-08-23 15:02:35'),
(137, 'FjjUu97FjTPBU9PgiJAWsSv3xeeuH2', 0, '182.2.37.34', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:03:24', '2023-08-23 15:03:24'),
(138, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 1, '182.2.82.148', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:03:32', '2023-08-23 15:03:32'),
(139, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.82.148', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:04:27', '2023-08-23 15:04:27'),
(140, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.52.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:05:21', '2023-08-23 15:05:21'),
(141, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.52.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-23 15:05:38', '2023-08-23 15:05:38'),
(142, '2qQw1jTEVkcOTg7o6C6ziDVLa807a7', 1, '182.2.85.211', 1, 'Safari', 'Linux', 'Indonesia', '2023-08-23 15:07:26', '2023-08-23 15:07:26'),
(143, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.52.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:11:27', '2023-08-23 15:11:27'),
(144, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.82.148', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:12:06', '2023-08-23 15:12:06'),
(145, 'Yu5dcwmm99aG9NsGtGHRKtffApdTPs', 1, '2001:448a:4030:297b:c8f0:17db:1541:de57', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:12:19', '2023-08-23 15:12:19'),
(146, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.82.148', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:12:34', '2023-08-23 15:12:34'),
(147, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.82.148', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:12:38', '2023-08-23 15:12:38'),
(148, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.82.148', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:13:02', '2023-08-23 15:13:02'),
(149, 'Yu5dcwmm99aG9NsGtGHRKtffApdTPs', 0, '2001:448a:4030:297b:c8f0:17db:1541:de57', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:13:06', '2023-08-23 15:13:06'),
(150, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.82.148', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:13:15', '2023-08-23 15:13:15'),
(151, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.82.148', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:13:25', '2023-08-23 15:13:25'),
(152, '02xSX8ljOcVKnXOw2qs48P7dfAFtkK', 0, '103.181.255.45', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:13:36', '2023-08-23 15:13:36'),
(153, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.52.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:17:04', '2023-08-23 15:17:04'),
(154, 'DHC7pgObWRtaRLmWMnkmK6KJnecKw0', 0, '2001:448a:4030:297b:84dd:c614:c72a:be9a', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-23 15:18:35', '2023-08-23 15:18:35'),
(155, 'BeAUtjGaduiXp5AlwUDPx2nAuGnVK8', 1, '140.213.171.97', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:19:16', '2023-08-23 15:19:16'),
(156, '66GhQRdqwupgFSsZEd5ljHXbdu9hyj', 1, '103.105.27.108', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:19:44', '2023-08-23 15:19:44'),
(157, 'UKkwwHoMxNphbx4gDqTRc5Anx0FAn8', 1, '110.50.80.196', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:19:52', '2023-08-23 15:19:52'),
(158, '66GhQRdqwupgFSsZEd5ljHXbdu9hyj', 0, '103.105.27.108', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:20:18', '2023-08-23 15:20:18'),
(159, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 1, '140.213.171.97', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 15:21:44', '2023-08-23 15:21:44'),
(160, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.52.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:29:46', '2023-08-23 15:29:46'),
(161, 'wRZUcP6T4eIC3BnQIT8gUmvmYlLDV0', 1, '44.236.207.248', 1, 'Chrome', 'Linux', 'United States', '2023-08-23 15:30:31', '2023-08-23 15:30:31'),
(162, 'TZPnXiYnDvNUYqznGRLI5FbtJUhsxG', 1, '2001:448a:4030:297b:d849:e21:45ab:8d8', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:30:34', '2023-08-23 15:30:34'),
(163, 'fP6L5ZLXmGsy81FHKbsbXLtFKryAxy', 1, '44.236.207.248', 1, 'Chrome', 'Linux', 'United States', '2023-08-23 15:30:34', '2023-08-23 15:30:34'),
(164, 'wRZUcP6T4eIC3BnQIT8gUmvmYlLDV0', 0, '44.236.207.248', 1, 'Chrome', 'Linux', 'United States', '2023-08-23 15:30:36', '2023-08-23 15:30:36'),
(165, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.52.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:33:17', '2023-08-23 15:33:17'),
(166, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.52.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 15:54:59', '2023-08-23 15:54:59'),
(167, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.52.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-23 16:10:09', '2023-08-23 16:10:09'),
(168, 'bBzzGuQzADZYUD9U6UKDESxjJwQUSI', 1, '223.255.228.99', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 16:54:10', '2023-08-23 16:54:10'),
(169, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 17:19:13', '2023-08-23 17:19:13'),
(170, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 17:20:22', '2023-08-23 17:20:22'),
(171, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 17:21:22', '2023-08-23 17:21:22'),
(172, 'UV3lUjeIrx4ZF8x7OJmzgWLsWO8kN6', 1, '205.169.39.108', 1, 'Chrome', 'Windows', 'United States', '2023-08-23 17:34:00', '2023-08-23 17:34:00'),
(173, 'DHC7pgObWRtaRLmWMnkmK6KJnecKw0', 0, '2001:448a:4030:297b:84dd:c614:c72a:be9a', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-23 18:08:15', '2023-08-23 18:08:15'),
(174, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 18:25:26', '2023-08-23 18:25:26'),
(175, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-23 18:26:36', '2023-08-23 18:26:36'),
(176, 'hZ3oXS9NttSrW5o5Q2HA4JmiCKZcoS', 0, '182.2.43.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-23 18:29:25', '2023-08-23 18:29:25'),
(177, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-23 18:29:41', '2023-08-23 18:29:41'),
(178, 'FjjUu97FjTPBU9PgiJAWsSv3xeeuH2', 0, '36.81.9.165', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-23 23:17:10', '2023-08-23 23:17:10'),
(179, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.127.82', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-24 01:40:45', '2023-08-24 01:40:45'),
(180, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.127.82', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-24 01:44:52', '2023-08-24 01:44:52'),
(181, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.127.82', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-24 01:48:00', '2023-08-24 01:48:00'),
(182, 'h4TXWxpeTbSzzLzoN1Bj56kpH3p05k', 1, '140.213.171.14', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-24 02:24:31', '2023-08-24 02:24:31'),
(183, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.151', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-24 02:59:13', '2023-08-24 02:59:13'),
(184, 'FjjUu97FjTPBU9PgiJAWsSv3xeeuH2', 0, '2001:448a:4030:297b:8d00:e6fc:2533:5c40', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-24 03:10:32', '2023-08-24 03:10:32'),
(185, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 1, '103.105.35.94', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-24 04:04:07', '2023-08-24 04:04:07'),
(186, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '103.105.35.94', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-24 04:05:14', '2023-08-24 04:05:14'),
(187, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.52.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-24 05:25:39', '2023-08-24 05:25:39'),
(188, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.151', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-24 08:12:17', '2023-08-24 08:12:17'),
(189, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.151', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-24 15:22:33', '2023-08-24 15:22:33'),
(190, 'DHC7pgObWRtaRLmWMnkmK6KJnecKw0', 0, '2001:448a:4030:297b:84dd:c614:c72a:be9a', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-24 16:44:40', '2023-08-24 16:44:40'),
(191, 'OrDA4c3KfyiHH19J22JQJWdTeMWVq7', 1, '18.188.185.106', 1, 'Chrome', 'Linux', 'United States', '2023-08-24 19:01:02', '2023-08-24 19:01:02'),
(192, '3lZ2jFp1keAOx6Vbj23LY1duaMfZIH', 1, '3.144.218.78', 1, 'Chrome', 'Linux', 'United States', '2023-08-24 19:01:52', '2023-08-24 19:01:52'),
(193, '4E7vgtNr9bRQzgaHHBhPpP9tyx4hV3', 1, '119.13.204.49', 0, 'Safari', 'iOS', 'United States', '2023-08-24 19:10:20', '2023-08-24 19:10:20'),
(194, 'di1ZahoWgDkoJyRDAEpSK12mrZgKkg', 1, '94.176.58.94', 0, 'Safari', 'iOS', 'United States', '2023-08-24 19:11:09', '2023-08-24 19:11:09'),
(195, 'zDM9REE3xn94YJdmg6WeQp50qk2NFO', 1, '64.57.140.24', 1, 'Chrome', 'Windows', 'United States', '2023-08-24 22:56:21', '2023-08-24 22:56:21'),
(196, 'kFmUaz2UeRiEuXbKFsGPfJHkV3qAfl', 1, '114.10.17.194', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-25 00:14:32', '2023-08-25 00:14:32'),
(197, 'kFmUaz2UeRiEuXbKFsGPfJHkV3qAfl', 0, '114.10.17.194', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-25 00:14:32', '2023-08-25 00:14:32'),
(198, '66GhQRdqwupgFSsZEd5ljHXbdu9hyj', 0, '103.105.27.96', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-25 01:26:35', '2023-08-25 01:26:35'),
(199, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.52.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-25 03:17:07', '2023-08-25 03:17:07'),
(200, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.52.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-25 03:17:13', '2023-08-25 03:17:13'),
(201, 'l8luclnDKbY92Lehu0nwxFu3e1dIyC', 1, '35.91.184.177', 1, 'Firefox', 'Windows', 'United States', '2023-08-25 04:08:16', '2023-08-25 04:08:16'),
(202, 'PWiYHg1T3cN7GLnNMO1hOcRuNOvaf6', 1, '95.177.180.82', 0, 'Safari', 'iOS', 'Saudi Arabia', '2023-08-25 04:15:38', '2023-08-25 04:15:38'),
(203, 'iQopgveeZehNYsAboLMKTk1l2rjO8b', 1, '149.56.150.152', 0, 'Mozilla', '0', 'Canada', '2023-08-25 05:22:13', '2023-08-25 05:22:13'),
(204, '7lAjjbmGMn2uj3v8vzlARoyCdu6feO', 1, '3.229.134.128', 1, 'Chrome', 'Windows', 'United States', '2023-08-25 07:15:32', '2023-08-25 07:15:32'),
(205, 'g5f2h4V5tSzcbxW9YBgpL6w9sBN7a9', 1, '34.236.37.42', 1, 'Chrome', 'Windows', 'United States', '2023-08-25 07:15:32', '2023-08-25 07:15:32'),
(206, 'qNIArm1GF4AXwOXUZIwUni9B8zmn5V', 1, '216.251.130.74', 0, 'Chrome', 'Linux', 'Canada', '2023-08-25 09:33:20', '2023-08-25 09:33:20'),
(207, 'ak6Es3fsvoqMvqd2p3rt2RR7jXvFiB', 1, '104.28.219.247', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-25 14:07:03', '2023-08-25 14:07:03'),
(208, 'z9zuLpcCtDikf9wIGHkvuMmuABnKCY', 1, '114.79.17.75', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-25 14:07:27', '2023-08-25 14:07:27'),
(209, 'z9zuLpcCtDikf9wIGHkvuMmuABnKCY', 0, '114.79.17.75', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-25 14:10:50', '2023-08-25 14:10:50'),
(210, 'x4hhLrtX5vGRmadofuSJtmFkNKtW4R', 1, '149.56.150.200', 0, 'Mozilla', '0', 'Canada', '2023-08-25 18:22:08', '2023-08-25 18:22:08'),
(211, 'mMNduv4a1krKqAChcPYNfY8VZ3PVUS', 1, '152.39.255.203', 0, 'Safari', 'iOS', 'United States', '2023-08-25 19:10:26', '2023-08-25 19:10:26'),
(212, 'fVkNQWEuiqc7X9B801reE9GFI39LY8', 1, '95.177.163.4', 0, 'Safari', 'iOS', 'Saudi Arabia', '2023-08-26 02:36:28', '2023-08-26 02:36:28'),
(213, 'kenVbF29JXfSNgyMYZLgljAXEI8uT8', 1, '205.169.39.117', 1, 'Chrome', 'Windows', 'United States', '2023-08-26 05:42:22', '2023-08-26 05:42:22'),
(214, 'oZ2UhlltNkipqKDlBWGRiqHj7Cijgm', 1, '216.251.130.74', 0, 'Chrome', 'Linux', 'Canada', '2023-08-26 06:15:19', '2023-08-26 06:15:19'),
(215, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '2001:448a:4030:66a6:edc4:121c:624b:6f18', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-26 07:07:32', '2023-08-26 07:07:32'),
(216, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '2001:448a:4030:66a6:9c14:9900:41bc:337d', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-26 07:07:57', '2023-08-26 07:07:57'),
(217, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '2001:448a:4030:66a6:9c14:9900:41bc:337d', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-26 07:08:09', '2023-08-26 07:08:09'),
(218, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.37.215', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-26 12:22:19', '2023-08-26 12:22:19'),
(219, '2tSU2kO521CFSQB1tlDf1pxzRjcJz8', 1, '65.154.226.169', 0, 'Chrome', 'Linux', 'United States', '2023-08-26 13:08:50', '2023-08-26 13:08:50'),
(220, 'MHdfyrq9xUIAf5dT8YC7UhDXZafWg9', 1, '95.177.180.85', 0, 'Safari', 'iOS', 'Saudi Arabia', '2023-08-27 02:51:53', '2023-08-27 02:51:53'),
(221, 'XOvHoM2E1WrgRnblALQdSO9mUBiZ9y', 1, '59.13.123.221', 1, 'Edge', 'Windows', 'South Korea', '2023-08-27 08:54:22', '2023-08-27 08:54:22'),
(222, 'rLH4xlDINPviPphyryDBQDENnHhGJ5', 1, '192.42.116.198', 0, 'Chrome', 'Linux', 'Netherlands', '2023-08-27 10:04:25', '2023-08-27 10:04:25'),
(223, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-27 11:15:54', '2023-08-27 11:15:54'),
(224, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-27 11:18:26', '2023-08-27 11:18:26'),
(225, 'cSmZf9Hd7ihI7xUGQqLFQ0G5WhXnfG', 1, '162.43.240.221', 0, 'Chrome', 'iOS', 'United States', '2023-08-27 12:24:18', '2023-08-27 12:24:18'),
(226, '3dDEHkgNvTeaj4n6CcogGOVrBdhY0K', 1, '206.204.51.117', 0, 'Chrome', 'iOS', 'United States', '2023-08-27 12:24:49', '2023-08-27 12:24:49'),
(227, 'spu5x5b7WHBzUPhrjSxl393QiMdcex', 1, '193.200.105.175', 0, 'Safari', 'iOS', 'United States', '2023-08-27 19:10:33', '2023-08-27 19:10:33'),
(228, 'IX4PKKKxBII77D23FST2vaKLiC4pV0', 1, '152.39.157.57', 0, 'Safari', 'iOS', 'United States', '2023-08-27 19:11:08', '2023-08-27 19:11:08'),
(229, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.70.242', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 02:14:58', '2023-08-28 02:14:58'),
(230, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.70.242', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 02:15:49', '2023-08-28 02:15:49'),
(231, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.70.242', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 02:16:33', '2023-08-28 02:16:33'),
(232, 'CmIPDK5FhSFHkNF0EuuzK9kMrnIjNi', 1, '95.177.163.4', 0, 'Safari', 'iOS', 'Saudi Arabia', '2023-08-28 02:34:58', '2023-08-28 02:34:58'),
(233, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.52.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-28 05:19:22', '2023-08-28 05:19:22'),
(234, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.52.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-28 05:21:12', '2023-08-28 05:21:12'),
(235, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.70.242', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 06:30:21', '2023-08-28 06:30:21'),
(236, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '103.105.27.75', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 07:10:34', '2023-08-28 07:10:34'),
(237, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '103.105.27.75', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 07:11:39', '2023-08-28 07:11:39'),
(238, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '103.105.27.75', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 07:14:36', '2023-08-28 07:14:36'),
(239, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.151', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-28 12:43:29', '2023-08-28 12:43:29'),
(240, 'lxWcWlF8HBdCe11tZN7709bQ3O7Tmn', 1, '205.169.39.86', 1, 'Chrome', 'Windows', 'United States', '2023-08-28 13:30:06', '2023-08-28 13:30:06'),
(241, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 15:17:25', '2023-08-28 15:17:25'),
(242, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.40.13', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 15:30:56', '2023-08-28 15:30:56'),
(243, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 15:38:32', '2023-08-28 15:38:32'),
(244, 'rlCrjF2A4mOfTqUShyElwNrBkWJULp', 1, '140.213.44.235', 1, 'Firefox', 'Windows', 'Indonesia', '2023-08-28 15:44:42', '2023-08-28 15:44:42'),
(245, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 16:04:55', '2023-08-28 16:04:55'),
(246, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.151', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-28 16:11:04', '2023-08-28 16:11:04'),
(247, 'GNCF75kHwmelbAG8R1zvKkPHXzk3XE', 1, '36.81.9.162', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 16:58:22', '2023-08-28 16:58:22'),
(248, 'rlCrjF2A4mOfTqUShyElwNrBkWJULp', 0, '140.213.44.235', 1, 'Firefox', 'Windows', 'Indonesia', '2023-08-28 16:58:51', '2023-08-28 16:58:51'),
(249, 'GNCF75kHwmelbAG8R1zvKkPHXzk3XE', 0, '36.81.9.162', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 17:00:31', '2023-08-28 17:00:31'),
(250, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 18:53:59', '2023-08-28 18:53:59'),
(251, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 19:13:57', '2023-08-28 19:13:57'),
(252, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-28 19:16:48', '2023-08-28 19:16:48'),
(253, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.40.13', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 19:17:25', '2023-08-28 19:17:25'),
(254, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.40.13', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 19:17:50', '2023-08-28 19:17:50'),
(255, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.40.13', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 19:19:00', '2023-08-28 19:19:00'),
(256, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.40.13', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 19:19:03', '2023-08-28 19:19:03'),
(257, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.40.13', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-28 19:21:03', '2023-08-28 19:21:03'),
(258, 'rlCrjF2A4mOfTqUShyElwNrBkWJULp', 0, '140.213.175.166', 1, 'Firefox', 'Windows', 'Indonesia', '2023-08-29 00:10:30', '2023-08-29 00:10:30'),
(259, 'rlCrjF2A4mOfTqUShyElwNrBkWJULp', 0, '140.213.161.137', 1, 'Firefox', 'Windows', 'Indonesia', '2023-08-29 00:18:14', '2023-08-29 00:18:14'),
(260, 'rlCrjF2A4mOfTqUShyElwNrBkWJULp', 0, '140.213.161.137', 1, 'Firefox', 'Windows', 'Indonesia', '2023-08-29 00:50:06', '2023-08-29 00:50:06'),
(261, 'N0p4L54ashmIxFHaASLgYPTtCaUFBl', 1, '95.177.180.85', 0, 'Safari', 'iOS', 'Saudi Arabia', '2023-08-29 00:59:17', '2023-08-29 00:59:17'),
(262, '66GhQRdqwupgFSsZEd5ljHXbdu9hyj', 0, '103.105.28.153', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-29 02:38:25', '2023-08-29 02:38:25'),
(263, 'aeAHAS8oI0P4rLmvSFkyoWmFmMwXMz', 1, '34.81.16.175', 0, 'Chrome', 'Linux', 'Taiwan', '2023-08-29 09:44:08', '2023-08-29 09:44:08'),
(264, 'GNCF75kHwmelbAG8R1zvKkPHXzk3XE', 0, '36.81.9.162', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-29 10:28:25', '2023-08-29 10:28:25'),
(265, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.151', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 12:49:45', '2023-08-29 12:49:45'),
(266, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '2001:448a:4030:66a6:9a:db7e:15cf:39d6', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 12:54:29', '2023-08-29 12:54:29'),
(267, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '2001:448a:4030:66a6:9a:db7e:15cf:39d6', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 13:06:42', '2023-08-29 13:06:42'),
(268, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '2001:448a:4030:66a6:9a:db7e:15cf:39d6', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 13:44:57', '2023-08-29 13:44:57'),
(269, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '2001:448a:4030:66a6:9a:db7e:15cf:39d6', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 13:48:33', '2023-08-29 13:48:33'),
(270, 'ZiHI4khV8KxfcHBhMOHA3CBl3XFDEV', 1, '103.105.35.125', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 15:39:25', '2023-08-29 15:39:25'),
(271, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-29 15:42:34', '2023-08-29 15:42:34'),
(272, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:24:31', '2023-08-29 16:24:31'),
(273, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:32:35', '2023-08-29 16:32:35'),
(274, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:33:07', '2023-08-29 16:33:07'),
(275, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:46:55', '2023-08-29 16:46:55'),
(276, 'TZPnXiYnDvNUYqznGRLI5FbtJUhsxG', 0, '2001:448a:4030:66a6:60f9:dd93:5f64:512a', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:49:53', '2023-08-29 16:49:53'),
(277, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:50:53', '2023-08-29 16:50:53'),
(278, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:51:29', '2023-08-29 16:51:29'),
(279, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '2404:8000:1038:8622:cf2:6779:1fcb:573b', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-29 16:51:44', '2023-08-29 16:51:44'),
(280, 'GNCF75kHwmelbAG8R1zvKkPHXzk3XE', 0, '36.81.9.162', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-29 16:53:32', '2023-08-29 16:53:32'),
(281, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:56:36', '2023-08-29 16:56:36'),
(282, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 16:58:46', '2023-08-29 16:58:46'),
(283, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 17:01:53', '2023-08-29 17:01:53'),
(284, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 17:02:36', '2023-08-29 17:02:36'),
(285, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 17:04:33', '2023-08-29 17:04:33'),
(286, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 17:05:18', '2023-08-29 17:05:18'),
(287, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 17:07:23', '2023-08-29 17:07:23'),
(288, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 17:07:31', '2023-08-29 17:07:31'),
(289, 'IinL9moC0gAON7TIMOE0rIIF1YOpWH', 1, '2001:448a:4003:3b5e:f06e:9e04:9369:bcb7', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-29 17:20:48', '2023-08-29 17:20:48'),
(290, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.59', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-29 17:21:13', '2023-08-29 17:21:13'),
(291, 'IinL9moC0gAON7TIMOE0rIIF1YOpWH', 0, '2001:448a:4003:3b5e:f06e:9e04:9369:bcb7', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-29 17:22:37', '2023-08-29 17:22:37'),
(292, 'iei0Fp2wfqz67NgSCXPVbZR8aQMwbw', 1, '114.10.4.13', 0, 'Chrome', 'iOS', 'Indonesia', '2023-08-29 17:38:07', '2023-08-29 17:38:07'),
(293, 's2SNaa35pg2u2Hzx4LUVvPcaECISHU', 1, '66.249.82.10', 0, 'Chrome', 'OS X', 'United States', '2023-08-29 17:51:50', '2023-08-29 17:51:50'),
(294, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 18:07:06', '2023-08-29 18:07:06'),
(295, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 18:08:32', '2023-08-29 18:08:32'),
(296, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 18:09:18', '2023-08-29 18:09:18'),
(297, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 18:11:44', '2023-08-29 18:11:44'),
(298, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 18:11:55', '2023-08-29 18:11:55'),
(299, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 18:13:25', '2023-08-29 18:13:25'),
(300, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '182.2.43.139', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-29 18:15:47', '2023-08-29 18:15:47'),
(301, 'CKVOOZ7k4ET2App2r6FhuswFPecY2d', 1, '3.21.37.236', 1, 'Chrome', 'Linux', 'United States', '2023-08-29 19:32:42', '2023-08-29 19:32:42'),
(302, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-29 19:52:25', '2023-08-29 19:52:25'),
(303, 'QZCagPDZyRtw2MSoRxOK9xyDpxlueu', 0, '182.2.43.139', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-29 20:00:05', '2023-08-29 20:00:05'),
(304, 'DHC7pgObWRtaRLmWMnkmK6KJnecKw0', 0, '36.81.9.162', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-29 21:38:32', '2023-08-29 21:38:32'),
(305, 'MVkrLPToedFr7bkv3IBaQ5682cgDSj', 1, '103.154.88.5', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-30 00:42:17', '2023-08-30 00:42:17'),
(306, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.59', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-30 02:12:14', '2023-08-30 02:12:14'),
(307, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.59', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-30 02:40:20', '2023-08-30 02:40:20'),
(308, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.59', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-30 02:45:49', '2023-08-30 02:45:49'),
(309, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.59', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-30 03:33:54', '2023-08-30 03:33:54'),
(310, 'rwexYotCkZztQOELcxGHLmuNpKM17w', 1, '205.169.39.250', 1, 'Chrome', 'Windows', 'United States', '2023-08-30 05:32:18', '2023-08-30 05:32:18'),
(311, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.74.61', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-30 06:29:11', '2023-08-30 06:29:11'),
(312, 'kwyBdBlWXxaCqB37KWsWIN6ourmQUY', 1, '2001:448a:4030:66a6:e5a4:2b0f:7eba:8067', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-30 09:23:39', '2023-08-30 09:23:39'),
(313, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '103.105.28.160', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-30 13:05:24', '2023-08-30 13:05:24'),
(314, 'R8z4qu1dXuGgAvseQZjTVM74ieifPV', 0, '103.105.28.160', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-30 13:21:02', '2023-08-30 13:21:02'),
(315, 'kwyBdBlWXxaCqB37KWsWIN6ourmQUY', 0, '182.2.83.202', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-30 13:41:19', '2023-08-30 13:41:19'),
(316, 'bBzzGuQzADZYUD9U6UKDESxjJwQUSI', 0, '103.105.27.109', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-30 13:48:21', '2023-08-30 13:48:21'),
(317, 'In9KH1I5ZbbnP4jJ5bXZt49qBNm78H', 1, '182.2.51.205', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-30 13:49:19', '2023-08-30 13:49:19'),
(318, 'kwyBdBlWXxaCqB37KWsWIN6ourmQUY', 0, '182.2.83.202', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-30 14:35:00', '2023-08-30 14:35:00'),
(319, 'kpdMKuJ8uEolyd8jaU7aL52fhUciLm', 1, '103.105.35.86', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-31 00:46:37', '2023-08-31 00:46:37'),
(320, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.45.120', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-31 00:47:24', '2023-08-31 00:47:24'),
(321, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.45.28', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-31 02:43:13', '2023-08-31 02:43:13'),
(322, 'kpdMKuJ8uEolyd8jaU7aL52fhUciLm', 0, '103.105.27.96', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-31 02:55:54', '2023-08-31 02:55:54'),
(323, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.124.78', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-31 06:20:58', '2023-08-31 06:20:58'),
(324, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '2404:8000:1038:8622:cf2:6779:1fcb:573b', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-31 07:21:11', '2023-08-31 07:21:11'),
(325, '2TYfPQVBrQGrI3f6CCn38JWPR9FPsP', 1, '182.2.72.230', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-31 08:07:05', '2023-08-31 08:07:05'),
(326, 'PUuzD3qYGhWmQgHje8P8t13SRgcOmy', 1, '2001:448a:4006:284b:41a2:873a:fcf2:4ea6', 1, 'Chrome', 'OS X', 'Indonesia', '2023-08-31 08:25:32', '2023-08-31 08:25:32'),
(327, 'CkdfoaBpnFn5tL36amyINfOXdrVrDg', 1, '2001:448a:4006:284b:15f4:36c7:1665:760b', 1, 'Chrome', 'Windows', 'Indonesia', '2023-08-31 08:26:34', '2023-08-31 08:26:34'),
(328, 'Ze6oG4ItywImBwslAxi0vHmHtlNMXB', 1, '2001:448a:4006:284b:31b2:58a3:c954:9326', 0, 'Safari', 'iOS', 'Indonesia', '2023-08-31 08:27:13', '2023-08-31 08:27:13'),
(329, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.82.139', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-31 12:03:42', '2023-08-31 12:03:42'),
(330, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '2404:8000:1038:8622:cf2:6779:1fcb:573b', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-31 14:33:35', '2023-08-31 14:33:35'),
(331, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '2404:8000:1038:8622:cf2:6779:1fcb:573b', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-08-31 14:33:36', '2023-08-31 14:33:36'),
(332, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '2404:8000:1038:8622:cf2:6779:1fcb:573b', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-31 14:33:44', '2023-08-31 14:33:44'),
(333, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.46.131', 1, 'Chrome', 'Linux', 'Indonesia', '2023-08-31 14:41:34', '2023-08-31 14:41:34'),
(334, 'hcFACdvkKy6Do7moZitvFrnp6ZIlto', 1, '216.251.130.74', 0, 'Chrome', 'Linux', 'Canada', '2023-08-31 22:11:11', '2023-08-31 22:11:11'),
(335, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.6.143', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-01 18:00:14', '2023-09-01 18:00:14'),
(336, 's87IyNb8F33M6DQiXCreF6QOmb3WgK', 1, '216.251.130.74', 0, 'Chrome', 'Linux', 'Canada', '2023-09-01 20:41:03', '2023-09-01 20:41:03'),
(337, 'gp7JNqwTDHVqIerKiIBUE7s9aXugqO', 1, '205.169.39.82', 1, 'Chrome', 'Windows', 'United States', '2023-09-02 01:54:10', '2023-09-02 01:54:10'),
(338, 'md0657e93F7MfmRv2ATqhj7S7fJJy9', 1, '66.249.71.203', 0, '0', '0', 'United States', '2023-09-03 15:17:00', '2023-09-03 15:17:00'),
(339, 'JaG4KnWPEFmyEUQqlZVpLEFHGO1Zbx', 1, '18.224.58.60', 1, 'Chrome', 'Linux', 'United States', '2023-09-03 19:55:56', '2023-09-03 19:55:56'),
(340, 'IyiscWIkPS1GIwWe1W7Xf1bzRRQE2F', 1, '114.79.17.226', 0, 'Safari', 'iOS', 'Indonesia', '2023-09-04 06:00:09', '2023-09-04 06:00:09'),
(341, 'q8OY9sLeSB5HI8cNSBG2iqUAE3wpRC', 1, '182.255.4.124', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-05 02:08:44', '2023-09-05 02:08:44'),
(342, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.168', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-05 06:44:29', '2023-09-05 06:44:29'),
(343, 'wCmNlX5wd4JIV2B2zYeOAQQY4ktbk8', 1, '66.249.83.89', 1, '0', '0', 'United States', '2023-09-05 07:07:12', '2023-09-05 07:07:12'),
(344, 'xDfdJMeKHO0Dmcw3AgNGq0POrElJj8', 1, '185.48.9.75', 1, 'Chrome', 'Windows', 'Poland', '2023-09-05 07:07:19', '2023-09-05 07:07:19'),
(345, '0A4frIJkGElxYdyfCGp0tRp8gGHAU0', 1, '188.43.68.73', 1, 'Chrome', 'Windows', 'Russia', '2023-09-05 07:07:26', '2023-09-05 07:07:26'),
(346, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.168', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-05 08:58:28', '2023-09-05 08:58:28'),
(347, 'OMRSLTjRyi1UkAfBv6lpgsffeRBUXi', 1, '103.105.35.108', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-05 13:12:18', '2023-09-05 13:12:18'),
(348, 'WFvJK5H0BpwfM4VYSCLr2TZILwtLsH', 1, '103.186.91.38', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-05 14:32:16', '2023-09-05 14:32:16'),
(349, 'WFvJK5H0BpwfM4VYSCLr2TZILwtLsH', 0, '103.186.91.38', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-05 14:36:31', '2023-09-05 14:36:31');
INSERT INTO `visitors` (`id`, `tracking_id`, `is_new`, `ip`, `is_desktop`, `browser`, `platform`, `location`, `created_at`, `updated_at`) VALUES
(350, 'Ng368PbMCHrmH4sPvyeqnsfaHDDlOu', 1, '205.169.39.104', 1, 'Chrome', 'Windows', 'United States', '2023-09-06 04:30:53', '2023-09-06 04:30:53'),
(351, 'QsQBGpi1OJFjd7ZC838vEgTCTEZJZt', 1, '140.213.33.240', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-06 06:40:15', '2023-09-06 06:40:15'),
(352, 'pI8OSTNV2cKI9uMc1JCCGMPhHnGpxs', 1, '158.140.170.65', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-06 07:30:56', '2023-09-06 07:30:56'),
(353, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 1, '182.255.4.121', 1, 'Firefox', 'OS X', 'Indonesia', '2023-09-06 07:44:43', '2023-09-06 07:44:43'),
(354, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.121', 1, 'Firefox', 'OS X', 'Indonesia', '2023-09-06 07:45:15', '2023-09-06 07:45:15'),
(355, 'tGMPVkf3qLr6HgtarkxU00sdaAxhHA', 1, '103.162.237.196', 0, 'Safari', 'iOS', 'Indonesia', '2023-09-06 10:15:49', '2023-09-06 10:15:49'),
(356, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.124', 1, 'Firefox', 'OS X', 'Indonesia', '2023-09-07 01:18:36', '2023-09-07 01:18:36'),
(357, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.124', 1, 'Firefox', 'OS X', 'Indonesia', '2023-09-07 01:47:25', '2023-09-07 01:47:25'),
(358, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.124', 1, 'Firefox', 'OS X', 'Indonesia', '2023-09-07 01:51:53', '2023-09-07 01:51:53'),
(359, 'kwyBdBlWXxaCqB37KWsWIN6ourmQUY', 0, '103.162.237.113', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-07 05:29:18', '2023-09-07 05:29:18'),
(360, 'kwyBdBlWXxaCqB37KWsWIN6ourmQUY', 0, '103.162.237.113', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-07 05:29:25', '2023-09-07 05:29:25'),
(361, 'iXri6FxjSaYT9zjx0UQNbEly5rPDFC', 1, '114.10.16.206', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-07 06:02:16', '2023-09-07 06:02:16'),
(362, 'iXri6FxjSaYT9zjx0UQNbEly5rPDFC', 0, '114.10.16.206', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-07 06:05:07', '2023-09-07 06:05:07'),
(363, 'iXri6FxjSaYT9zjx0UQNbEly5rPDFC', 0, '114.10.16.206', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-07 06:11:18', '2023-09-07 06:11:18'),
(364, 'iXri6FxjSaYT9zjx0UQNbEly5rPDFC', 0, '114.10.16.206', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-07 06:11:25', '2023-09-07 06:11:25'),
(365, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.51.79', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-07 09:18:34', '2023-09-07 09:18:34'),
(366, '5t3i0bFEJsuYj75hDyF23N7lkDcXD3', 1, '182.2.51.79', 1, 'Edge', 'Windows', 'Indonesia', '2023-09-07 09:18:53', '2023-09-07 09:18:53'),
(367, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-07 13:44:48', '2023-09-07 13:44:48'),
(368, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-07 13:45:40', '2023-09-07 13:45:40'),
(369, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-07 13:49:03', '2023-09-07 13:49:03'),
(370, 'Iw2BjYI7MvfEHw9c0dgRvw4c9fvWaW', 1, '114.10.16.206', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-07 14:57:16', '2023-09-07 14:57:16'),
(371, 'vprBcc4jaHt2PsXouutith1F4WvLxm', 1, '206.204.34.50', 0, 'Safari', 'iOS', 'United States', '2023-09-07 19:10:30', '2023-09-07 19:10:30'),
(372, 'OB4bFbhySgknx0FpxdRA5OSgfkyGV8', 1, '119.13.223.221', 0, 'Safari', 'iOS', 'United States', '2023-09-07 19:10:58', '2023-09-07 19:10:58'),
(373, 'HgLGgNFdcSNtty9GnEqNKS6RFKaE20', 1, '45.137.158.111', 1, 'Chrome', 'OS X', 'Singapore', '2023-09-07 20:50:48', '2023-09-07 20:50:48'),
(374, '8OJlkBt8J2LuXs3OrzQ6w9p7RktbCt', 1, '45.137.158.111', 1, 'Chrome', 'OS X', 'Singapore', '2023-09-07 20:51:10', '2023-09-07 20:51:10'),
(375, 'zmBcVzYZwe1Ilh4Rsi3WN7EaHus29N', 1, '45.137.158.111', 1, 'Chrome', 'OS X', 'Singapore', '2023-09-07 20:51:33', '2023-09-07 20:51:33'),
(376, 'fPOmavHEUWyIo3IUdfLnl7Wb0deNOX', 1, '45.137.158.111', 1, 'Chrome', 'OS X', 'Singapore', '2023-09-07 20:51:46', '2023-09-07 20:51:46'),
(377, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.255.4.124', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-08 01:33:56', '2023-09-08 01:33:56'),
(378, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.255.4.124', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-08 01:34:46', '2023-09-08 01:34:46'),
(379, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.124', 1, 'Firefox', 'OS X', 'Indonesia', '2023-09-08 02:14:03', '2023-09-08 02:14:03'),
(380, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.124', 1, 'Firefox', 'OS X', 'Indonesia', '2023-09-08 02:23:12', '2023-09-08 02:23:12'),
(381, 'BeAUtjGaduiXp5AlwUDPx2nAuGnVK8', 0, '140.213.163.9', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-08 03:32:27', '2023-09-08 03:32:27'),
(382, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.70.255', 1, 'Chrome', 'Linux', 'Unknown', '2023-09-08 04:29:09', '2023-09-08 04:29:09'),
(383, '02xSX8ljOcVKnXOw2qs48P7dfAFtkK', 0, '114.10.16.206', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-08 08:11:50', '2023-09-08 08:11:50'),
(384, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '103.105.28.171', 1, 'Firefox', 'OS X', 'Indonesia', '2023-09-08 13:21:58', '2023-09-08 13:21:58'),
(385, 'YlF2oEyyJL0b8Lwcdex5oKHRALRcCI', 1, '3.145.47.14', 1, 'Chrome', 'Linux', 'United States', '2023-09-09 16:08:17', '2023-09-09 16:08:17'),
(386, 'acnYd73K096VYVyn5Yc3TNqGyBqAa3', 1, '66.249.79.201', 0, '0', '0', 'United States', '2023-09-09 18:09:27', '2023-09-09 18:09:27'),
(387, 'kwyBdBlWXxaCqB37KWsWIN6ourmQUY', 0, '2001:448a:4007:245e:5916:a8cc:2116:7278', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-10 08:06:58', '2023-09-10 08:06:58'),
(388, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.16.188', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-12 05:13:55', '2023-09-12 05:13:55'),
(389, 'kwyBdBlWXxaCqB37KWsWIN6ourmQUY', 0, '182.2.36.211', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-12 13:39:30', '2023-09-12 13:39:30'),
(390, 'ZiHI4khV8KxfcHBhMOHA3CBl3XFDEV', 0, '182.255.4.121', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-12 14:37:48', '2023-09-12 14:37:48'),
(391, 'ZiHI4khV8KxfcHBhMOHA3CBl3XFDEV', 0, '182.255.4.121', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-12 14:38:40', '2023-09-12 14:38:40'),
(392, 'kmjGfLPHNFp7wpMtdDXwMErCscw7Ig', 1, '65.154.226.167', 0, 'Chrome', 'Linux', 'United States', '2023-09-13 14:03:07', '2023-09-13 14:03:07'),
(393, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-13 14:14:28', '2023-09-13 14:14:28'),
(394, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-13 14:20:17', '2023-09-13 14:20:17'),
(395, 'IPh8XHTI0ZAeOLyRsNqNK1illutZoE', 1, '103.147.247.169', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-14 11:11:45', '2023-09-14 11:11:45'),
(396, 'IPh8XHTI0ZAeOLyRsNqNK1illutZoE', 0, '103.147.247.169', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-09-14 11:13:55', '2023-09-14 11:13:55'),
(397, 'zbu1SVKhZXkSKtUF0aTq84ZAnSQtil', 1, '182.2.72.234', 0, 'Safari', 'iOS', 'Indonesia', '2023-09-14 11:42:33', '2023-09-14 11:42:33'),
(398, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '103.120.173.130', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-14 15:08:56', '2023-09-14 15:08:56'),
(399, 'vklbGJgmNjufZ4SbR4uX0ieIC4Tq5F', 1, '44.236.207.248', 1, 'Chrome', 'Linux', 'United States', '2023-09-15 09:34:50', '2023-09-15 09:34:50'),
(400, 'IZuYVay8nDBPZPtOukwgeDzMOtaRC3', 1, '44.236.207.248', 1, 'Chrome', 'Linux', 'United States', '2023-09-15 09:34:55', '2023-09-15 09:34:55'),
(401, 'vklbGJgmNjufZ4SbR4uX0ieIC4Tq5F', 0, '44.236.207.248', 1, 'Chrome', 'Linux', 'United States', '2023-09-15 09:34:57', '2023-09-15 09:34:57'),
(402, 'aFNwhxVZfMMXvjEZsMj2NM0Sg8lPWv', 1, '18.218.235.30', 1, 'Chrome', 'Linux', 'United States', '2023-09-15 12:30:00', '2023-09-15 12:30:00'),
(403, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.123.200', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-16 16:11:29', '2023-09-16 16:11:29'),
(404, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.123.200', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-16 16:30:55', '2023-09-16 16:30:55'),
(405, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.123.200', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-16 16:30:57', '2023-09-16 16:30:57'),
(406, 'RD9x2dK6iQqWwuQEReWeMMEwt6lvl0', 0, '111.68.31.194', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-17 19:10:17', '2023-09-17 19:10:17'),
(407, 'NbrB7G8KuWx7imqGKhtgPL6sQFFEM3', 1, '66.249.66.64', 0, '0', '0', 'United States', '2023-09-17 22:22:02', '2023-09-17 22:22:02'),
(408, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '182.2.78.22', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-18 12:58:01', '2023-09-18 12:58:01'),
(409, 'JaOvObsT38QbBKJLFU07oC9zJwpnjg', 1, '167.99.215.242', 1, 'Chrome', 'Linux', 'Netherlands', '2023-09-18 15:52:59', '2023-09-18 15:52:59'),
(410, 'SvqF9xzg8bPQBYl4HxZw27TMQni32o', 1, '114.10.120.131', 1, 'Edge', 'Windows', 'Indonesia', '2023-09-21 15:12:21', '2023-09-21 15:12:21'),
(411, 'SvqF9xzg8bPQBYl4HxZw27TMQni32o', 0, '114.10.120.131', 1, 'Edge', 'Windows', 'Indonesia', '2023-09-21 15:13:03', '2023-09-21 15:13:03'),
(412, '9rVwjLAUJGp6VgRBmmmlrm8sxoFAvP', 1, '52.14.2.43', 1, 'Chrome', 'Linux', 'United States', '2023-09-21 17:47:29', '2023-09-21 17:47:29'),
(413, 'M2yuyoFZB0aV0HB5pG7Go6bMvAyB6S', 1, '40.77.190.65', 0, 'Chrome', '0', 'United States', '2023-09-24 01:43:31', '2023-09-24 01:43:31'),
(414, 'BdmSDPw2A8KMgOxxFKJTl26jRl63Ol', 1, '66.249.79.233', 0, '0', '0', 'United States', '2023-09-24 18:51:44', '2023-09-24 18:51:44'),
(415, 'piJZeBXuhC59Ipilzmx6rbINMtX9Nn', 1, '103.19.37.16', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-25 12:11:20', '2023-09-25 12:11:20'),
(416, 'v5PgeuYlrl8NzKfFCWFsCE4JjAu0wR', 1, '149.56.150.99', 0, 'Mozilla', '0', 'Canada', '2023-09-25 20:21:27', '2023-09-25 20:21:27'),
(417, 'ZU43cmXpZcUU3vFh7bkKCD9NOFoPny', 1, '209.170.91.200', 1, 'Chrome', 'Windows', 'United States', '2023-09-27 02:52:23', '2023-09-27 02:52:23'),
(418, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.18.87', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-27 05:09:02', '2023-09-27 05:09:02'),
(419, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.18.87', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-27 05:09:57', '2023-09-27 05:09:57'),
(420, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.18.87', 1, 'Chrome', 'Linux', 'Indonesia', '2023-09-27 06:26:50', '2023-09-27 06:26:50'),
(421, 'LcqmaGw3lVip2Ks8biZPyGxhyWPnSI', 1, '158.140.163.79', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-27 07:49:23', '2023-09-27 07:49:23'),
(422, 'LcqmaGw3lVip2Ks8biZPyGxhyWPnSI', 0, '158.140.163.79', 1, 'Chrome', 'Windows', 'Indonesia', '2023-09-27 07:52:04', '2023-09-27 07:52:04'),
(423, 'kEDi1tFH2YwdtWaEikkzZhVK5RDXB5', 1, '66.249.71.203', 0, '0', '0', 'United States', '2023-10-02 03:35:24', '2023-10-02 03:35:24'),
(424, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.84', 1, 'Firefox', 'OS X', 'Indonesia', '2023-10-05 12:38:45', '2023-10-05 12:38:45'),
(425, 'mlZJGT26ENQBJg2WFNp1hk4nmyPUsy', 1, '66.249.71.201', 0, '0', '0', 'United States', '2023-10-08 13:16:08', '2023-10-08 13:16:08'),
(426, 'PK59PlEGq5gbjpFtULwYo7aa1JeKMS', 1, '180.243.189.165', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-10-08 15:45:11', '2023-10-08 15:45:11'),
(427, 'CZgvUy36XlRWZIxzjnP2YKRLMc3Unl', 1, '120.188.7.174', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-10-11 08:13:28', '2023-10-11 08:13:28'),
(428, 'CZgvUy36XlRWZIxzjnP2YKRLMc3Unl', 0, '120.188.7.174', 1, 'Chrome', 'Linux', 'Indonesia', '2023-10-11 08:13:38', '2023-10-11 08:13:38'),
(429, 'kzCdcEN4fCeXBMxDngkmTTv54vAfza', 1, '202.46.27.37', 0, 'Safari', 'iOS', 'Indonesia', '2023-10-11 09:28:46', '2023-10-11 09:28:46'),
(430, 'kzCdcEN4fCeXBMxDngkmTTv54vAfza', 0, '182.1.101.164', 0, 'Safari', 'iOS', 'Indonesia', '2023-10-11 11:10:46', '2023-10-11 11:10:46'),
(431, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.85', 1, 'Firefox', 'OS X', 'Indonesia', '2023-10-13 08:26:20', '2023-10-13 08:26:20'),
(432, 'mQcPinofq5SqWn2gRK1np8134uH1NR', 1, '44.236.207.248', 0, 'Chrome', 'Linux', 'United States', '2023-10-13 10:03:22', '2023-10-13 10:03:22'),
(433, 'A8gw0ePHiEyLAEzK93AUREV8UPxlyw', 1, '44.236.207.248', 0, 'Chrome', 'Linux', NULL, '2023-10-13 10:03:29', '2023-10-13 10:03:29'),
(434, 'mQcPinofq5SqWn2gRK1np8134uH1NR', 0, '44.236.207.248', 0, 'Chrome', 'Linux', 'United States', '2023-10-13 10:03:30', '2023-10-13 10:03:30'),
(435, 'iDGPv7QvcMuYDxLufADoJJzRRlw2G8', 1, '2a09:bac1:34c0:38::1f1:1f8', 1, 'Edge', 'Windows', 'Indonesia', '2023-10-15 08:36:50', '2023-10-15 08:36:50'),
(436, 'DRW13asqdiBAD7hvGBIODoNUVgPUqB', 1, '66.249.71.201', 0, '0', '0', 'United States', '2023-10-15 14:36:34', '2023-10-15 14:36:34'),
(437, 'GXWVYA7TEiJygRH0wvfpUq2glbmX07', 1, '114.10.7.113', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-16 03:31:54', '2023-10-16 03:31:54'),
(438, 'GXWVYA7TEiJygRH0wvfpUq2glbmX07', 0, '114.10.7.113', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-16 03:49:03', '2023-10-16 03:49:03'),
(439, '4RwZGQN6mQRPjKjpJ5svL0TJvnaLD3', 0, '123.253.233.217', 1, 'Chrome', 'Linux', 'Indonesia', '2023-10-17 16:07:40', '2023-10-17 16:07:40'),
(440, 'TZPnXiYnDvNUYqznGRLI5FbtJUhsxG', 0, '202.80.216.124', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-18 10:27:02', '2023-10-18 10:27:02'),
(441, 'TZPnXiYnDvNUYqznGRLI5FbtJUhsxG', 0, '202.80.216.124', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-18 10:27:38', '2023-10-18 10:27:38'),
(442, 'hT7gXRZqURFsjrPoFEmeqmxoRIHuSD', 1, '69.160.160.50', 0, 'Chrome', 'Linux', 'United States', '2023-10-18 12:17:37', '2023-10-18 12:17:37'),
(443, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.85', 1, 'Firefox', 'OS X', 'Indonesia', '2023-10-18 14:19:24', '2023-10-18 14:19:24'),
(444, 'kwyBdBlWXxaCqB37KWsWIN6ourmQUY', 0, '2001:448a:4001:b576:5437:4827:9993:d72c', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-19 00:06:44', '2023-10-19 00:06:44'),
(445, 'iHGh78pvPjfH4xI24Zt0HXHO1S7idv', 1, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-19 00:15:04', '2023-10-19 00:15:04'),
(446, 'iHGh78pvPjfH4xI24Zt0HXHO1S7idv', 0, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-19 00:17:58', '2023-10-19 00:17:58'),
(447, 'iHGh78pvPjfH4xI24Zt0HXHO1S7idv', 0, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-19 00:30:06', '2023-10-19 00:30:06'),
(448, 'iHGh78pvPjfH4xI24Zt0HXHO1S7idv', 0, '103.121.212.0', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-19 00:31:48', '2023-10-19 00:31:48'),
(449, '7x96Wk0vREuyGqZQARq8eZAzVsZcJc', 1, '216.251.130.74', 0, 'Chrome', 'Linux', 'Canada', '2023-10-21 08:18:18', '2023-10-21 08:18:18'),
(450, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.23.109', 1, 'Chrome', 'Linux', 'Indonesia', '2023-10-21 14:20:00', '2023-10-21 14:20:00'),
(451, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.23.109', 1, 'Chrome', 'Linux', 'Indonesia', '2023-10-21 14:21:28', '2023-10-21 14:21:28'),
(452, '8fFAlPAQnfZNXTkrTwpfN5o4X1dF3W', 1, '114.10.121.133', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-22 05:03:55', '2023-10-22 05:03:55'),
(453, 'w4xd6OQE8UIEqh9XscB9Qtu0dc867Z', 1, '66.249.71.201', 0, '0', '0', 'United States', '2023-10-22 19:25:19', '2023-10-22 19:25:19'),
(454, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.17.120', 1, 'Chrome', 'Linux', 'Indonesia', '2023-10-23 12:09:46', '2023-10-23 12:09:46'),
(455, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.17.120', 1, 'Chrome', 'Linux', 'Indonesia', '2023-10-23 12:10:05', '2023-10-23 12:10:05'),
(456, 'Om2BuoQKnsXiVKbpjwSR8Qdcyw6D5h', 1, '149.56.150.253', 0, 'Mozilla', '0', 'Canada', '2023-10-25 22:19:22', '2023-10-25 22:19:22'),
(457, 's97JGjOK39lLBr16EHTI67p2oirZqc', 1, '213.188.90.61', 0, 'Safari', 'iOS', 'United States', '2023-10-28 19:11:38', '2023-10-28 19:11:38'),
(458, 'TSYHyoktQDGlttExKHa9gvuUaeHDI5', 1, '206.204.59.95', 0, 'Safari', 'iOS', 'United States', '2023-10-28 19:12:46', '2023-10-28 19:12:46'),
(459, 'T4x0sF6WKzbNqYqxkeeMMW6GESxCea', 1, '66.249.71.201', 0, '0', '0', 'United States', '2023-10-29 18:33:38', '2023-10-29 18:33:38'),
(460, 'UqtQAjuKoqxdN2ySTU5W8DUfpdCXAc', 1, '2a09:bac5:3a37:88c::da:1f', 0, 'Safari', 'iOS', 'Indonesia', '2023-10-31 01:46:04', '2023-10-31 01:46:04'),
(461, 'Yoe5cRzIj39FleeGQ4wHYDLN8bmeJo', 1, '103.105.27.111', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-10-31 01:46:13', '2023-10-31 01:46:13'),
(462, 'Yoe5cRzIj39FleeGQ4wHYDLN8bmeJo', 0, '103.105.27.111', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-10-31 01:46:22', '2023-10-31 01:46:22'),
(463, 'cck1aDUOxNdF9LCNZ1ZHeL1Grn2vwi', 1, '103.102.12.122', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-31 01:46:38', '2023-10-31 01:46:38'),
(464, 'Yoe5cRzIj39FleeGQ4wHYDLN8bmeJo', 0, '103.105.27.111', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-10-31 01:46:54', '2023-10-31 01:46:54'),
(465, 'cck1aDUOxNdF9LCNZ1ZHeL1Grn2vwi', 0, '103.102.12.122', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-31 01:58:00', '2023-10-31 01:58:00'),
(466, '2qQw1jTEVkcOTg7o6C6ziDVLa807a7', 0, '182.2.73.180', 1, 'Safari', 'Linux', 'Indonesia', '2023-10-31 02:18:02', '2023-10-31 02:18:02'),
(467, 'Yoe5cRzIj39FleeGQ4wHYDLN8bmeJo', 0, '103.105.28.163', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-10-31 03:44:56', '2023-10-31 03:44:56'),
(468, 'Yoe5cRzIj39FleeGQ4wHYDLN8bmeJo', 0, '103.105.28.130', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2023-10-31 05:24:08', '2023-10-31 05:24:08'),
(469, 'cck1aDUOxNdF9LCNZ1ZHeL1Grn2vwi', 0, '103.105.35.68', 1, 'Chrome', 'Windows', 'Indonesia', '2023-10-31 05:45:58', '2023-10-31 05:45:58'),
(470, 'sRWRBk2LKn7TmpYPM6wDn4tfAsSjZK', 1, '65.154.226.169', 0, 'Chrome', 'Linux', 'United States', '2023-11-02 08:39:32', '2023-11-02 08:39:32'),
(471, 'dDBEWgC1725Iwm2YW9qi5r3HHBRX2a', 1, '205.169.39.127', 1, 'Chrome', 'Windows', 'United States', '2023-11-02 08:39:54', '2023-11-02 08:39:54'),
(472, 'BpT0vUSiKFwDy95AMN29t9N9FFbyjN', 1, '65.154.226.167', 0, 'Chrome', 'Linux', 'United States', '2023-11-02 09:11:23', '2023-11-02 09:11:23'),
(473, 'cck1aDUOxNdF9LCNZ1ZHeL1Grn2vwi', 0, '103.102.12.122', 1, 'Chrome', 'Windows', 'Indonesia', '2023-11-02 14:28:43', '2023-11-02 14:28:43'),
(474, 'cck1aDUOxNdF9LCNZ1ZHeL1Grn2vwi', 0, '103.102.12.122', 1, 'Chrome', 'Windows', 'Indonesia', '2023-11-02 14:46:19', '2023-11-02 14:46:19'),
(475, 'etbNhQpz6DrL4029QusiLaFvXkgbLB', 1, '65.154.226.166', 0, 'Chrome', 'Linux', 'United States', '2023-11-02 21:15:46', '2023-11-02 21:15:46'),
(476, '0HmimNAao8rgknht8eo5BBtnCH0ipm', 1, '103.102.12.122', 1, 'Chrome', 'Windows', 'Indonesia', '2023-11-03 03:01:56', '2023-11-03 03:01:56'),
(477, '5lC8abmtWGdthtny3hgTj9hqnBIpRb', 1, '27.115.124.38', 0, 'Chrome', 'AndroidOS', 'China', '2023-11-03 08:31:37', '2023-11-03 08:31:37'),
(478, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 1, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-02-27 15:24:13', '2024-02-27 15:24:13'),
(479, 'U41JpJQ70lKI71JKUny10jzH4LdN0v', 1, '158.140.170.81', 0, 'Safari', 'iOS', 'Indonesia', '2024-02-27 23:12:59', '2024-02-27 23:12:59'),
(480, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.89', 1, 'Firefox', 'OS X', 'Indonesia', '2024-02-28 07:41:03', '2024-02-28 07:41:03'),
(481, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '158.140.170.10', 1, 'Firefox', 'OS X', 'Indonesia', '2024-02-28 12:51:18', '2024-02-28 12:51:18'),
(482, 'qkiiZtdMfAxRUJzLD4KaO0qh5M2Yl0', 1, '158.140.170.81', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-02-28 14:19:33', '2024-02-28 14:19:33'),
(483, 'qkiiZtdMfAxRUJzLD4KaO0qh5M2Yl0', 0, '103.105.35.126', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-02-29 01:18:56', '2024-02-29 01:18:56'),
(484, 'U41JpJQ70lKI71JKUny10jzH4LdN0v', 0, '103.105.35.98', 0, 'Safari', 'iOS', 'Indonesia', '2024-02-29 09:37:38', '2024-02-29 09:37:38'),
(485, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-02-29 12:16:48', '2024-02-29 12:16:48'),
(486, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-02-29 12:17:51', '2024-02-29 12:17:51'),
(487, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-02-29 12:21:54', '2024-02-29 12:21:54'),
(488, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-02-29 12:31:41', '2024-02-29 12:31:41'),
(489, 'U41JpJQ70lKI71JKUny10jzH4LdN0v', 0, '202.67.46.42', 0, 'Safari', 'iOS', 'Indonesia', '2024-02-29 12:43:02', '2024-02-29 12:43:02'),
(490, 'qkiiZtdMfAxRUJzLD4KaO0qh5M2Yl0', 0, '182.253.79.166', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-02-29 14:30:37', '2024-02-29 14:30:37'),
(491, 'qkiiZtdMfAxRUJzLD4KaO0qh5M2Yl0', 0, '182.253.79.166', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-02-29 14:30:55', '2024-02-29 14:30:55'),
(492, 'TioR5avelCi4JAtKSak8shKwiUFey2', 1, '180.252.94.8', 0, 'Safari', 'iOS', 'Indonesia', '2024-02-29 21:11:45', '2024-02-29 21:11:45'),
(493, 'TioR5avelCi4JAtKSak8shKwiUFey2', 0, '180.252.94.8', 0, 'Safari', 'iOS', 'Indonesia', '2024-02-29 21:12:13', '2024-02-29 21:12:13'),
(494, 'qkiiZtdMfAxRUJzLD4KaO0qh5M2Yl0', 0, '182.253.79.166', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-02-29 23:11:31', '2024-02-29 23:11:31'),
(495, 'Z5MmjdPR4Udh0BQKQebnp4SIIMjINZ', 1, '65.154.226.167', 1, 'Chrome', 'Windows', 'United States', '2024-03-01 07:04:34', '2024-03-01 07:04:34'),
(496, 'R3AA0jVuBxkkURXDy0v92Y96OxNsCF', 1, '205.169.39.198', 1, 'Chrome', 'Windows', 'United States', '2024-03-01 07:05:36', '2024-03-01 07:05:36'),
(497, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '182.2.50.243', 1, 'Chrome', 'Windows', 'Indonesia', '2024-03-02 19:24:36', '2024-03-02 19:24:36'),
(498, '2ytiWS2jifEThYH8zQPusPtx7X6YFP', 1, '40.77.189.208', 0, 'Chrome', '0', 'United States', '2024-03-07 14:44:32', '2024-03-07 14:44:32'),
(499, 'MpQtywfF2aWMftxXh4zRwcLejXgiMi', 1, '66.249.69.11', 0, '0', '0', 'United States', '2024-03-08 19:30:51', '2024-03-08 19:30:51'),
(500, 'gfJzL4CARBHFUsswdCoENKVpUfElWb', 1, '74.84.150.86', 1, '0', '0', 'United States', '2024-03-09 08:26:15', '2024-03-09 08:26:15'),
(501, 'OlFLZUn8wZaWSSVRYToaTrRHIRmzZI', 1, '66.249.69.10', 0, '0', '0', 'United States', '2024-03-10 06:50:53', '2024-03-10 06:50:53'),
(502, 'Afb0muZJaBYHkB4fzYOQT0AKlTAzXp', 1, '66.249.69.10', 0, '0', '0', 'United States', '2024-03-10 09:31:54', '2024-03-10 09:31:54'),
(503, 'DLOZ6pXQEfzGSvlWipg0kY8JBEr8ez', 1, '66.249.71.201', 0, '0', '0', 'United States', '2024-03-10 22:54:31', '2024-03-10 22:54:31'),
(504, 'pm98IvAIhXlm88auIaZlagp1svfMez', 1, '66.249.69.10', 0, '0', '0', 'United States', '2024-03-11 17:48:06', '2024-03-11 17:48:06'),
(505, '2ytiWS2jifEThYH8zQPusPtx7X6YFP', 0, '40.77.190.37', 0, 'Chrome', '0', 'United States', '2024-03-12 12:17:35', '2024-03-12 12:17:35'),
(506, 'nUBigv5DSXO97xYcI2woB4G70Yk0fw', 1, '66.249.71.203', 0, '0', '0', 'United States', '2024-03-14 12:57:03', '2024-03-14 12:57:03'),
(507, 'rpF84brbmMMejEhBy4GP1YsFUHtP8x', 1, '40.77.188.142', 0, 'Chrome', '0', 'United States', '2024-03-16 16:33:50', '2024-03-16 16:33:50'),
(508, 'pEI0r88NI6TPI0xEjrBU19D2yrgBJd', 1, '66.249.79.233', 0, '0', '0', 'United States', '2024-03-18 03:22:39', '2024-03-18 03:22:39'),
(509, 'x7uph0xEfTB8OFKDa9BvxEJKpV2IKw', 1, '66.249.79.235', 0, '0', '0', 'United States', '2024-03-18 05:18:00', '2024-03-18 05:18:00'),
(510, 'NBxLaPZ75NSDNu3U60vNGlWQr2nVap', 1, '112.78.47.130', 1, 'Chrome', 'Windows', 'Indonesia', '2024-03-19 02:13:09', '2024-03-19 02:13:09'),
(511, 'kFmUaz2UeRiEuXbKFsGPfJHkV3qAfl', 0, '103.105.35.122', 1, 'Chrome', 'Windows', 'Indonesia', '2024-03-19 12:41:48', '2024-03-19 12:41:48'),
(512, 'fCwE7ZXU7ayrz3YRcrsUoGaZmN8xmb', 1, '66.249.71.203', 0, '0', '0', 'United States', '2024-03-20 10:15:44', '2024-03-20 10:15:44'),
(513, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.7.136', 1, 'Firefox', 'OS X', 'Indonesia', '2024-03-22 05:35:30', '2024-03-22 05:35:30'),
(514, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '158.140.166.32', 1, 'Firefox', 'OS X', 'Indonesia', '2024-03-23 21:40:58', '2024-03-23 21:40:58'),
(515, '6C4WgbQZ9J62b66PNeCYRAdMm7icU3', 1, '66.249.71.201', 0, '0', '0', 'United States', '2024-03-24 00:26:14', '2024-03-24 00:26:14'),
(516, 'b4wwn1Z7Q4WvSdmvqLjcjWZLaYEvCp', 1, '40.77.189.108', 0, 'Chrome', '0', 'United States', '2024-03-25 15:43:19', '2024-03-25 15:43:19'),
(517, 'DruTQisb5gyPIylV5GMSWwjez7CDKG', 1, '66.249.79.235', 0, '0', '0', 'United States', '2024-03-28 05:47:07', '2024-03-28 05:47:07'),
(518, 'XoRIejr54v3LevmAUdh0eULXkqanvI', 1, '66.249.79.233', 0, '0', '0', 'United States', '2024-03-30 06:07:55', '2024-03-30 06:07:55'),
(519, 'pjZ4ByVMqdjwLRBQulTwkMLMMqdROt', 1, '69.160.160.51', 0, 'Chrome', 'Linux', 'United States', '2024-03-31 00:44:15', '2024-03-31 00:44:15'),
(520, 'gpjCumuoNaY1WFQlVyoEYdwdBC6ZnT', 1, '66.249.71.202', 0, '0', '0', 'United States', '2024-03-31 19:48:37', '2024-03-31 19:48:37'),
(521, 'Y5s2gSE6a4KxOEaV3e8pYjbDgYEz5h', 1, '66.249.71.203', 0, '0', '0', 'United States', '2024-04-01 02:47:38', '2024-04-01 02:47:38'),
(522, 'yQCOIkUmQ51QaJb9kih100Q21lW0N3', 1, '66.249.71.201', 0, '0', '0', 'United States', '2024-04-03 06:44:31', '2024-04-03 06:44:31'),
(523, '8YEjLJLx1FfGR5XO7sb3stEUTE9oaD', 1, '40.77.190.155', 0, 'Chrome', '0', 'United States', '2024-04-03 15:39:07', '2024-04-03 15:39:07'),
(524, 'p4lJ31HZxJUh4JQpfGf2PpMbdzjJK8', 1, '66.249.79.233', 0, '0', '0', 'United States', '2024-04-08 02:19:25', '2024-04-08 02:19:25'),
(525, '9EjqtnutQBmSfE8uq4pK7fTMJ41dLa', 1, '66.249.71.201', 0, '0', '0', 'United States', '2024-04-08 02:51:31', '2024-04-08 02:51:31'),
(526, 'g4f1KphRbyGbhTk8XNfb82rFXTe3We', 1, '66.249.71.202', 0, '0', '0', 'United States', '2024-04-10 09:58:45', '2024-04-10 09:58:45'),
(527, '7sAKJtERoAJw68QulGvK1lZoGSNg8n', 1, '66.249.71.203', 0, '0', '0', 'United States', '2024-04-13 03:19:12', '2024-04-13 03:19:12'),
(528, 'kXglYn6apzNsi3FRFs7gDLPGPRyogD', 1, '40.77.188.160', 0, 'Chrome', '0', 'United States', '2024-04-15 17:04:32', '2024-04-15 17:04:32'),
(529, 'wl5hMYj2rICrvxHifSZsd5FWSACn58', 1, '66.249.66.22', 0, '0', '0', 'United States', '2024-04-17 11:13:40', '2024-04-17 11:13:40'),
(530, 'BxJtBHsvdUf92dp9A5ne4r1daeWlWx', 1, '40.77.188.107', 0, 'Chrome', '0', 'United States', '2024-04-19 15:54:47', '2024-04-19 15:54:47'),
(531, 'bBzzGuQzADZYUD9U6UKDESxjJwQUSI', 0, '103.105.35.84', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-04-19 19:20:49', '2024-04-19 19:20:49'),
(532, 'bBzzGuQzADZYUD9U6UKDESxjJwQUSI', 0, '103.105.35.84', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-04-19 19:27:40', '2024-04-19 19:27:40'),
(533, 'bBzzGuQzADZYUD9U6UKDESxjJwQUSI', 0, '103.105.35.84', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-04-19 19:28:10', '2024-04-19 19:28:10'),
(534, '7cg6PZHgpG5TIPzo437NIpkJX0nRG9', 1, '66.249.66.22', 0, '0', '0', 'United States', '2024-04-21 22:40:29', '2024-04-21 22:40:29'),
(535, 'KfJ2DJBGYNcCDfbTPyTQYcIhVWQfdW', 1, '103.125.203.201', 1, 'Edge', 'Windows', 'Indonesia', '2024-04-24 09:21:36', '2024-04-24 09:21:36'),
(536, 'uOTxXnAhfHJZlPRfdP8mXuvpjWW81n', 1, '35.165.215.140', 0, 'Chrome', 'Linux', 'United States', '2024-04-26 17:08:15', '2024-04-26 17:08:15'),
(537, 'xcOuvNVCDOU7Vs4kDOp5mDQjDAWXXZ', 1, '66.249.71.201', 0, '0', '0', 'United States', '2024-04-27 10:28:40', '2024-04-27 10:28:40'),
(538, 'K0VCYEnfmgyxPQSopi7V5ecrZOPIDZ', 1, '66.249.66.1', 0, '0', '0', 'United States', '2024-04-28 12:52:16', '2024-04-28 12:52:16'),
(539, 'ngF6JlFk2zgfKfc7m5YLeV7lRI9h3V', 1, '65.154.226.168', 1, 'Chrome', 'Windows', 'United States', '2024-04-30 06:52:54', '2024-04-30 06:52:54'),
(540, 'v1YFa26hYTeWy6VjwTDSSUIQD5onkC', 1, '34.151.125.18', 0, 'Chrome', 'Linux', 'Australia', '2024-04-30 06:52:56', '2024-04-30 06:52:56'),
(541, 'qrLDucvdIYubHevNx8IPSshV3NWZ0w', 1, '205.169.39.102', 1, 'Chrome', 'Windows', 'United States', '2024-04-30 06:55:01', '2024-04-30 06:55:01'),
(542, 'rgN6X9sytZE52WeX9qgTZQxFBOLllA', 1, '66.249.71.201', 0, '0', '0', 'United States', '2024-05-01 08:10:44', '2024-05-01 08:10:44'),
(543, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 1, '103.3.220.39', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-02 04:18:36', '2024-05-02 04:18:36'),
(544, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '180.245.210.104', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-02 05:31:04', '2024-05-02 05:31:04'),
(545, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '36.80.249.59', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-07 14:33:11', '2024-05-07 14:33:11'),
(546, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '114.10.18.12', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-08 05:25:07', '2024-05-08 05:25:07'),
(547, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '103.162.62.10', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-10 13:35:09', '2024-05-10 13:35:09'),
(548, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '103.162.62.10', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-10 14:33:10', '2024-05-10 14:33:10'),
(549, 'R5CcQ8t955ZObYyJsLs5h2GZcdW5ti', 1, '66.249.71.201', 0, '0', '0', 'United States', '2024-05-12 09:01:03', '2024-05-12 09:01:03'),
(550, 'KwRjJxw1KFzP9iuWPAKMxcmhdJsFU1', 1, '66.249.71.202', 0, '0', '0', 'United States', '2024-05-12 11:04:02', '2024-05-12 11:04:02'),
(551, 'GO2yBMDnEMs6Z2IOCelAP1c386a3DD', 1, '66.249.71.202', 0, '0', '0', 'United States', '2024-05-18 07:47:59', '2024-05-18 07:47:59'),
(552, 'SWtM4kLEB4e7CVBZaqJ1EqYWYUFiZp', 1, '66.249.73.96', 0, '0', '0', 'United States', '2024-05-20 13:03:04', '2024-05-20 13:03:04'),
(553, 'Jn1dOocTlbloMIVDlAPGU6Hm0kuN4a', 1, '182.253.158.100', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-22 13:18:09', '2024-05-22 13:18:09'),
(554, 'JiNw3lopiivY2iHiC4mcUbiWypixCG', 1, '66.249.66.1', 0, '0', '0', 'United States', '2024-05-23 03:25:22', '2024-05-23 03:25:22'),
(555, 'mnEGfGk0HSU3ojqYI7YeRg3GmzgQ3j', 1, '35.202.189.187', 0, 'Safari', 'AndroidOS', 'United States', '2024-05-24 04:08:29', '2024-05-24 04:08:29'),
(556, '2cYVSTwEWC2bfPPE42lq2efFsADWvb', 1, '35.165.215.140', 0, 'Chrome', 'Linux', 'United States', '2024-05-24 09:34:34', '2024-05-24 09:34:34'),
(557, 'lpqtuX0hTF4HF0YMFUb1JLIbSSkck0', 1, '149.56.150.171', 0, 'Mozilla', '0', 'Canada', '2024-05-24 22:13:55', '2024-05-24 22:13:55'),
(558, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '36.81.55.151', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-25 12:46:04', '2024-05-25 12:46:04'),
(559, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '36.81.55.151', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-25 13:12:18', '2024-05-25 13:12:18'),
(560, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '103.3.220.194', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-26 03:34:23', '2024-05-26 03:34:23'),
(561, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '103.3.220.194', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-26 05:35:19', '2024-05-26 05:35:19'),
(562, 'vi5S1dHMKsFa81pQSZ4We3gdHO2sdc', 1, '34.136.236.103', 0, 'Safari', 'iOS', 'United States', '2024-05-26 06:47:53', '2024-05-26 06:47:53'),
(563, 'e3Xjtu6MeubHHPAjMu4YyT8HoY1XAP', 1, '35.192.129.239', 1, 'Firefox', 'OS X', 'United States', '2024-05-27 08:00:55', '2024-05-27 08:00:55'),
(564, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '36.81.55.151', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-28 02:08:53', '2024-05-28 02:08:53'),
(565, 'OOdRUrOlsN0z3gUFVnXfz4C1EUXjO5', 0, '182.255.4.92', 1, 'Firefox', 'OS X', 'Indonesia', '2024-05-28 03:08:27', '2024-05-28 03:08:27'),
(566, 'RLnXnGjsLVoAxqOVR0Wk1VsiKOuCXw', 1, '34.42.150.133', 0, '0', 'JavaOS', 'United States', '2024-05-28 07:32:15', '2024-05-28 07:32:15'),
(567, 'v7PSSR4msYahproriV4GtGhkPw8jWj', 1, '114.10.153.179', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-05-29 03:31:33', '2024-05-29 03:31:33'),
(568, '7yRjtZHJKjxSXPYqtjBHkWB6zgFTXy', 1, '114.10.121.87', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-05-29 03:36:03', '2024-05-29 03:36:03'),
(569, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '36.81.55.151', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-29 05:48:22', '2024-05-29 05:48:22'),
(570, 'eh4dgKRPrLBHASvqqna9fSADXeKrRa', 1, '2001:448a:306d:3e3e:8d55:4059:1210:3c34', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-05-30 15:35:25', '2024-05-30 15:35:25'),
(571, 'eh4dgKRPrLBHASvqqna9fSADXeKrRa', 0, '2001:448a:306d:3e3e:8d55:4059:1210:3c34', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-05-30 15:46:59', '2024-05-30 15:46:59'),
(572, 'eh4dgKRPrLBHASvqqna9fSADXeKrRa', 0, '2001:448a:306d:3e3e:8d55:4059:1210:3c34', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-05-30 15:48:07', '2024-05-30 15:48:07'),
(573, 'B524vMoKScqARYXFm9ewR8f6hy9DUa', 1, '2001:448a:306d:3e3e:d8e5:36cd:4108:977d', 1, 'Edge', 'Windows', 'Indonesia', '2024-05-30 19:26:49', '2024-05-30 19:26:49'),
(574, 'eQ34bLfi9NJu0PZW0eqmGdJ1Q9B2x2', 1, '114.10.17.223', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-05-31 03:16:14', '2024-05-31 03:16:14'),
(575, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '182.253.126.1', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-31 07:24:33', '2024-05-31 07:24:33'),
(576, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '182.253.126.1', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-31 08:10:35', '2024-05-31 08:10:35'),
(577, 'MGY1Mi8mcybgnt0CRHTuDGcZmS897f', 1, '2001:448a:306d:3e3e:e419:4aa5:caaa:459', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-31 11:24:15', '2024-05-31 11:24:15'),
(578, 'MGY1Mi8mcybgnt0CRHTuDGcZmS897f', 0, '2001:448a:306d:3e3e:e419:4aa5:caaa:459', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-31 11:26:34', '2024-05-31 11:26:34'),
(579, 'g52mqyUzCeh9HdKBAVDjt9D58LS0dr', 1, '180.244.132.165', 1, 'Chrome', 'Windows', 'Indonesia', '2024-05-31 14:56:07', '2024-05-31 14:56:07'),
(580, 'g52mqyUzCeh9HdKBAVDjt9D58LS0dr', 0, '180.244.135.75', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-01 15:42:54', '2024-06-01 15:42:54'),
(581, 'g52mqyUzCeh9HdKBAVDjt9D58LS0dr', 0, '180.244.135.75', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-01 15:43:42', '2024-06-01 15:43:42'),
(582, 'gUqNbBzm96F2G6GLm7SjcrkqgnWgVe', 1, '66.249.72.138', 0, '0', '0', 'United States', '2024-06-02 21:43:17', '2024-06-02 21:43:17'),
(583, 'MGY1Mi8mcybgnt0CRHTuDGcZmS897f', 0, '2001:448a:3063:27d2:adda:1daf:b915:a9b6', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-03 13:34:36', '2024-06-03 13:34:36'),
(584, 'g52mqyUzCeh9HdKBAVDjt9D58LS0dr', 0, '180.244.135.75', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-03 14:16:09', '2024-06-03 14:16:09'),
(585, 'v7PSSR4msYahproriV4GtGhkPw8jWj', 0, '114.10.152.199', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-04 06:27:34', '2024-06-04 06:27:34'),
(586, 'v7PSSR4msYahproriV4GtGhkPw8jWj', 0, '114.10.152.199', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-04 06:35:55', '2024-06-04 06:35:55'),
(587, 'v7PSSR4msYahproriV4GtGhkPw8jWj', 0, '114.10.152.199', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-04 06:36:10', '2024-06-04 06:36:10'),
(588, 'v7PSSR4msYahproriV4GtGhkPw8jWj', 0, '114.10.152.199', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-04 06:36:22', '2024-06-04 06:36:22'),
(589, 'f24mUh3j7xNAi0U74I4zObLGHFvMQG', 1, '103.102.12.114', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-05 07:08:05', '2024-06-05 07:08:05'),
(590, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '103.3.220.182', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-06 03:33:27', '2024-06-06 03:33:27'),
(591, 'dE2rHnSnSOOQJBnAFcS2bMaqDm2rn4', 1, '35.232.12.21', 1, 'Chrome', 'Windows', 'United States', '2024-06-10 21:22:08', '2024-06-10 21:22:08'),
(592, 'g52mqyUzCeh9HdKBAVDjt9D58LS0dr', 0, '180.244.134.153', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-12 17:41:08', '2024-06-12 17:41:08'),
(593, 'g52mqyUzCeh9HdKBAVDjt9D58LS0dr', 0, '180.244.134.153', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-13 01:52:39', '2024-06-13 01:52:39'),
(594, 'HjS2MRQcRXa5KF5wD9bJYgIlTx1CDn', 1, '69.160.160.51', 0, 'Chrome', 'Linux', 'United States', '2024-06-14 05:22:10', '2024-06-14 05:22:10'),
(595, 'iDR9e2pInNgVZzZYWQ2fyucgvKt65p', 0, '182.253.126.5', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-24 07:47:47', '2024-06-24 07:47:47'),
(596, 'mR4fOqxrfZAeMPV6Sd21PGox1K2E4Q', 1, '149.56.150.66', 0, 'Mozilla', '0', 'Canada', '2024-06-25 09:18:46', '2024-06-25 09:18:46'),
(597, '8u8bJVcOTTVrDsTFZ3oDe3EX1YCoG0', 1, '114.10.147.3', 0, 'Chrome', 'iOS', 'Indonesia', '2024-06-26 04:28:35', '2024-06-26 04:28:35'),
(598, '8u8bJVcOTTVrDsTFZ3oDe3EX1YCoG0', 0, '114.10.148.54', 0, 'Chrome', 'iOS', 'Indonesia', '2024-06-26 12:34:39', '2024-06-26 12:34:39'),
(599, 'aBiC2mOA3KSYxRDAmCLaCkIWc5qru4', 1, '104.197.69.115', 0, 'Chrome', 'Linux', 'United States', '2024-06-29 06:01:15', '2024-06-29 06:01:15'),
(600, 'ezD0O1IHhldF5Oxw9E2ike8mG83sr2', 1, '205.169.39.18', 0, 'Chrome', 'Linux', 'United States', '2024-06-29 06:01:35', '2024-06-29 06:01:35'),
(601, 'kGEhcZ1GwpaUbfGazYwW7rOk8DgqY2', 1, '202.93.231.59', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-30 10:07:06', '2024-06-30 10:07:06'),
(602, 'frToDbDWXD4WCosl4uKyxbFaaYuaWh', 1, '2a09:bac1:34c0:38::19c:154', 1, 'Edge', 'Windows', 'Indonesia', '2024-06-30 10:14:03', '2024-06-30 10:14:03'),
(603, 'frToDbDWXD4WCosl4uKyxbFaaYuaWh', 0, '2a09:bac1:34c0:38::19c:154', 1, 'Edge', 'Windows', 'Indonesia', '2024-06-30 10:16:42', '2024-06-30 10:16:42'),
(604, 'kGEhcZ1GwpaUbfGazYwW7rOk8DgqY2', 0, '202.93.231.59', 1, 'Chrome', 'Windows', 'Indonesia', '2024-06-30 10:29:49', '2024-06-30 10:29:49'),
(605, 'NDXmwifNipxVUDrw8MKjtmoGVU5tQi', 1, '114.10.150.132', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 10:30:46', '2024-06-30 10:30:46'),
(606, 'NDXmwifNipxVUDrw8MKjtmoGVU5tQi', 0, '114.10.150.132', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 10:31:35', '2024-06-30 10:31:35'),
(607, 'joKgL0Xc788ZsOm1jXSRuCwncN5FCt', 1, '139.192.167.163', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 10:31:50', '2024-06-30 10:31:50'),
(608, 'joKgL0Xc788ZsOm1jXSRuCwncN5FCt', 0, '139.192.167.163', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 10:34:49', '2024-06-30 10:34:49'),
(609, 'joKgL0Xc788ZsOm1jXSRuCwncN5FCt', 0, '139.192.167.163', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 10:38:38', '2024-06-30 10:38:38'),
(610, 'eDcRP0m07VTZlVOUNXYP1deHCV7OX9', 1, '112.215.146.218', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 11:30:07', '2024-06-30 11:30:07'),
(611, 'eDcRP0m07VTZlVOUNXYP1deHCV7OX9', 0, '112.215.146.218', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 11:31:06', '2024-06-30 11:31:06'),
(612, 'NDXmwifNipxVUDrw8MKjtmoGVU5tQi', 0, '114.10.150.132', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 12:02:22', '2024-06-30 12:02:22'),
(613, 'NDXmwifNipxVUDrw8MKjtmoGVU5tQi', 0, '114.10.150.132', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 12:02:27', '2024-06-30 12:02:27'),
(614, 'UNmHsyttIp1bRAiXgimTkozotElaeG', 1, '66.249.66.13', 0, '0', '0', NULL, '2024-06-30 12:22:34', '2024-06-30 12:22:34'),
(615, 'RVvG0Y4kpSCKASd58GMhi5VBnVGZY3', 1, '103.162.237.1', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 12:29:30', '2024-06-30 12:29:30'),
(616, 'EYTUZoUYBgB2TNgpjBvpUUVKAz9rhg', 1, '114.10.10.47', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-06-30 14:55:27', '2024-06-30 14:55:27'),
(617, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.10.197', 1, 'Chrome', 'Linux', 'Indonesia', '2024-06-30 16:59:58', '2024-06-30 16:59:58'),
(618, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.10.197', 1, 'Chrome', 'Linux', 'Indonesia', '2024-06-30 17:02:47', '2024-06-30 17:02:47'),
(619, 'EhgdfbObzruOuFigV3l2XZodyv8R53', 1, '66.249.72.105', 0, '0', '0', 'United States', '2024-07-01 02:06:35', '2024-07-01 02:06:35'),
(620, 'joKgL0Xc788ZsOm1jXSRuCwncN5FCt', 0, '114.10.121.193', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-01 04:32:42', '2024-07-01 04:32:42'),
(621, 'dnxqSKAOMj8RhJEwtEPMgiOrrIcxGj', 1, '149.108.58.191', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-04 14:30:48', '2024-07-04 14:30:48'),
(622, 'dnxqSKAOMj8RhJEwtEPMgiOrrIcxGj', 0, '149.108.58.191', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-04 14:31:37', '2024-07-04 14:31:37'),
(623, 'l5JOxO6bugHVMYcj81KI0QAuOGkoJB', 1, '66.249.71.42', 0, '0', '0', 'United States', '2024-07-06 12:10:16', '2024-07-06 12:10:16'),
(624, '6d7Hii2iyAZoQpQhM86ynAlJP31rdG', 1, '114.79.17.249', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-08 02:28:43', '2024-07-08 02:28:43'),
(625, 'dZbxax4IUmw3sWszGxsrAKXnlY4FBn', 1, '36.68.52.101', 0, 'Chrome', 'iOS', 'Indonesia', '2024-07-09 02:35:58', '2024-07-09 02:35:58'),
(626, 'FnxG8IzSpBMr5KEoWWOh3VkrDsrXpF', 1, '103.121.212.0', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-09 06:09:34', '2024-07-09 06:09:34'),
(627, 'dZbxax4IUmw3sWszGxsrAKXnlY4FBn', 0, '36.68.52.101', 0, 'Chrome', 'iOS', 'Indonesia', '2024-07-09 08:11:10', '2024-07-09 08:11:10'),
(628, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-09 15:21:26', '2024-07-09 15:21:26'),
(629, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-09 15:21:43', '2024-07-09 15:21:43'),
(630, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-09 15:21:51', '2024-07-09 15:21:51'),
(631, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', NULL, '2024-07-09 15:21:57', '2024-07-09 15:21:57'),
(632, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-09 15:22:38', '2024-07-09 15:22:38'),
(633, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-09 15:25:13', '2024-07-09 15:25:13'),
(634, 'Fi99FkYNQzGETRtasMJvnv8o5KcLJN', 0, '112.78.37.242', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-09 15:28:08', '2024-07-09 15:28:08'),
(635, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.21.236', 1, 'Chrome', 'Linux', 'Indonesia', '2024-07-10 06:15:01', '2024-07-10 06:15:01'),
(636, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.21.236', 1, 'Chrome', 'Linux', 'Indonesia', '2024-07-10 06:18:13', '2024-07-10 06:18:13'),
(637, 'eDcRP0m07VTZlVOUNXYP1deHCV7OX9', 0, '2404:c0:7140::1:b063:211c', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-10 14:58:43', '2024-07-10 14:58:43'),
(638, 'eDcRP0m07VTZlVOUNXYP1deHCV7OX9', 0, '2404:c0:7050::1:1382:d23f', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-10 15:05:09', '2024-07-10 15:05:09'),
(639, 'wvTRO4JMkazUar6V09GHZL6f6z1rvr', 1, '114.10.10.95', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-11 00:30:45', '2024-07-11 00:30:45'),
(640, '2YGdBsjG8S0LPxJgDRP61wnxmBA3d1', 1, '66.249.79.233', 0, '0', '0', 'United States', '2024-07-11 10:10:51', '2024-07-11 10:10:51'),
(641, 'dnxqSKAOMj8RhJEwtEPMgiOrrIcxGj', 0, '149.113.95.157', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-12 04:18:01', '2024-07-12 04:18:01'),
(642, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.255', 1, 'Chrome', 'Linux', 'Indonesia', '2024-07-12 15:15:30', '2024-07-12 15:15:30'),
(643, '6y2czETltUIPP7mHp1cwDqHJLWkHwL', 0, '114.10.5.255', 1, 'Chrome', 'Linux', 'Indonesia', '2024-07-12 15:18:47', '2024-07-12 15:18:47'),
(644, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 1, '182.2.83.25', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-14 05:14:51', '2024-07-14 05:14:51'),
(645, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 0, '182.2.83.25', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-14 05:15:51', '2024-07-14 05:15:51'),
(646, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 0, '182.2.71.25', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-14 06:54:47', '2024-07-14 06:54:47'),
(647, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 0, '182.2.71.25', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-14 06:54:52', '2024-07-14 06:54:52'),
(648, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 0, '182.2.71.25', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-14 06:55:12', '2024-07-14 06:55:12'),
(649, '0LKU3NwTsgifQLMaPs1wH4fdUQOQBz', 1, '140.213.165.208', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-14 06:55:19', '2024-07-14 06:55:19'),
(650, '0LKU3NwTsgifQLMaPs1wH4fdUQOQBz', 0, '140.213.165.208', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-14 06:55:54', '2024-07-14 06:55:54'),
(651, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 0, '125.166.98.100', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-14 14:53:55', '2024-07-14 14:53:55'),
(652, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 0, '125.166.98.100', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-14 14:54:00', '2024-07-14 14:54:00'),
(653, 'dRIJNjHQE5k0kYTr2U6TyeVoCVYkVy', 1, '66.249.72.137', 0, '0', '0', 'United States', '2024-07-15 03:56:57', '2024-07-15 03:56:57'),
(654, '0LKU3NwTsgifQLMaPs1wH4fdUQOQBz', 0, '112.215.167.250', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-15 13:04:46', '2024-07-15 13:04:46'),
(655, 'CODb9Kyex3QulZoEkFbsguPoiY6cHJ', 1, '112.215.160.137', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-15 13:05:37', '2024-07-15 13:05:37'),
(656, '0o9Y5HbjgvtvLgEoqS91qcDzqBoA4c', 1, '112.215.145.29', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-15 13:05:39', '2024-07-15 13:05:39'),
(657, 'CODb9Kyex3QulZoEkFbsguPoiY6cHJ', 0, '112.215.160.137', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-15 13:06:16', '2024-07-15 13:06:16'),
(658, 'MsAe2s5Pn3wZ1vImmFc7dejnvf1AIQ', 1, '182.2.84.177', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-15 13:06:37', '2024-07-15 13:06:37'),
(659, 'zb4j3UVxTJmXBodUAgGMKDK055Wah0', 1, '2a02:26f7:dfcd:46c0:0:c3a7:408d:1f2a', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-15 13:07:30', '2024-07-15 13:07:30'),
(660, 'MsAe2s5Pn3wZ1vImmFc7dejnvf1AIQ', 0, '182.2.84.177', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-15 13:08:01', '2024-07-15 13:08:01'),
(661, 'zb4j3UVxTJmXBodUAgGMKDK055Wah0', 0, '2a02:26f7:dfcd:46c0:0:4ab7:6363:b590', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-15 13:50:41', '2024-07-15 13:50:41'),
(662, 'MsAe2s5Pn3wZ1vImmFc7dejnvf1AIQ', 0, '182.2.84.177', 1, 'Chrome', 'Linux', 'Indonesia', '2024-07-15 14:51:30', '2024-07-15 14:51:30'),
(663, 'MsAe2s5Pn3wZ1vImmFc7dejnvf1AIQ', 0, '182.2.84.177', 1, 'Chrome', 'Linux', 'Indonesia', '2024-07-15 14:52:58', '2024-07-15 14:52:58'),
(664, 'TYkoeKBmrbk0cHkcrArkhHI2JKrY17', 1, '182.2.37.90', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-16 01:13:21', '2024-07-16 01:13:21'),
(665, 'TYkoeKBmrbk0cHkcrArkhHI2JKrY17', 0, '182.2.37.90', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-16 01:14:29', '2024-07-16 01:14:29'),
(666, 'TYkoeKBmrbk0cHkcrArkhHI2JKrY17', 0, '182.2.37.90', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-16 01:14:41', '2024-07-16 01:14:41'),
(667, 'Tdr5dkLbiyu1s4h662JMu7nRNIdQR2', 1, '2404:c0:9810::1:591:c74b', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-16 07:39:14', '2024-07-16 07:39:14'),
(668, 'Dw8A4F6r27FqPqW28V7Z3JXI1LjgfX', 1, '114.10.139.21', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-16 08:58:05', '2024-07-16 08:58:05'),
(669, 'zb4j3UVxTJmXBodUAgGMKDK055Wah0', 0, '2a04:4e41:f:e::810d:2cec', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-16 11:24:04', '2024-07-16 11:24:04'),
(670, 'RVvG0Y4kpSCKASd58GMhi5VBnVGZY3', 0, '103.162.237.135', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-16 17:14:10', '2024-07-16 17:14:10'),
(671, 'Dw8A4F6r27FqPqW28V7Z3JXI1LjgfX', 0, '114.10.139.147', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-17 06:42:12', '2024-07-17 06:42:12'),
(672, 'fYQobKha4fACExnM7Lb8pxcAW9Tcjo', 1, '114.10.18.49', 1, 'Edge', 'Windows', 'Indonesia', '2024-07-17 15:17:09', '2024-07-17 15:17:09'),
(673, 'ETiiTNgZV22TePVE9oKQUMbmXXinf8', 1, '2001:448a:4009:250f:a84f:884e:da72:3f2b', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-18 00:54:34', '2024-07-18 00:54:34'),
(674, 'lIvrR6RtXn2aeJ6Czaxhi5wIuFUjfe', 1, '40.77.189.197', 0, 'Chrome', '0', 'United States', '2024-07-18 01:52:41', '2024-07-18 01:52:41'),
(675, 'yodbM3RhKg9CMhEcOiXqT4UEgSqmn1', 1, '182.2.43.151', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-18 15:12:34', '2024-07-18 15:12:34'),
(676, 'yodbM3RhKg9CMhEcOiXqT4UEgSqmn1', 1, '182.2.43.151', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-18 15:12:34', '2024-07-18 15:12:34'),
(677, 'MsAe2s5Pn3wZ1vImmFc7dejnvf1AIQ', 0, '182.2.85.145', 1, 'Chrome', 'Linux', 'Indonesia', '2024-07-18 17:42:26', '2024-07-18 17:42:26'),
(678, 'g52mqyUzCeh9HdKBAVDjt9D58LS0dr', 0, '36.79.169.68', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-19 07:56:14', '2024-07-19 07:56:14'),
(679, 'g52mqyUzCeh9HdKBAVDjt9D58LS0dr', 0, '36.79.169.68', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-19 08:05:43', '2024-07-19 08:05:43'),
(680, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 0, '182.2.46.211', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-20 03:59:50', '2024-07-20 03:59:50'),
(681, 'p3WCa4BOsCZtwzgyJPOBGc3ZHYubS7', 1, '205.169.39.11', 1, 'Chrome', 'Windows', 'United States', '2024-07-20 06:11:21', '2024-07-20 06:11:21'),
(682, 'vHkhLHE5AATtV1z08gHxM7E3oF3xRb', 0, '182.2.45.122', 0, 'Safari', 'iOS', 'Indonesia', '2024-07-20 10:50:55', '2024-07-20 10:50:55'),
(683, 'Oa5lP9RKqzJXFRuh8XCmEAu7FvF1xl', 1, '205.169.39.4', 1, 'Chrome', 'Windows', 'United States', '2024-07-20 18:07:45', '2024-07-20 18:07:45'),
(684, 'FhAyWwgl7PVlwFUbskAYxMT2vetUeY', 1, '36.71.82.73', 0, 'Chrome', 'AndroidOS', 'Indonesia', '2024-07-21 03:25:40', '2024-07-21 03:25:40'),
(685, 'Ae6JphtZ1YeYs0Zv0rQXFSIqXFnfIR', 1, '182.2.52.185', 1, 'Chrome', 'OS X', 'Indonesia', '2024-07-22 04:05:45', '2024-07-22 04:05:45'),
(686, 'Ae6JphtZ1YeYs0Zv0rQXFSIqXFnfIR', 0, '182.2.52.185', 1, 'Chrome', 'OS X', 'Indonesia', '2024-07-22 04:11:17', '2024-07-22 04:11:17'),
(687, 'ASKi32vSG9ylV5TANCTqwuBq8ZuNZy', 1, '114.10.4.122', 1, 'Firefox', 'Windows', 'Indonesia', '2024-07-22 04:20:17', '2024-07-22 04:20:17'),
(688, 'ASKi32vSG9ylV5TANCTqwuBq8ZuNZy', 0, '114.10.4.122', 1, 'Firefox', 'Windows', 'Indonesia', '2024-07-22 04:21:00', '2024-07-22 04:21:00'),
(689, 'ASKi32vSG9ylV5TANCTqwuBq8ZuNZy', 0, '114.10.4.122', 1, 'Firefox', 'Windows', 'Indonesia', '2024-07-22 04:21:55', '2024-07-22 04:21:55'),
(690, 'Ae6JphtZ1YeYs0Zv0rQXFSIqXFnfIR', 0, '182.2.52.185', 1, 'Chrome', 'OS X', 'Indonesia', '2024-07-22 04:23:31', '2024-07-22 04:23:31'),
(691, 'ASKi32vSG9ylV5TANCTqwuBq8ZuNZy', 0, '114.10.4.122', 1, 'Firefox', 'Windows', 'Indonesia', '2024-07-22 04:33:49', '2024-07-22 04:33:49'),
(692, 'ASKi32vSG9ylV5TANCTqwuBq8ZuNZy', 0, '114.10.4.122', 1, 'Firefox', 'Windows', 'Indonesia', '2024-07-22 04:35:53', '2024-07-22 04:35:53'),
(693, 'Ae6JphtZ1YeYs0Zv0rQXFSIqXFnfIR', 0, '182.2.52.185', 1, 'Chrome', 'OS X', 'Indonesia', '2024-07-22 04:49:45', '2024-07-22 04:49:45'),
(694, 'K2cbPPSBuOltG9ocZ7xqjj0MbbfVGD', 1, '112.215.145.27', 1, 'Chrome', 'Windows', 'Indonesia', '2024-07-22 05:14:21', '2024-07-22 05:14:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portfolio_configs`
--
ALTER TABLE `portfolio_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `portfolio_configs`
--
ALTER TABLE `portfolio_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
