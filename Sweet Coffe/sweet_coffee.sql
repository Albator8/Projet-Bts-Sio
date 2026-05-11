-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 11 mai 2026 à 22:42
-- Version du serveur : 8.3.0
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sweet_coffee`
--

-- --------------------------------------------------------

--
-- Structure de la table `boissons_chaudes`
--

DROP TABLE IF EXISTS `boissons_chaudes`;
CREATE TABLE IF NOT EXISTS `boissons_chaudes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `boissons_chaudes`
--

INSERT INTO `boissons_chaudes` (`id`, `nom`, `image`, `prix`, `description`, `date_creation`) VALUES
(1, 'Capuccino', 'Capuccino.jpg', 4.50, 'Délicieux capuccino avec mousse crémeuse', '2026-05-11 00:20:34'),
(2, 'Café Crème', 'café crème.jpg', 3.50, 'Café crème onctueux et savoureux', '2026-05-11 00:20:34');

-- --------------------------------------------------------

--
-- Structure de la table `boissons_froides`
--

DROP TABLE IF EXISTS `boissons_froides`;
CREATE TABLE IF NOT EXISTS `boissons_froides` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `boissons_froides`
--

INSERT INTO `boissons_froides` (`id`, `nom`, `image`, `prix`, `description`, `date_creation`) VALUES
(1, 'Coca Cola', 'Coca cola.jpg', 2.50, 'Coca Cola rafraîchissant', '2026-05-11 00:20:34'),
(2, 'Orangina', 'Orangina.jpg', 3.00, 'Orangina pétillant et fruité', '2026-05-11 00:20:34'),
(3, 'Sprite', 'Sprite.jpg', 2.50, 'Sprite citronné et pétillant', '2026-05-11 00:20:34');

-- --------------------------------------------------------

--
-- Structure de la table `viennoiseries`
--

DROP TABLE IF EXISTS `viennoiseries`;
CREATE TABLE IF NOT EXISTS `viennoiseries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `viennoiseries`
--

INSERT INTO `viennoiseries` (`id`, `nom`, `image`, `prix`, `description`, `date_creation`) VALUES
(1, 'Chausson aux Pommes', 'Chausson aux pommes.jpg', 3.50, 'Chausson aux pommes croustillant', '2026-05-11 00:20:34'),
(2, 'Croissant', 'Croissants.jpg', 2.50, 'Croissant beurre feuilleté', '2026-05-11 00:20:34'),
(3, 'Pain au Chocolat', 'Pain aux chocolat.jpg', 3.00, 'Pain au chocolat fondant', '2026-05-11 00:20:34'),
(4, 'Pain aux Raisins', 'Pains aux raisins.jpg', 2.75, 'Pain aux raisins sucré', '2026-05-11 00:20:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
