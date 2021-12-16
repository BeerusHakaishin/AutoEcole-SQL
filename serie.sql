-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 16 déc. 2021 à 12:22
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
-- Structure de la table `serie`
--

CREATE TABLE `serie` (
  `id` int(11) NOT NULL,
  `cd_rom_id` int(11) NOT NULL,
  `cd_rom_serie_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `serie`
--

INSERT INTO `serie` (`id`, `cd_rom_id`, `cd_rom_serie_number`) VALUES
(1, 1, 3),
(2, 2, 5),
(3, 2, 3),
(4, 3, 5),
(5, 3, 4),
(6, 2, 1),
(7, 2, 5),
(8, 3, 6),
(9, 2, 2),
(10, 3, 5),
(11, 2, 2),
(12, 2, 4),
(13, 1, 1),
(14, 2, 1),
(15, 3, 3),
(16, 3, 2),
(17, 2, 5),
(18, 3, 2),
(19, 2, 3),
(20, 3, 5),
(21, 2, 2),
(22, 3, 5),
(23, 3, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cd_rom_id` (`cd_rom_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `serie`
--
ALTER TABLE `serie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
