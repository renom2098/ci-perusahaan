-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 11:27 AM
-- Server version: 10.4.11-MariaDB
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
-- Database: `simadu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin_sistem`
--

CREATE TABLE `t_admin_sistem` (
  `id_admin` int(11) NOT NULL,
  `lv_admin` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `kata_kunci` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_admin_sistem`
--

INSERT INTO `t_admin_sistem` (`id_admin`, `lv_admin`, `nama`, `username`, `password`, `pertanyaan`, `kata_kunci`) VALUES
(3, '1', 'Admin Utama', 'superuser', 'superuser', 'superuser', 'superuser'),
(5, '', 'Aziz', 'admin003', 'admin003', '', ''),
(6, '', 'asdas', 'asdasd', 'asdas', '', ''),
(105, '2', 'Aziz', 'admin005', 'admin005', '', ''),
(106, '2', 'Reno', 'admin002', 'admin002', '', ''),
(107, '2', 'Tyo', 'admin003', 'admin003', '', ''),
(108, '2', 'Ryian', 'admin004', 'admin004', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_btn_pengguna`
--

CREATE TABLE `t_btn_pengguna` (
  `id_btn_pgn` int(50) NOT NULL,
  `nama_pgn` varchar(30) NOT NULL,
  `email_pgn` varchar(30) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_dosen`
--

CREATE TABLE `t_dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(128) NOT NULL,
  `nidn` int(20) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `perguruan_tinggi` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `photo` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_fakultas`
--

CREATE TABLE `t_fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `perguruan_tinggi` varchar(255) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_komentar`
--

CREATE TABLE `t_komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL DEFAULT 0,
  `id_perusahaan` int(11) NOT NULL DEFAULT 0,
  `komentar` text NOT NULL,
  `tanggal_komentar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_komentar`
--

INSERT INTO `t_komentar` (`id_komentar`, `id_mhs`, `id_perusahaan`, `komentar`, `tanggal_komentar`) VALUES
(1, 0, 0, 'Bagus namun kurang ramah.', '2020-06-24 14:51:29'),
(2, 0, 0, 'Hellooo kamu sedang apa?', '2020-06-24 14:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `t_kot_kab`
--

CREATE TABLE `t_kot_kab` (
  `id_kotkab` int(5) NOT NULL,
  `kota_kab` varchar(50) NOT NULL,
  `id_prov` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kot_kab`
--

INSERT INTO `t_kot_kab` (`id_kotkab`, `kota_kab`, `id_prov`) VALUES
(1, 'CILEGON', 1),
(2, 'LEBAK', 1),
(3, 'PANDEGLANG', 1),
(4, 'SERANG', 1),
(5, 'TANGERANG', 1),
(6, 'TANGERANG SELATAN', 1),
(7, 'JAKARTA BARAT', 2),
(8, 'JAKARTA PUSAT', 2),
(9, 'JAKARTA SELATAN', 2),
(10, 'JAKARTA TIMUR', 2),
(11, 'JAKARTA UTARA', 2),
(12, 'KEPULAUAN SERIBU', 2),
(13, 'BANDUNG', 3),
(14, 'BANDUNG BARAT', 3),
(15, 'BANJAR', 3),
(16, 'BEKASI', 3),
(17, 'BOGOR', 3),
(18, 'CIAMIS', 3),
(19, 'CIANJUR', 3),
(20, 'CIMAHI', 3),
(21, 'CIREBON', 3),
(22, 'DEPOK', 3),
(23, 'GARUT', 3),
(24, 'INDRAMAYU', 3),
(25, 'KARAWANG', 3),
(26, 'KUNINGAN', 3),
(27, 'MAJALENGKA', 3),
(28, 'PANGANDARAN', 3),
(29, 'PURWAKARTA', 3),
(30, 'SUBANG', 3),
(31, 'SUKABUMI', 3),
(32, 'SUMEDANG', 3),
(33, 'TASIKMALAYA', 3),
(34, 'BANJARNEGARA', 4),
(35, 'BANYUMAS', 4),
(36, 'BATANG', 4),
(37, 'BLORA', 4),
(38, 'BOYOLALI', 4),
(39, 'BREBES', 4),
(40, 'CILACAP', 4),
(41, 'DEMAK', 4),
(42, 'GROBOGAN', 4),
(43, 'JEPARA', 4),
(44, 'KARANGANYAR', 4),
(45, 'KEBUMEN', 4),
(46, 'KENDAL', 4),
(47, 'KLATEN', 4),
(48, 'KUDUS', 4),
(49, 'MAGELANG', 4),
(50, 'PATI', 4),
(51, 'PEKALONGAN', 4),
(52, 'PEMALANG', 4),
(53, 'PURBALINGGA', 4),
(54, 'PURWOREJO', 4),
(55, 'REMBANG', 4),
(56, 'SALATIGA', 4),
(57, 'SEMARANG', 4),
(58, 'SRAGEN', 4),
(59, 'SUKOHARJO', 4),
(60, 'SURAKARTA (SOLO)', 4),
(61, 'TEGAL', 4),
(62, 'TEMANGGUNG', 4),
(63, 'WONOGIRI', 4),
(64, 'WONOSOBO', 4),
(65, 'BANTUL', 5),
(66, 'GUNUNG KIDUL', 5),
(67, 'KULON PROGO', 5),
(68, 'SLEMAN', 5),
(69, 'YOGYAKARTA', 5),
(70, 'BANGKALAN', 6),
(71, 'BANYUWANGI', 6),
(72, 'BATU', 6),
(73, 'BLITAR', 6),
(74, 'BOJONEGORO', 6),
(75, 'BONDOWOSO', 6),
(76, 'GRESIK', 6),
(77, 'JEMBER', 6),
(78, 'JOMBANG', 6),
(79, 'KEDIRI', 6),
(80, 'LAMONGAN', 6),
(81, 'LUMAJANG', 6),
(82, 'MADIUN', 6),
(83, 'MAGETAN', 6),
(84, 'MALANG', 6),
(85, 'MOJOKERTO', 6),
(86, 'NGANJUK', 6),
(87, 'NGAWI', 6),
(88, 'PACITAN', 6),
(89, 'PAMEKASAN', 6),
(90, 'PASURUAN', 6),
(91, 'PONOROGO', 6),
(92, 'PROBOLINGGO', 6),
(93, 'SAMPANG', 6),
(94, 'SIDOARJO', 6),
(95, 'SITUBONDO', 6),
(96, 'SUMENEP', 6),
(97, 'SURABAYA', 6),
(98, 'TRENGGALEK', 6),
(99, 'TUBAN', 6),
(100, 'TULUNGAGUNG', 6),
(101, 'BADUNG', 7),
(102, 'BANGLI', 7),
(103, 'BULELENG', 7),
(104, 'DENPASAR', 7),
(105, 'GIANYAR', 7),
(106, 'JEMBRANA', 7),
(107, 'KARANGASEM', 7),
(108, 'KLUNGKUNG', 7),
(109, 'TABANAN', 7),
(110, 'ACEH BARAT', 8),
(111, 'ACEH BARAT DAYA', 8),
(112, 'ACEH BESAR', 8),
(113, 'ACEH JAYA', 8),
(114, 'ACEH SELATAN', 8),
(115, 'ACEH SINGKIL', 8),
(116, 'ACEH TAMIANG', 8),
(117, 'ACEH TENGAH', 8),
(118, 'ACEH TENGGARA', 8),
(119, 'ACEH TIMUR', 8),
(120, 'ACEH UTARA', 8),
(121, 'BANDA ACEH', 8),
(122, 'BENER MERIAH', 8),
(123, 'BIREUEN', 8),
(124, 'GAYO LUES', 8),
(125, 'LANGSA', 8),
(126, 'LHOKSEUMAWE', 8),
(127, 'NAGAN RAYA', 8),
(128, 'PIDIE', 8),
(129, 'PIDIE JAYA', 8),
(130, 'SABANG', 8),
(131, 'SIMEULUE', 8),
(132, 'SUBULUSSALAM', 8),
(133, 'ASAHAN', 9),
(134, 'BATU BARA', 9),
(135, 'BINJAI', 9),
(136, 'DAIRI', 9),
(137, 'DELI SERDANG', 9),
(138, 'GUNUNGSITOLI', 9),
(139, 'HUMBANG HASUNDUTAN', 9),
(140, 'KARO', 9),
(141, 'LABUHAN BATU', 9),
(142, 'LABUHAN BATU SELATAN', 9),
(143, 'LABUHAN BATU UTARA', 9),
(144, 'LANGKAT', 9),
(145, 'MANDAILING NATAL', 9),
(146, 'MEDAN', 9),
(147, 'NIAS', 9),
(148, 'NIAS BARAT', 9),
(149, 'NIAS SELATAN', 9),
(150, 'NIAS UTARA', 9),
(151, 'PADANG LAWAS', 9),
(152, 'PADANG LAWAS UTARA', 9),
(153, 'PADANG SIDEMPUAN', 9),
(154, 'PAKPAK BHARAT', 9),
(155, 'PEMATANG SIANTAR', 9),
(156, 'SAMOSIR', 9),
(157, 'SERDANG BEDAGAI', 9),
(158, 'SIBOLGA', 9),
(159, 'SIMALUNGUN', 9),
(160, 'TANJUNG BALAI', 9),
(161, 'TAPANULI SELATAN', 9),
(162, 'TAPANULI TENGAH', 9),
(163, 'TAPANULI UTARA', 9),
(164, 'TEBING TINGGI', 9),
(165, 'TOBA SAMOSIR', 9),
(166, 'AGAM', 10),
(167, 'BUKITTINGGI', 10),
(168, 'DHARMASRAYA', 10),
(169, 'KEPULAUAN MENTAWAI', 10),
(170, 'LIMA PULUH KOTO/KOTA', 10),
(171, 'PADANG', 10),
(172, 'PADANG PANJANG', 10),
(173, 'PADANG PARIAMAN', 10),
(174, 'PARIAMAN', 10),
(175, 'PASAMAN', 10),
(176, 'PASAMAN BARAT', 10),
(177, 'PAYAKUMBUH', 10),
(178, 'PESISIR SELATAN', 10),
(179, 'SAWAH LUNTO', 10),
(180, 'SIJUNJUNG (SAWAH LUNTO SIJUNJUNG)', 10),
(181, 'SOLOK', 10),
(182, 'SOLOK SELATAN', 10),
(183, 'TANAH DATAR', 10),
(184, 'BENGKALIS', 11),
(185, 'DUMAI', 11),
(186, 'INDRAGIRI HILIR', 11),
(187, 'INDRAGIRI HULU', 11),
(188, 'KAMPAR', 11),
(189, 'KEPULAUAN MERANTI', 11),
(190, 'KUANTAN SINGINGI', 11),
(191, 'PEKANBARU', 11),
(192, 'PELALAWAN', 11),
(193, 'ROKAN HILIR', 11),
(194, 'ROKAN HULU', 11),
(195, 'SIAK', 11),
(196, 'BATAM', 12),
(197, 'BINTAN', 12),
(198, 'KARIMUN', 12),
(199, 'KEPULAUAN ANAMBAS', 12),
(200, 'LINGGA', 12),
(201, 'NATUNA', 12),
(202, 'TANJUNG PINANG', 12),
(203, 'BATANG HARI', 13),
(204, 'BUNGO', 13),
(205, 'JAMBI', 13),
(206, 'KERINCI', 13),
(207, 'MERANGIN', 13),
(208, 'MUARO JAMBI', 13),
(209, 'SAROLANGUN', 13),
(210, 'SUNGAIPENUH', 13),
(211, 'TANJUNG JABUNG BARAT', 13),
(212, 'TANJUNG JABUNG TIMUR', 13),
(213, 'TEBO', 13),
(214, 'BENGKULU', 14),
(215, 'BENGKULU SELATAN', 14),
(216, 'BENGKULU TENGAH', 14),
(217, 'BENGKULU UTARA', 14),
(218, 'KAUR', 14),
(219, 'KEPAHIANG', 14),
(220, 'LEBONG', 14),
(221, 'MUKO MUKO', 14),
(222, 'REJANG LEBONG', 14),
(223, 'SELUMA', 14),
(224, 'BANYUASIN', 15),
(225, 'EMPAT LAWANG', 15),
(226, 'LAHAT', 15),
(227, 'LUBUK LINGGAU', 15),
(228, 'MUARA ENIM', 15),
(229, 'MUSI BANYUASIN', 15),
(230, 'MUSI RAWAS', 15),
(231, 'OGAN ILIR', 15),
(232, 'OGAN KOMERING ILIR', 15),
(233, 'OGAN KOMERING ULU', 15),
(234, 'OGAN KOMERING ULU SELATAN', 15),
(235, 'OGAN KOMERING ULU TIMUR', 15),
(236, 'PAGAR ALAM', 15),
(237, 'PALEMBANG', 15),
(238, 'PRABUMULIH', 15),
(239, 'BANGKA', 16),
(240, 'BANGKA BARAT', 16),
(241, 'BANGKA SELATAN', 16),
(242, 'BANGKA TENGAH', 16),
(243, 'BELITUNG', 16),
(244, 'BELITUNG TIMUR', 16),
(245, 'PANGKAL PINANG', 16),
(246, 'BANDAR LAMPUNG', 17),
(247, 'LAMPUNG BARAT', 17),
(248, 'LAMPUNG SELATAN', 17),
(249, 'LAMPUNG TENGAH', 17),
(250, 'LAMPUNG TIMUR', 17),
(251, 'LAMPUNG UTARA', 17),
(252, 'MESUJI', 17),
(253, 'METRO', 17),
(254, 'PESAWARAN', 17),
(255, 'PESISIR BARAT', 17),
(256, 'PRINGSEWU', 17),
(257, 'TANGGAMUS', 17),
(258, 'TULANG BAWANG', 17),
(259, 'TULANG BAWANG BARAT', 17),
(260, 'WAY KANAN', 17),
(261, 'BENGKAYANG', 18),
(262, 'KAPUAS HULU', 18),
(263, 'KAYONG UTARA', 18),
(264, 'KETAPANG', 18),
(265, 'KUBU RAYA', 18),
(266, 'LANDAK', 18),
(267, 'MELAWI', 18),
(268, 'PONTIANAK', 18),
(269, 'SAMBAS', 18),
(270, 'SANGGAU', 18),
(271, 'SEKADAU', 18),
(272, 'SINGKAWANG', 18),
(273, 'SINTANG', 18),
(274, 'BARITO SELATAN', 19),
(275, 'BARITO TIMUR', 19),
(276, 'BARITO UTARA', 19),
(277, 'GUNUNG MAS', 19),
(278, 'KAPUAS', 19),
(279, 'KATINGAN', 19),
(280, 'KOTAWARINGIN BARAT', 19),
(281, 'KOTAWARINGIN TIMUR', 19),
(282, 'LAMANDAU', 19),
(283, 'MURUNG RAYA', 19),
(284, 'PALANGKA RAYA', 19),
(285, 'PULANG PISAU', 19),
(286, 'SERUYAN', 19),
(287, 'SUKAMARA', 19),
(288, 'BALANGAN', 20),
(289, 'BANJAR', 20),
(290, 'BANJARBARU', 20),
(291, 'BANJARMASIN', 20),
(292, 'BARITO KUALA', 20),
(293, 'HULU SUNGAI SELATAN', 20),
(294, 'HULU SUNGAI TENGAH', 20),
(295, 'HULU SUNGAI UTARA', 20),
(296, 'KOTABARU', 20),
(297, 'TABALONG', 20),
(298, 'TANAH BUMBU', 20),
(299, 'TANAH LAUT', 20),
(300, 'TAPIN', 20),
(301, 'BALIKPAPAN', 21),
(302, 'BERAU', 21),
(303, 'BONTANG', 21),
(304, 'KUTAI BARAT', 21),
(305, 'KUTAI KARTANEGARA', 21),
(306, 'KUTAI TIMUR', 21),
(307, 'PASER', 21),
(308, 'PENAJAM PASER UTARA', 21),
(309, 'SAMARINDA', 21),
(310, 'BULUNGAN (BULONGAN)', 22),
(311, 'MALINAU', 22),
(312, 'NUNUKAN', 22),
(313, 'TANA TIDUNG', 22),
(314, 'TARAKAN', 22),
(315, 'MAJENE', 23),
(316, 'MAMASA', 23),
(317, 'MAMUJU', 23),
(318, 'MAMUJU UTARA', 23),
(319, 'POLEWALI MANDAR', 23),
(320, 'BANTAENG', 24),
(321, 'BARRU', 24),
(322, 'BONE', 24),
(323, 'BULUKUMBA', 24),
(324, 'ENREKANG', 24),
(325, 'GOWA', 24),
(326, 'JENEPONTO', 24),
(327, 'LUWU', 24),
(328, 'LUWU TIMUR', 24),
(329, 'LUWU UTARA', 24),
(330, 'MAKASSAR', 24),
(331, 'MAROS', 24),
(332, 'PALOPO', 24),
(333, 'PANGKAJENE KEPULAUAN', 24),
(334, 'PAREPARE', 24),
(335, 'PINRANG', 24),
(336, 'SELAYAR (KEPULAUAN SELAYAR)', 24),
(337, 'SIDENRENG RAPPANG/RAPANG', 24),
(338, 'SINJAI', 24),
(339, 'SOPPENG', 24),
(340, 'TAKALAR', 24),
(341, 'TANA TORAJA', 24),
(342, 'TORAJA UTARA', 24),
(343, 'WAJO', 24),
(344, 'BAU-BAU', 25),
(345, 'BOMBANA', 25),
(346, 'BUTON', 25),
(347, 'BUTON UTARA', 25),
(348, 'KENDARI', 25),
(349, 'KOLAKA', 25),
(350, 'KOLAKA UTARA', 25),
(351, 'KONAWE', 25),
(352, 'KONAWE SELATAN', 25),
(353, 'KONAWE UTARA', 25),
(354, 'MUNA', 25),
(355, 'WAKATOBI', 25),
(356, 'BANGGAI', 26),
(357, 'BANGGAI KEPULAUAN', 26),
(358, 'BUOL', 26),
(359, 'DONGGALA', 26),
(360, 'MOROWALI', 26),
(361, 'PALU', 26),
(362, 'PARIGI MOUTONG', 26),
(363, 'POSO', 26),
(364, 'SIGI', 26),
(365, 'TOJO UNA-UNA', 26),
(366, 'TOLI-TOLI', 26),
(367, 'BOALEMO', 27),
(368, 'BONE BOLANGO', 27),
(369, 'GORONTALO', 27),
(370, 'GORONTALO UTARA', 27),
(371, 'POHUWATO', 27),
(372, 'BITUNG', 28),
(373, 'BOLAANG MONGONDOW (BOLMONG)', 28),
(374, 'BOLAANG MONGONDOW SELATAN', 28),
(375, 'BOLAANG MONGONDOW TIMUR', 28),
(376, 'BOLAANG MONGONDOW UTARA', 28),
(377, 'KEPULAUAN SANGIHE', 28),
(378, 'KEPULAUAN SIAU TAGULANDANG BIARO (SITARO)', 28),
(379, 'KEPULAUAN TALAUD', 28),
(380, 'KOTAMOBAGU', 28),
(381, 'MANADO', 28),
(382, 'MINAHASA', 28),
(383, 'MINAHASA SELATAN', 28),
(384, 'MINAHASA TENGGARA', 28),
(385, 'MINAHASA UTARA', 28),
(386, 'TOMOHON', 28),
(387, 'AMBON', 29),
(388, 'BURU', 29),
(389, 'BURU SELATAN', 29),
(390, 'KEPULAUAN ARU', 29),
(391, 'MALUKU BARAT DAYA', 29),
(392, 'MALUKU TENGAH', 29),
(393, 'MALUKU TENGGARA', 29),
(394, 'MALUKU TENGGARA BARAT', 29),
(395, 'SERAM BAGIAN BARAT', 29),
(396, 'SERAM BAGIAN TIMUR', 29),
(397, 'TUAL', 29),
(398, 'HALMAHERA BARAT', 30),
(399, 'HALMAHERA SELATAN', 30),
(400, 'HALMAHERA TENGAH', 30),
(401, 'HALMAHERA TIMUR', 30),
(402, 'HALMAHERA UTARA', 30),
(403, 'KEPULAUAN SULA', 30),
(404, 'PULAU MOROTAI', 30),
(405, 'TERNATE', 30),
(406, 'TIDORE KEPULAUAN', 30),
(407, 'BIMA', 31),
(408, 'DOMPU', 31),
(409, 'LOMBOK BARAT', 31),
(410, 'LOMBOK TENGAH', 31),
(411, 'LOMBOK TIMUR', 31),
(412, 'LOMBOK UTARA', 31),
(413, 'MATARAM', 31),
(414, 'SUMBAWA', 31),
(415, 'SUMBAWA BARAT', 31),
(416, 'ALOR', 32),
(417, 'BELU', 32),
(418, 'ENDE', 32),
(419, 'FLORES TIMUR', 32),
(420, 'KUPANG', 32),
(421, 'LEMBATA', 32),
(422, 'MANGGARAI', 32),
(423, 'MANGGARAI BARAT', 32),
(424, 'MANGGARAI TIMUR', 32),
(425, 'NAGEKEO', 32),
(426, 'NGADA', 32),
(427, 'ROTE NDAO', 32),
(428, 'SABU RAIJUA', 32),
(429, 'SIKKA', 32),
(430, 'SUMBA BARAT', 32),
(431, 'SUMBA BARAT DAYA', 32),
(432, 'SUMBA TENGAH', 32),
(433, 'SUMBA TIMUR', 32),
(434, 'TIMOR TENGAH SELATAN', 32),
(435, 'TIMOR TENGAH UTARA', 32),
(436, 'FAKFAK', 33),
(437, 'KAIMANA', 33),
(438, 'MANOKWARI', 33),
(439, 'MANOKWARI SELATAN', 33),
(440, 'MAYBRAT', 33),
(441, 'PEGUNUNGAN ARFAK', 33),
(442, 'RAJA AMPAT', 33),
(443, 'SORONG', 33),
(444, 'SORONG SELATAN', 33),
(445, 'TAMBRAUW', 33),
(446, 'TELUK BINTUNI', 33),
(447, 'TELUK WONDAMA', 33),
(448, 'ASMAT', 34),
(449, 'BIAK NUMFOR', 34),
(450, 'BOVEN DIGOEL', 34),
(451, 'DEIYAI (DELIYAI)', 34),
(452, 'DOGIYAI', 34),
(453, 'INTAN JAYA', 34),
(454, 'JAYAPURA', 34),
(455, 'JAYAWIJAYA', 34),
(456, 'KEEROM', 34),
(457, 'KEPULAUAN YAPEN (YAPEN WAROPEN)', 34),
(458, 'LANNY JAYA', 34),
(459, 'MAMBERAMO RAYA', 34),
(460, 'MAMBERAMO TENGAH', 34),
(461, 'MAPPI', 34),
(462, 'MERAUKE', 34),
(463, 'MIMIKA', 34),
(464, 'NABIRE', 34),
(465, 'NDUGA', 34),
(466, 'PANIAI', 34),
(467, 'PEGUNUNGAN BINTANG', 34),
(468, 'PUNCAK', 34),
(469, 'PUNCAK JAYA', 34),
(470, 'SARMI', 34),
(471, 'SUPIORI', 34),
(472, 'TOLIKARA', 34),
(473, 'WAROPEN', 34),
(474, 'YAHUKIMO', 34),
(475, 'YALIMO', 34);

-- --------------------------------------------------------

--
-- Table structure for table `t_lkp_koordinasi`
--

CREATE TABLE `t_lkp_koordinasi` (
  `kode_lkp_koordinasi` int(20) NOT NULL,
  `nama_lkp_koordinasi` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_mahasiswa`
--

CREATE TABLE `t_mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `jenis_kel` varchar(255) NOT NULL,
  `perguruan_tinggi` varchar(255) NOT NULL,
  `fakultas` varchar(255) NOT NULL,
  `program_studi` varchar(255) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `semester` int(2) NOT NULL,
  `keahlian` text NOT NULL,
  `prestasi_akd` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `penilaian` varchar(128) DEFAULT NULL,
  `jml_proyek` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_mahasiswa`
--

INSERT INTO `t_mahasiswa` (`id_mhs`, `nama_mhs`, `jenis_kel`, `perguruan_tinggi`, `fakultas`, `program_studi`, `nik`, `semester`, `keahlian`, `prestasi_akd`, `photo`, `penilaian`, `jml_proyek`, `username`, `password`) VALUES
(1, 'Reno Mujiarto', 'Laki-laki', 'Universitas Subang', 'Fakultas Ilmu Komputer', 'Sistem Informasi', 'D1A.160036', 7, 'Membuat website', 'Juara TI9 Dota 2', 'photo00.jpg', '1', 1, 'reno', 'reno'),
(2, 'Mesut Ozil', 'LAki-Laki', 'Institut Teknologi Bandung', 'Teknik Mesin', 'Areodinamik', '081011', 7, 'Bermain Bola', 'Juara Dunia Sepak Bola 2014', 'photo00.jpg', '3', 4, 'ozil', 'ozil'),
(3, 'Ana', 'Perempuan', 'Universitas Pasundan', 'Teknik Informatika', 'Komputer Sain', '12121313', 7, 'Bermain dota 2', 'Juara TI 8 dota 2', 'photo00.jpg', '13', 14, 'ana', 'ana');

-- --------------------------------------------------------

--
-- Table structure for table `t_paklaring`
--

CREATE TABLE `t_paklaring` (
  `id_paklaring` int(11) NOT NULL,
  `nama_file` varchar(128) DEFAULT '0',
  `tanggal_kirim` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_mahasiswa` int(11) NOT NULL DEFAULT 0,
  `id_perusahaan` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_paklaring`
--

INSERT INTO `t_paklaring` (`id_paklaring`, `nama_file`, `tanggal_kirim`, `id_mahasiswa`, `id_perusahaan`) VALUES
(1, NULL, '2020-06-26 08:49:06', 0, 0),
(2, '13.docx', '2020-06-26 09:25:40', 0, 0),
(3, '174342-ID-none12.pdf', '2020-06-26 09:26:15', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_pendaftaran`
--

CREATE TABLE `t_pendaftaran` (
  `id_pendaftar` int(11) NOT NULL,
  `kode_pendaftar` int(5) NOT NULL,
  `nama_pendaftar` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_penilaian`
--

CREATE TABLE `t_penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `bintang` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_perguruan_tinggi`
--

CREATE TABLE `t_perguruan_tinggi` (
  `id_prt` int(11) NOT NULL,
  `nama_prt` varchar(255) NOT NULL,
  `lkp_koordinasi` varchar(20) NOT NULL,
  `id_prov` int(10) NOT NULL,
  `id_kotkab` int(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(128) NOT NULL,
  `kode_pos` int(6) NOT NULL,
  `telepon` int(13) NOT NULL,
  `email` varchar(128) NOT NULL,
  `website` varchar(128) NOT NULL,
  `gambar_logo` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_perguruan_tinggi`
--

INSERT INTO `t_perguruan_tinggi` (`id_prt`, `nama_prt`, `lkp_koordinasi`, `id_prov`, `id_kotkab`, `alamat`, `kota`, `kode_pos`, `telepon`, `email`, `website`, `gambar_logo`, `status`, `username`, `password`) VALUES
(1, 'Universitas Subang', 'LLDIKTI IV', 2, 2, 'Jl. R.A Kartini No.48 Suban', '', 41281, 233123123, 'unsub@ac.id', 'www.unsub.ac.id', 'unsub.png', '0', 'unsub001', 'unsub001');

-- --------------------------------------------------------

--
-- Table structure for table `t_perusahaan`
--

CREATE TABLE `t_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(128) NOT NULL,
  `no_siup` varchar(128) NOT NULL,
  `id_prov` int(10) DEFAULT NULL,
  `id_kot_kab` int(10) DEFAULT NULL,
  `no_telepon` int(13) NOT NULL,
  `email` varchar(128) NOT NULL,
  `alamat_website` varchar(128) NOT NULL,
  `nama_pemilik` varchar(128) NOT NULL,
  `status` enum('0','1') DEFAULT NULL,
  `logo` varchar(50) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_perusahaan`
--

INSERT INTO `t_perusahaan` (`id_perusahaan`, `nama_perusahaan`, `no_siup`, `id_prov`, `id_kot_kab`, `no_telepon`, `email`, `alamat_website`, `nama_pemilik`, `status`, `logo`, `username`, `password`) VALUES
(11, 'PT. Maju Mundur', 'SIUP/001/JKT/2411/1212', 1, 1, 12345678, 'MJordan@gmail.com', 'www.MJordan.COM', 'Maulana Juhadi', '1', 'asas', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `t_provinsi`
--

CREATE TABLE `t_provinsi` (
  `id_prov` int(5) NOT NULL,
  `nama_prov` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_provinsi`
--

INSERT INTO `t_provinsi` (`id_prov`, `nama_prov`) VALUES
(1, 'BANTEN'),
(2, 'DKI JAKARTA'),
(3, 'JAWA BARAT'),
(4, 'JAWA TENGAH'),
(5, 'DI YOGYAKARTA'),
(6, 'JAWA TIMUR'),
(7, 'BALI'),
(8, 'NANGGROE ACEH DARUSSALAM (NAD)'),
(9, 'SUMATERA UTARA'),
(10, 'SUMATERA BARAT'),
(11, 'RIAU'),
(12, 'KEPULAUAN RIAU'),
(13, 'JAMBI'),
(14, 'BENGKULU'),
(15, 'SUMATERA SELATAN'),
(16, 'BANGKA BELITUNG'),
(17, 'LAMPUNG'),
(18, 'KALIMANTAN BARAT'),
(19, 'KALIMANTAN TENGAH'),
(20, 'KALIMANTAN SELATAN'),
(21, 'KALIMANTAN TIMUR'),
(22, 'KALIMANTAN UTARA'),
(23, 'SULAWESI BARAT'),
(24, 'SULAWESI SELATAN'),
(25, 'SULAWESI TENGGARA'),
(26, 'SULAWESI TENGAH'),
(27, 'GORONTALO'),
(28, 'SULAWESI UTARA'),
(29, 'MALUKU'),
(30, 'MALUKU UTARA'),
(31, 'NUSA TENGGARA BARAT (NTB)'),
(32, 'NUSA TENGGARA TIMUR (NTT)'),
(33, 'PAPUA BARAT'),
(34, 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `t_proyek`
--

CREATE TABLE `t_proyek` (
  `id_proyek` int(11) NOT NULL,
  `nama_proyek` varchar(128) NOT NULL,
  `deskripsi_proyek` text NOT NULL,
  `lokasi_proyek` varchar(128) NOT NULL,
  `tanggal_proyek` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_mahasiswa` int(11) DEFAULT NULL,
  `id_perusahaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_proyek`
--

INSERT INTO `t_proyek` (`id_proyek`, `nama_proyek`, `deskripsi_proyek`, `lokasi_proyek`, `tanggal_proyek`, `id_mahasiswa`, `id_perusahaan`) VALUES
(1, 'Proyek Pembuatan Website', 'Membuat website untuk promosi produk terbaru perusahaan.', 'Purwokerto', '2020-06-14 17:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_user_menu`
--

CREATE TABLE `t_user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_user_menu`
--

INSERT INTO `t_user_menu` (`id`, `menu`) VALUES
(1, 'Perguruan Tinggi'),
(2, 'Fakultas'),
(3, 'Dosen'),
(4, 'Mahasiswa'),
(5, 'Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `t_user_role`
--

CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_user_role`
--

INSERT INTO `t_user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin_sistem`
--
ALTER TABLE `t_admin_sistem`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `t_btn_pengguna`
--
ALTER TABLE `t_btn_pengguna`
  ADD PRIMARY KEY (`id_btn_pgn`);

--
-- Indexes for table `t_dosen`
--
ALTER TABLE `t_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `t_fakultas`
--
ALTER TABLE `t_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `t_komentar`
--
ALTER TABLE `t_komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `t_kot_kab`
--
ALTER TABLE `t_kot_kab`
  ADD PRIMARY KEY (`id_kotkab`);

--
-- Indexes for table `t_lkp_koordinasi`
--
ALTER TABLE `t_lkp_koordinasi`
  ADD PRIMARY KEY (`kode_lkp_koordinasi`);

--
-- Indexes for table `t_mahasiswa`
--
ALTER TABLE `t_mahasiswa`
  ADD PRIMARY KEY (`id_mhs`);

--
-- Indexes for table `t_paklaring`
--
ALTER TABLE `t_paklaring`
  ADD PRIMARY KEY (`id_paklaring`);

--
-- Indexes for table `t_pendaftaran`
--
ALTER TABLE `t_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftar`);

--
-- Indexes for table `t_penilaian`
--
ALTER TABLE `t_penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `t_perguruan_tinggi`
--
ALTER TABLE `t_perguruan_tinggi`
  ADD PRIMARY KEY (`id_prt`);

--
-- Indexes for table `t_perusahaan`
--
ALTER TABLE `t_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `t_provinsi`
--
ALTER TABLE `t_provinsi`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `t_proyek`
--
ALTER TABLE `t_proyek`
  ADD PRIMARY KEY (`id_proyek`);

--
-- Indexes for table `t_user_menu`
--
ALTER TABLE `t_user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_user_role`
--
ALTER TABLE `t_user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin_sistem`
--
ALTER TABLE `t_admin_sistem`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `t_btn_pengguna`
--
ALTER TABLE `t_btn_pengguna`
  MODIFY `id_btn_pgn` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_dosen`
--
ALTER TABLE `t_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_fakultas`
--
ALTER TABLE `t_fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_komentar`
--
ALTER TABLE `t_komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_kot_kab`
--
ALTER TABLE `t_kot_kab`
  MODIFY `id_kotkab` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT for table `t_lkp_koordinasi`
--
ALTER TABLE `t_lkp_koordinasi`
  MODIFY `kode_lkp_koordinasi` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_mahasiswa`
--
ALTER TABLE `t_mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_paklaring`
--
ALTER TABLE `t_paklaring`
  MODIFY `id_paklaring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_pendaftaran`
--
ALTER TABLE `t_pendaftaran`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_perguruan_tinggi`
--
ALTER TABLE `t_perguruan_tinggi`
  MODIFY `id_prt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_perusahaan`
--
ALTER TABLE `t_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_provinsi`
--
ALTER TABLE `t_provinsi`
  MODIFY `id_prov` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `t_proyek`
--
ALTER TABLE `t_proyek`
  MODIFY `id_proyek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `t_user_menu`
--
ALTER TABLE `t_user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_user_role`
--
ALTER TABLE `t_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
