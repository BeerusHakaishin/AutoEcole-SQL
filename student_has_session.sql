-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 16 déc. 2021 à 12:21
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
-- Structure de la table `student_has_session`
--

CREATE TABLE `student_has_session` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `student_has_session`
--

INSERT INTO `student_has_session` (`id`, `student_id`, `session_id`, `grade`) VALUES
(1, 1, 4, 30),
(2, 2, 5, 35),
(3, 3, 5, 32),
(4, 3, 6, 30),
(5, 1, 3, 34),
(6, 4, 8, 34),
(7, 4, 13, 36),
(8, 5, 15, 27),
(9, 7, 16, 39),
(10, 3, 15, 34),
(11, 6, 18, 36),
(12, 2, 8, 31),
(13, 1, 5, 37),
(14, 6, 12, 37),
(15, 3, 12, 39),
(16, 5, 19, 38),
(17, 3, 2, 30),
(18, 4, 12, 37),
(19, 6, 15, 35);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `student_has_session`
--
ALTER TABLE `student_has_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `session_id` (`session_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `student_has_session`
--
ALTER TABLE `student_has_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
