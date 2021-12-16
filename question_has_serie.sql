-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 16 déc. 2021 à 15:22
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `auto_ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `question_has_serie`
--

CREATE TABLE `question_has_serie` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `serie_id` int(11) NOT NULL,
  `question_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `question_has_serie`
--

INSERT INTO `question_has_serie` (`id`, `question_id`, `serie_id`, `question_order`) VALUES
(1, 200, 1, 1),
(2, 317, 1, 2),
(3, 249, 1, 3),
(4, 310, 1, 4),
(5, 272, 1, 5),
(6, 109, 1, 6),
(7, 72, 1, 7),
(8, 285, 1, 8),
(9, 93, 1, 9),
(10, 158, 1, 10),
(11, 11, 1, 11),
(12, 270, 1, 12),
(13, 287, 1, 13),
(14, 24, 1, 14),
(15, 81, 1, 15),
(16, 173, 1, 16),
(17, 91, 1, 17),
(18, 252, 1, 18),
(19, 169, 1, 19),
(20, 13, 1, 20),
(21, 229, 1, 21),
(22, 272, 1, 22),
(23, 208, 1, 23),
(24, 205, 1, 24),
(25, 38, 1, 25),
(26, 311, 1, 26),
(27, 156, 1, 27),
(28, 53, 1, 28),
(29, 135, 1, 29),
(30, 142, 1, 30),
(31, 318, 1, 31),
(32, 134, 1, 32),
(33, 113, 1, 33),
(34, 264, 1, 34),
(35, 240, 1, 35),
(36, 135, 1, 36),
(37, 168, 1, 37),
(38, 151, 1, 38),
(39, 108, 1, 39),
(40, 258, 1, 40),
(41, 319, 2, 1),
(42, 35, 2, 2),
(43, 86, 2, 3),
(44, 295, 2, 4),
(45, 248, 2, 5),
(46, 301, 2, 6),
(47, 61, 2, 7),
(48, 80, 2, 8),
(49, 132, 2, 9),
(50, 250, 2, 10),
(51, 307, 2, 11),
(52, 251, 2, 12),
(53, 2, 2, 13),
(54, 288, 2, 14),
(55, 49, 2, 15),
(56, 16, 2, 16),
(57, 53, 2, 17),
(58, 179, 2, 18),
(59, 187, 2, 19),
(60, 82, 2, 20),
(61, 210, 2, 21),
(62, 305, 2, 22),
(63, 148, 2, 23),
(64, 41, 2, 24),
(65, 318, 2, 25),
(66, 133, 2, 26),
(67, 19, 2, 27),
(68, 267, 2, 28),
(69, 128, 2, 29),
(70, 7, 2, 30),
(71, 150, 2, 31),
(72, 7, 2, 32),
(73, 16, 2, 33),
(74, 226, 2, 34),
(75, 205, 2, 35),
(76, 99, 2, 36),
(77, 146, 2, 37),
(78, 156, 2, 38),
(79, 194, 2, 39),
(80, 70, 2, 40),
(81, 168, 3, 1),
(82, 230, 3, 2),
(83, 228, 3, 3),
(84, 80, 3, 4),
(85, 298, 3, 5),
(86, 256, 3, 6),
(87, 180, 3, 7),
(88, 315, 3, 8),
(89, 201, 3, 9),
(90, 150, 3, 10),
(91, 260, 3, 11),
(92, 230, 3, 12),
(93, 302, 3, 13),
(94, 45, 3, 14),
(95, 71, 3, 15),
(96, 189, 3, 16),
(97, 177, 3, 17),
(98, 61, 3, 18),
(99, 111, 3, 19),
(100, 46, 3, 20),
(101, 240, 3, 21),
(102, 127, 3, 22),
(103, 320, 3, 23),
(104, 176, 3, 24),
(105, 282, 3, 25),
(106, 232, 3, 26),
(107, 97, 3, 27),
(108, 195, 3, 28),
(109, 19, 3, 29),
(110, 223, 3, 30),
(111, 110, 3, 31),
(112, 36, 3, 32),
(113, 74, 3, 33),
(114, 9, 3, 34),
(115, 125, 3, 35),
(116, 274, 3, 36),
(117, 318, 3, 37),
(118, 120, 3, 38),
(119, 306, 3, 39),
(120, 155, 3, 40),
(121, 283, 4, 1),
(122, 68, 4, 2),
(123, 134, 4, 3),
(124, 184, 4, 4),
(125, 316, 4, 5),
(126, 153, 4, 6),
(127, 88, 4, 7),
(128, 169, 4, 8),
(129, 122, 4, 9),
(130, 8, 4, 10),
(131, 160, 4, 11),
(132, 235, 4, 12),
(133, 293, 4, 13),
(134, 145, 4, 14),
(135, 63, 4, 15),
(136, 305, 4, 16),
(137, 92, 4, 17),
(138, 260, 4, 18),
(139, 21, 4, 19),
(140, 302, 4, 20),
(141, 314, 4, 21),
(142, 189, 4, 22),
(143, 129, 4, 23),
(144, 41, 4, 24),
(145, 312, 4, 25),
(146, 224, 4, 26),
(147, 197, 4, 27),
(148, 162, 4, 28),
(149, 71, 4, 29),
(150, 2, 4, 30),
(151, 153, 4, 31),
(152, 54, 4, 32),
(153, 254, 4, 33),
(154, 310, 4, 34),
(155, 175, 4, 35),
(156, 102, 4, 36),
(157, 269, 4, 37),
(158, 287, 4, 38),
(159, 75, 4, 39),
(160, 131, 4, 40),
(161, 107, 5, 1),
(162, 106, 5, 2),
(163, 36, 5, 3),
(164, 119, 5, 4),
(165, 97, 5, 5),
(166, 279, 5, 6),
(167, 240, 5, 7),
(168, 80, 5, 8),
(169, 132, 5, 9),
(170, 312, 5, 10),
(171, 33, 5, 11),
(172, 67, 5, 12),
(173, 284, 5, 13),
(174, 111, 5, 14),
(175, 152, 5, 15),
(176, 90, 5, 16),
(177, 71, 5, 17),
(178, 86, 5, 18),
(179, 206, 5, 19),
(180, 313, 5, 20),
(181, 7, 5, 21),
(182, 320, 5, 22),
(183, 55, 5, 23),
(184, 250, 5, 24),
(185, 121, 5, 25),
(186, 181, 5, 26),
(187, 128, 5, 27),
(188, 159, 5, 28),
(189, 309, 5, 29),
(190, 158, 5, 30),
(191, 114, 5, 31),
(192, 191, 5, 32),
(193, 187, 5, 33),
(194, 244, 5, 34),
(195, 80, 5, 35),
(196, 260, 5, 36),
(197, 129, 5, 37),
(198, 64, 5, 38),
(199, 172, 5, 39),
(200, 249, 5, 40),
(201, 298, 6, 1),
(202, 250, 6, 2),
(203, 241, 6, 3),
(204, 205, 6, 4),
(205, 91, 6, 5),
(206, 209, 6, 6),
(207, 56, 6, 7),
(208, 88, 6, 8),
(209, 48, 6, 9),
(210, 171, 6, 10),
(211, 139, 6, 11),
(212, 102, 6, 12),
(213, 127, 6, 13),
(214, 210, 6, 14),
(215, 191, 6, 15),
(216, 270, 6, 16),
(217, 277, 6, 17),
(218, 123, 6, 18),
(219, 52, 6, 19),
(220, 224, 6, 20),
(221, 95, 6, 21),
(222, 203, 6, 22),
(223, 6, 6, 23),
(224, 29, 6, 24),
(225, 2, 6, 25),
(226, 179, 6, 26),
(227, 166, 6, 27),
(228, 14, 6, 28),
(229, 94, 6, 29),
(230, 214, 6, 30),
(231, 110, 6, 31),
(232, 205, 6, 32),
(233, 97, 6, 33),
(234, 296, 6, 34),
(235, 89, 6, 35),
(236, 14, 6, 36),
(237, 102, 6, 37),
(238, 72, 6, 38),
(239, 3, 6, 39),
(240, 167, 6, 40),
(241, 107, 7, 1),
(242, 82, 7, 2),
(243, 264, 7, 3),
(244, 71, 7, 4),
(245, 160, 7, 5),
(246, 139, 7, 6),
(247, 125, 7, 7),
(248, 276, 7, 8),
(249, 61, 7, 9),
(250, 278, 7, 10),
(251, 12, 7, 11),
(252, 284, 7, 12),
(253, 186, 7, 13),
(254, 7, 7, 14),
(255, 244, 7, 15),
(256, 301, 7, 16),
(257, 194, 7, 17),
(258, 101, 7, 18),
(259, 277, 7, 19),
(260, 252, 7, 20),
(261, 311, 7, 21),
(262, 278, 7, 22),
(263, 205, 7, 23),
(264, 151, 7, 24),
(265, 119, 7, 25),
(266, 244, 7, 26),
(267, 2, 7, 27),
(268, 101, 7, 28),
(269, 5, 7, 29),
(270, 198, 7, 30),
(271, 216, 7, 31),
(272, 44, 7, 32),
(273, 165, 7, 33),
(274, 307, 7, 34),
(275, 88, 7, 35),
(276, 109, 7, 36),
(277, 161, 7, 37),
(278, 95, 7, 38),
(279, 14, 7, 39),
(280, 220, 7, 40),
(281, 220, 8, 1),
(282, 262, 8, 2),
(283, 13, 8, 3),
(284, 250, 8, 4),
(285, 188, 8, 5),
(286, 133, 8, 6),
(287, 278, 8, 7),
(288, 73, 8, 8),
(289, 245, 8, 9),
(290, 99, 8, 10),
(291, 246, 8, 11),
(292, 102, 8, 12),
(293, 8, 8, 13),
(294, 142, 8, 14),
(295, 44, 8, 15),
(296, 195, 8, 16),
(297, 274, 8, 17),
(298, 45, 8, 18),
(299, 207, 8, 19),
(300, 270, 8, 20),
(301, 243, 8, 21),
(302, 215, 8, 22),
(303, 267, 8, 23),
(304, 121, 8, 24),
(305, 201, 8, 25),
(306, 87, 8, 26),
(307, 229, 8, 27),
(308, 27, 8, 28),
(309, 194, 8, 29),
(310, 118, 8, 30),
(311, 79, 8, 31),
(312, 159, 8, 32),
(313, 152, 8, 33),
(314, 231, 8, 34),
(315, 312, 8, 35),
(316, 22, 8, 36),
(317, 129, 8, 37),
(318, 298, 8, 38),
(319, 87, 8, 39),
(320, 320, 8, 40),
(321, 109, 9, 1),
(322, 13, 9, 2),
(323, 39, 9, 3),
(324, 207, 9, 4),
(325, 87, 9, 5),
(326, 291, 9, 6),
(327, 179, 9, 7),
(328, 256, 9, 8),
(329, 171, 9, 9),
(330, 110, 9, 10),
(331, 300, 9, 11),
(332, 226, 9, 12),
(333, 299, 9, 13),
(334, 104, 9, 14),
(335, 240, 9, 15),
(336, 258, 9, 16),
(337, 179, 9, 17),
(338, 118, 9, 18),
(339, 41, 9, 19),
(340, 274, 9, 20),
(341, 40, 9, 21),
(342, 37, 9, 22),
(343, 122, 9, 23),
(344, 50, 9, 24),
(345, 84, 9, 25),
(346, 12, 9, 26),
(347, 137, 9, 27),
(348, 94, 9, 28),
(349, 53, 9, 29),
(350, 28, 9, 30),
(351, 286, 9, 31),
(352, 129, 9, 32),
(353, 309, 9, 33),
(354, 222, 9, 34),
(355, 34, 9, 35),
(356, 249, 9, 36),
(357, 306, 9, 37),
(358, 91, 9, 38),
(359, 203, 9, 39),
(360, 272, 9, 40),
(361, 37, 10, 1),
(362, 301, 10, 2),
(363, 250, 10, 3),
(364, 221, 10, 4),
(365, 240, 10, 5),
(366, 134, 10, 6),
(367, 137, 10, 7),
(368, 298, 10, 8),
(369, 246, 10, 9),
(370, 243, 10, 10),
(371, 228, 10, 11),
(372, 166, 10, 12),
(373, 74, 10, 13),
(374, 21, 10, 14),
(375, 276, 10, 15),
(376, 46, 10, 16),
(377, 41, 10, 17),
(378, 77, 10, 18),
(379, 121, 10, 19),
(380, 105, 10, 20),
(381, 313, 10, 21),
(382, 27, 10, 22),
(383, 75, 10, 23),
(384, 234, 10, 24),
(385, 216, 10, 25),
(386, 171, 10, 26),
(387, 76, 10, 27),
(388, 185, 10, 28),
(389, 134, 10, 29),
(390, 260, 10, 30),
(391, 129, 10, 31),
(392, 149, 10, 32),
(393, 205, 10, 33),
(394, 104, 10, 34),
(395, 70, 10, 35),
(396, 52, 10, 36),
(397, 320, 10, 37),
(398, 46, 10, 38),
(399, 276, 10, 39),
(400, 57, 10, 40),
(401, 52, 11, 1),
(402, 185, 11, 2),
(403, 275, 11, 3),
(404, 206, 11, 4),
(405, 186, 11, 5),
(406, 105, 11, 6),
(407, 253, 11, 7),
(408, 180, 11, 8),
(409, 200, 11, 9),
(410, 212, 11, 10),
(411, 271, 11, 11),
(412, 270, 11, 12),
(413, 35, 11, 13),
(414, 82, 11, 14),
(415, 295, 11, 15),
(416, 106, 11, 16),
(417, 20, 11, 17),
(418, 176, 11, 18),
(419, 274, 11, 19),
(420, 185, 11, 20),
(421, 54, 11, 21),
(422, 88, 11, 22),
(423, 131, 11, 23),
(424, 122, 11, 24),
(425, 193, 11, 25),
(426, 158, 11, 26),
(427, 174, 11, 27),
(428, 313, 11, 28),
(429, 168, 11, 29),
(430, 141, 11, 30),
(431, 155, 11, 31),
(432, 246, 11, 32),
(433, 156, 11, 33),
(434, 122, 11, 34),
(435, 293, 11, 35),
(436, 316, 11, 36),
(437, 196, 11, 37),
(438, 24, 11, 38),
(439, 12, 11, 39),
(440, 241, 11, 40),
(441, 228, 12, 1),
(442, 120, 12, 2),
(443, 206, 12, 3),
(444, 155, 12, 4),
(445, 123, 12, 5),
(446, 74, 12, 6),
(447, 289, 12, 7),
(448, 248, 12, 8),
(449, 141, 12, 9),
(450, 233, 12, 10),
(451, 191, 12, 11),
(452, 271, 12, 12),
(453, 62, 12, 13),
(454, 184, 12, 14),
(455, 267, 12, 15),
(456, 140, 12, 16),
(457, 273, 12, 17),
(458, 228, 12, 18),
(459, 115, 12, 19),
(460, 271, 12, 20),
(461, 257, 12, 21),
(462, 233, 12, 22),
(463, 90, 12, 23),
(464, 222, 12, 24),
(465, 95, 12, 25),
(466, 179, 12, 26),
(467, 152, 12, 27),
(468, 217, 12, 28),
(469, 60, 12, 29),
(470, 272, 12, 30),
(471, 8, 12, 31),
(472, 53, 12, 32),
(473, 183, 12, 33),
(474, 280, 12, 34),
(475, 79, 12, 35),
(476, 188, 12, 36),
(477, 96, 12, 37),
(478, 225, 12, 38),
(479, 223, 12, 39),
(480, 98, 12, 40),
(481, 187, 13, 1),
(482, 168, 13, 2),
(483, 214, 13, 3),
(484, 222, 13, 4),
(485, 218, 13, 5),
(486, 3, 13, 6),
(487, 292, 13, 7),
(488, 95, 13, 8),
(489, 117, 13, 9),
(490, 280, 13, 10),
(491, 54, 13, 11),
(492, 80, 13, 12),
(493, 191, 13, 13),
(494, 166, 13, 14),
(495, 88, 13, 15),
(496, 55, 13, 16),
(497, 214, 13, 17),
(498, 81, 13, 18),
(499, 120, 13, 19),
(500, 271, 13, 20),
(501, 24, 13, 21),
(502, 247, 13, 22),
(503, 70, 13, 23),
(504, 301, 13, 24),
(505, 50, 13, 25),
(506, 242, 13, 26),
(507, 93, 13, 27),
(508, 123, 13, 28),
(509, 170, 13, 29),
(510, 187, 13, 30),
(511, 316, 13, 31),
(512, 292, 13, 32),
(513, 228, 13, 33),
(514, 209, 13, 34),
(515, 104, 13, 35),
(516, 89, 13, 36),
(517, 3, 13, 37),
(518, 160, 13, 38),
(519, 152, 13, 39),
(520, 159, 13, 40),
(521, 191, 14, 1),
(522, 143, 14, 2),
(523, 198, 14, 3),
(524, 138, 14, 4),
(525, 32, 14, 5),
(526, 262, 14, 6),
(527, 4, 14, 7),
(528, 110, 14, 8),
(529, 268, 14, 9),
(530, 300, 14, 10),
(531, 112, 14, 11),
(532, 47, 14, 12),
(533, 290, 14, 13),
(534, 65, 14, 14),
(535, 64, 14, 15),
(536, 8, 14, 16),
(537, 286, 14, 17),
(538, 175, 14, 18),
(539, 282, 14, 19),
(540, 84, 14, 20),
(541, 279, 14, 21),
(542, 101, 14, 22),
(543, 203, 14, 23),
(544, 215, 14, 24),
(545, 117, 14, 25),
(546, 271, 14, 26),
(547, 37, 14, 27),
(548, 235, 14, 28),
(549, 32, 14, 29),
(550, 17, 14, 30),
(551, 208, 14, 31),
(552, 177, 14, 32),
(553, 102, 14, 33),
(554, 28, 14, 34),
(555, 283, 14, 35),
(556, 109, 14, 36),
(557, 317, 14, 37),
(558, 78, 14, 38),
(559, 115, 14, 39),
(560, 320, 14, 40),
(561, 307, 15, 1),
(562, 215, 15, 2),
(563, 51, 15, 3),
(564, 252, 15, 4),
(565, 235, 15, 5),
(566, 318, 15, 6),
(567, 276, 15, 7),
(568, 146, 15, 8),
(569, 150, 15, 9),
(570, 45, 15, 10),
(571, 111, 15, 11),
(572, 198, 15, 12),
(573, 50, 15, 13),
(574, 87, 15, 14),
(575, 12, 15, 15),
(576, 286, 15, 16),
(577, 275, 15, 17),
(578, 35, 15, 18),
(579, 36, 15, 19),
(580, 220, 15, 20),
(581, 181, 15, 21),
(582, 189, 15, 22),
(583, 68, 15, 23),
(584, 42, 15, 24),
(585, 315, 15, 25),
(586, 84, 15, 26),
(587, 78, 15, 27),
(588, 317, 15, 28),
(589, 250, 15, 29),
(590, 319, 15, 30),
(591, 91, 15, 31),
(592, 162, 15, 32),
(593, 117, 15, 33),
(594, 45, 15, 34),
(595, 284, 15, 35),
(596, 91, 15, 36),
(597, 219, 15, 37),
(598, 229, 15, 38),
(599, 261, 15, 39),
(600, 289, 15, 40),
(601, 137, 16, 1),
(602, 273, 16, 2),
(603, 28, 16, 3),
(604, 174, 16, 4),
(605, 165, 16, 5),
(606, 64, 16, 6),
(607, 226, 16, 7),
(608, 212, 16, 8),
(609, 300, 16, 9),
(610, 51, 16, 10),
(611, 264, 16, 11),
(612, 222, 16, 12),
(613, 39, 16, 13),
(614, 215, 16, 14),
(615, 320, 16, 15),
(616, 109, 16, 16),
(617, 192, 16, 17),
(618, 136, 16, 18),
(619, 197, 16, 19),
(620, 162, 16, 20),
(621, 225, 16, 21),
(622, 241, 16, 22),
(623, 114, 16, 23),
(624, 212, 16, 24),
(625, 277, 16, 25),
(626, 217, 16, 26),
(627, 225, 16, 27),
(628, 83, 16, 28),
(629, 110, 16, 29),
(630, 190, 16, 30),
(631, 58, 16, 31),
(632, 33, 16, 32),
(633, 72, 16, 33),
(634, 94, 16, 34),
(635, 79, 16, 35),
(636, 128, 16, 36),
(637, 173, 16, 37),
(638, 90, 16, 38),
(639, 134, 16, 39),
(640, 92, 16, 40),
(641, 103, 17, 1),
(642, 128, 17, 2),
(643, 209, 17, 3),
(644, 122, 17, 4),
(645, 216, 17, 5),
(646, 107, 17, 6),
(647, 2, 17, 7),
(648, 46, 17, 8),
(649, 156, 17, 9),
(650, 121, 17, 10),
(651, 133, 17, 11),
(652, 303, 17, 12),
(653, 238, 17, 13),
(654, 97, 17, 14),
(655, 161, 17, 15),
(656, 80, 17, 16),
(657, 318, 17, 17),
(658, 310, 17, 18),
(659, 240, 17, 19),
(660, 258, 17, 20),
(661, 314, 17, 21),
(662, 296, 17, 22),
(663, 176, 17, 23),
(664, 282, 17, 24),
(665, 71, 17, 25),
(666, 208, 17, 26),
(667, 229, 17, 27),
(668, 54, 17, 28),
(669, 110, 17, 29),
(670, 136, 17, 30),
(671, 115, 17, 31),
(672, 162, 17, 32),
(673, 10, 17, 33),
(674, 283, 17, 34),
(675, 203, 17, 35),
(676, 244, 17, 36),
(677, 114, 17, 37),
(678, 177, 17, 38),
(679, 58, 17, 39),
(680, 84, 17, 40),
(681, 181, 18, 1),
(682, 48, 18, 2),
(683, 223, 18, 3),
(684, 292, 18, 4),
(685, 137, 18, 5),
(686, 109, 18, 6),
(687, 57, 18, 7),
(688, 56, 18, 8),
(689, 27, 18, 9),
(690, 276, 18, 10),
(691, 256, 18, 11),
(692, 136, 18, 12),
(693, 306, 18, 13),
(694, 46, 18, 14),
(695, 214, 18, 15),
(696, 149, 18, 16),
(697, 280, 18, 17),
(698, 252, 18, 18),
(699, 54, 18, 19),
(700, 56, 18, 20),
(701, 100, 18, 21),
(702, 82, 18, 22),
(703, 272, 18, 23),
(704, 238, 18, 24),
(705, 126, 18, 25),
(706, 200, 18, 26),
(707, 251, 18, 27),
(708, 231, 18, 28),
(709, 209, 18, 29),
(710, 304, 18, 30),
(711, 255, 18, 31),
(712, 8, 18, 32),
(713, 175, 18, 33),
(714, 18, 18, 34),
(715, 188, 18, 35),
(716, 47, 18, 36),
(717, 190, 18, 37),
(718, 299, 18, 38),
(719, 52, 18, 39),
(720, 74, 18, 40),
(721, 6, 19, 1),
(722, 65, 19, 2),
(723, 101, 19, 3),
(724, 227, 19, 4),
(725, 231, 19, 5),
(726, 320, 19, 6),
(727, 180, 19, 7),
(728, 211, 19, 8),
(729, 65, 19, 9),
(730, 131, 19, 10),
(731, 297, 19, 11),
(732, 19, 19, 12),
(733, 38, 19, 13),
(734, 289, 19, 14),
(735, 275, 19, 15),
(736, 36, 19, 16),
(737, 197, 19, 17),
(738, 25, 19, 18),
(739, 64, 19, 19),
(740, 35, 19, 20),
(741, 143, 19, 21),
(742, 231, 19, 22),
(743, 229, 19, 23),
(744, 111, 19, 24),
(745, 15, 19, 25),
(746, 53, 19, 26),
(747, 99, 19, 27),
(748, 136, 19, 28),
(749, 36, 19, 29),
(750, 191, 19, 30),
(751, 134, 19, 31),
(752, 211, 19, 32),
(753, 35, 19, 33),
(754, 51, 19, 34),
(755, 261, 19, 35),
(756, 261, 19, 36),
(757, 270, 19, 37),
(758, 218, 19, 38),
(759, 55, 19, 39),
(760, 102, 19, 40),
(761, 203, 20, 1),
(762, 163, 20, 2),
(763, 247, 20, 3),
(764, 191, 20, 4),
(765, 108, 20, 5),
(766, 300, 20, 6),
(767, 79, 20, 7),
(768, 60, 20, 8),
(769, 81, 20, 9),
(770, 262, 20, 10),
(771, 30, 20, 11),
(772, 290, 20, 12),
(773, 148, 20, 13),
(774, 58, 20, 14),
(775, 218, 20, 15),
(776, 118, 20, 16),
(777, 246, 20, 17),
(778, 206, 20, 18),
(779, 207, 20, 19),
(780, 140, 20, 20),
(781, 83, 20, 21),
(782, 127, 20, 22),
(783, 78, 20, 23),
(784, 171, 20, 24),
(785, 277, 20, 25),
(786, 164, 20, 26),
(787, 25, 20, 27),
(788, 249, 20, 28),
(789, 90, 20, 29),
(790, 48, 20, 30),
(791, 265, 20, 31),
(792, 74, 20, 32),
(793, 52, 20, 33),
(794, 279, 20, 34),
(795, 141, 20, 35),
(796, 188, 20, 36),
(797, 303, 20, 37),
(798, 69, 20, 38),
(799, 234, 20, 39),
(800, 106, 20, 40),
(801, 39, 21, 1),
(802, 225, 21, 2),
(803, 209, 21, 3),
(804, 82, 21, 4),
(805, 100, 21, 5),
(806, 34, 21, 6),
(807, 251, 21, 7),
(808, 301, 21, 8),
(809, 11, 21, 9),
(810, 282, 21, 10),
(811, 129, 21, 11),
(812, 40, 21, 12),
(813, 16, 21, 13),
(814, 211, 21, 14),
(815, 32, 21, 15),
(816, 58, 21, 16),
(817, 176, 21, 17),
(818, 28, 21, 18),
(819, 306, 21, 19),
(820, 234, 21, 20),
(821, 288, 21, 21),
(822, 172, 21, 22),
(823, 92, 21, 23),
(824, 286, 21, 24),
(825, 112, 21, 25),
(826, 320, 21, 26),
(827, 41, 21, 27),
(828, 52, 21, 28),
(829, 104, 21, 29),
(830, 1, 21, 30),
(831, 17, 21, 31),
(832, 47, 21, 32),
(833, 304, 21, 33),
(834, 131, 21, 34),
(835, 139, 21, 35),
(836, 214, 21, 36),
(837, 13, 21, 37),
(838, 121, 21, 38),
(839, 57, 21, 39),
(840, 255, 21, 40),
(841, 57, 22, 1),
(842, 165, 22, 2),
(843, 2, 22, 3),
(844, 190, 22, 4),
(845, 138, 22, 5),
(846, 130, 22, 6),
(847, 107, 22, 7),
(848, 136, 22, 8),
(849, 252, 22, 9),
(850, 9, 22, 10),
(851, 279, 22, 11),
(852, 272, 22, 12),
(853, 5, 22, 13),
(854, 158, 22, 14),
(855, 168, 22, 15),
(856, 262, 22, 16),
(857, 315, 22, 17),
(858, 185, 22, 18),
(859, 220, 22, 19),
(860, 112, 22, 20),
(861, 30, 22, 21),
(862, 8, 22, 22),
(863, 94, 22, 23),
(864, 113, 22, 24),
(865, 313, 22, 25),
(866, 270, 22, 26),
(867, 80, 22, 27),
(868, 252, 22, 28),
(869, 311, 22, 29),
(870, 146, 22, 30),
(871, 249, 22, 31),
(872, 129, 22, 32),
(873, 294, 22, 33),
(874, 175, 22, 34),
(875, 268, 22, 35),
(876, 13, 22, 36),
(877, 56, 22, 37),
(878, 308, 22, 38),
(879, 235, 22, 39),
(880, 89, 22, 40),
(881, 48, 23, 1),
(882, 130, 23, 2),
(883, 123, 23, 3),
(884, 61, 23, 4),
(885, 82, 23, 5),
(886, 39, 23, 6),
(887, 247, 23, 7),
(888, 106, 23, 8),
(889, 125, 23, 9),
(890, 242, 23, 10),
(891, 69, 23, 11),
(892, 116, 23, 12),
(893, 58, 23, 13),
(894, 81, 23, 14),
(895, 240, 23, 15),
(896, 122, 23, 16),
(897, 187, 23, 17),
(898, 42, 23, 18),
(899, 68, 23, 19),
(900, 145, 23, 20),
(901, 222, 23, 21),
(902, 156, 23, 22),
(903, 5, 23, 23),
(904, 99, 23, 24),
(905, 157, 23, 25),
(906, 36, 23, 26),
(907, 320, 23, 27),
(908, 122, 23, 28),
(909, 245, 23, 29),
(910, 238, 23, 30),
(911, 16, 23, 31),
(912, 228, 23, 32),
(913, 265, 23, 33),
(914, 107, 23, 34),
(915, 143, 23, 35),
(916, 278, 23, 36),
(917, 158, 23, 37),
(918, 151, 23, 38),
(919, 221, 23, 39),
(920, 176, 23, 40);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `question_has_serie`
--
ALTER TABLE `question_has_serie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `serie_id` (`serie_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `question_has_serie`
--
ALTER TABLE `question_has_serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=921;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;