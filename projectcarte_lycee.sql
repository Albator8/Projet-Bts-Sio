-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-projectcarte.alwaysdata.net
-- Generation Time: Feb 11, 2025 at 12:25 PM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectcarte_lycee`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordonnees`
--

CREATE TABLE `coordonnees` (
  `id` int(11) NOT NULL,
  `lycee_id` int(11) DEFAULT NULL,
  `adresse` text DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `lien` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordonnees`
--

INSERT INTO `coordonnees` (`id`, `lycee_id`, `adresse`, `ville`, `code_postal`, `telephone`, `fax`, `email`, `latitude`, `longitude`, `lien`) VALUES
(75, 1, 'Route des Abymes BP220', 'Les Abymes', '97139', '0590 48 61 55', '0590 48 95 80', 'ce.9711205h@ac-guadeloupe.fr',16.266478110405103, -61.52386810831436, NULL),
(76, 2, 'Convenance', 'Baie-Mahault', '97122', '0590 95 27 66', '0590 95 14 70', 'legta.guadeloupe@educagri.fr', 16.24223338620382, -61.59324869424655, NULL),
(77, 3, 'Saint-Félix BP 249', 'Gosier', '97190', '0590 85 28 91', '0590 85 29 09', 'contact@lhtgosier.com', 16.208565771199318, -61.45964887917527 NULL),
(78, 4, 'Route des Abymes BP 3041', 'Les Abymes', '97139', '0590 91 48 94', '0590 82 27 35', 'ce.9710923b@ac-guadeloupe.fr', 16.24970262993263, -61.5253134178968 NULL),
(79, 5, 'Boissard – BP 493', 'Pointe-à-Pitre', '97182', '0590 82 15 89', '0590 83 52 05', 'ce.9710062r@ac-guadeloupe.fr', 16.24519337529106, -61.52496594522822 NULL),
(80, 6, 'Boulevard des Héros BP 17', 'Pointe-à-Pitre', '97110', '0590 93 79 99', '0590 90 34 89', 'ce.9710003b@ac-guadeloupe.fr', 16.248094606178128, -61.52153455408017 NULL),
(81, 7, 'Pointe à Bacchus', 'Petit-Bourg', '97170', '0590 95 40 28', '0590 95 67 50', 'ce.9710882g@ac-guadeloupe.fr',16.201375226042877, -61.59147489932218 NULL),
(82, 8, 'Section Espérance', 'Morne-à-l’Eau', '97111', '0590 24 80 11', '0590 24 93 26', 'ce.9710774p@ac-guadeloupe.fr', 16.327882791471364, -61.449399963281515 NULL),
(83, 9, 'Morne l’Epingle BP 230', 'Les Abymes', '97139', '0590 20 34 34', '0590 20 22 64', 'ce.9710921z@ac-guadeloupe.fr', 16.26840017107504, -61.51401207547941 NULL),
(84, 10, '37 rue Amédée Fengarol', 'Basse-Terre', '97100', '0590 81 16 27', '0590 81 94 77', 'ce.9710002a@ac-guadeloupe.fr', 15.991304653897094, -61.72615306806755 NULL),
(85, 11, '32 rue Lardenoy', 'Basse-Terre', '97100', '0590 81 10 32', '0590 81 16 66', 'ce.9710991a@ac-guadeloupe.fr', 15.993100503296166, -61.723827907219594 NULL),
(86, 12, '29 faubourg Victor Hugo BP 245', 'Pointe-à-Pitre', '97110', '0590 89 34 34', '0590 82 28 12', 'ce.9710054g@ac-guadeloupe.fr', 16.23640547162746, -61.53104592891243 NULL),
(87, 13, 'La Ramée BP 76', 'Sainte-Rose', '97115', '0590 28 16 97', '0590 28 18 36', 'ce.9710940v@ac-guadeloupe.fr', 16.330992327923564, -61.70626842387823 NULL),
(88, 14, '8 rue Victor Hugues', 'Basse-Terre', '97100', '0590 811 264', '0590 991 567', 'ce.9710055h@ac-guadeloupe.fr', 15.99900000, -61.73100000, NULL),
(89, 15, 'Poirier de Gissac', 'Sainte-Anne', '97180', '0590 88 23 49', '0590 88 99 41', 'ce.9710922a@ac-guadeloupe.fr', 16.249587407304556, -61.35630707923842 NULL),
(90, 16, 'Boulevard des Héros BP 355', 'Les Abymes', '97183', '', '', '', 16.247864889793743, -61.525751471770754 NULL),
(91, 17, 'Lajaille', 'Baie-Mahault', '97122', '0590 26 11 68', '0590 26 03 16', 'ce.9710593t@ac-guadeloupe.fr', 16.256887668406492, -61.571853223631784 NULL),
(92, 18, '8 rue Victor Hugues', 'Basse-Terre', '97100', '0590 81 11 81', '0590 99 15 67', 'ce.9710055h@ac-guadeloupe.fr', 15.99600000, -61.73200000, NULL),
(93, 19, 'Zone de Moudong Nord', 'Baie-Mahault', '97122', '0590 32 05 05', '0590 38 20 22', 'info@lyceeprivebelair.fr', 16.24565979119088, -61.586309128098584 NULL),
(94, 20, 'Site de Beauport', 'Port-Louis', '97117', '0590 21 73 50', '0590 21 57 91', 'ce.9711082z@ac-guadeloupe.fr', 16.41389508019035, -61.51274231291884 NULL),
(95, 21, '28 rue Jean Jaurès', 'Pointe-à-Pitre', '97110', '0590 82 83 48', '0590 83 24 70', 'legta.guadeloupe@educagri.fr', 16.239047745277222, -61.53457385115113 NULL),
(96, 22, 'Trioncelle', 'Baie-Mahault', '97122', '0590 38 94 00', '0590 38 94 17', 'ce.9711032v@ac-guadeloupe.fr', 16.266007341347084, -61.58250533763359, NULL),
(97, 23, 'Grande Plaine', 'Pointe-Noire', '97116', '0590 98 37 38', '0590 98 37 39', 'ce.9711033w@ac-guadeloupe.fr', 16.207853919427972, -61.775829721076484, NULL),
(98, 24, 'Quartier Rivières des Pères', 'Basse-Terre', '97100', '0590 81 14 28', '0590 81 14 62', 'ce.9710884j@ac-guadeloupe.fr', 16.010185775116586, -61.74327712944886, NULL),
(99, 25, 'Rue de la Savane', 'Grand-Bourg', '97112', '0590 97 90 42', '0590 97 91 10', 'ce.9711012y@ac-guadeloupe.fr', 15.86700000, -61.58000000, NULL),
(100, 26, 'Rue de la République BP 08', 'Baie-Mahault', '97122', '0590 32 06 58', '0590 26 18 15', 'ce.9710746j@ac-guadeloupe.fr', 16.26713081168185, -61.58459116923333, NULL),
(101, 27, 'BP 01', 'Le Lamentin', '97129', '0590 25 44 42', '0590 25 65 29', 'ce.9710090w@ac-guadeloupe.fr', 16.27613106068404, -61.61988086648488, NULL),
(102, 28, 'BP 33 – Blanchet', 'Gourbeyre', '97113', '0590 99 75 30', '0590 81 50 66', 'lycee-blanchet@orange.fr', 15.994129074911644, -61.706194705171846, NULL),
(103, 29, 'rue Paul LACAVE Assainissement', 'Pointe-à-Pitre', '97110', '0590 82 03 73', '0590 93 09 98', 'ce.9710083n@ac-guadeloupe.fr', 16.244666055467217, -61.53219810883624, NULL),
(104, 30, 'Cité Huygues Despointes Ducharmoy', 'Saint-Claude', '97112', '0590 80 11 52', '0590 80 27 80', 'ce.9710690y@ac-guadeloupe.fr', 16.034599627104647, -61.70660576674902, NULL),
(105, 31, 'Quartier Richeval BP 65', 'Morne-à-l’Eau', '97111', '0590 24 74 16', '0590 24 40 85', 'ce.9710709u@ac-guadeloupe.fr', 16.342279519591017, -61.455046627586896, NULL),
(106, 32, 'Rue Amédée Fengarol', 'Le Moule', '97160', '0590 23 09 70', '0590 23 49 39', 'ce.9710052e@ac-guadeloupe.fr', 16.33520361941753, -61.35295509863446, NULL),
(107, 33, 'Avenue Germain Saint-Ruf', 'Capesterre Belle-Eau', '97130', '0590 86 34 63', '0590 86 03 79', 'ce.9710418c@ac-guadeloupe.fr',16.052852260633923, -61.56118776774519, NULL),
(108, 34, 'ZI de Jarry', 'Baie-Mahault', '97122', '0590 38 50 50', '0590 38 51 51', 'ce.9710090g@ac-guadeloupe.fr', NULL, NULL, NULL),
(109, 35, '', 'Le Lamentin', '97129', '0590 29 52 38', '0590 29 52 89', 'ce.9710004t@ac-guadeloupe.fr', 16.274590543424953, -61.63434828043148, NULL),
(110, 36, '', 'La Désirade', '97127', '0590 42 30 12', '0590 42 30 34', 'ce.9710602g@ac-guadeloupe.fr', NULL, NULL, NULL),
(111, 37, '', 'Petit-Bourg', '97134', '0590 84 74 00', '0590 84 74 10', 'ce.9710890y@ac-guadeloupe.fr', NULL, NULL, NULL),
(112, 38, '', 'Basse-Terre', '97100', '0590 81 05 35', '0590 81 04 87', 'ce.ste-therese@orange.fr', NULL, NULL, NULL),
(113, 39, '', 'Les Abymes', '97139', '0590 91 64 04', '0590 91 89 98', 'ce.9710960d@ac-guadeloupe.fr', NULL, NULL, NULL),
(114, 40, '', 'Basse-Terre', '97100', '0590 81 24 61', '0590 81 32 48', 'ce.lyceeste-marie@orange.fr', NULL, NULL, NULL),
(115, 41, '', 'Pointe-à-Pitre', '97110', '0590 82 07 38', '0590 82 07 39', 'ce.saint-jean-baptiste@ac-guadeloupe.fr', NULL, NULL, NULL),
(116, 42, 'Route de la Batterie', 'Les Abymes', '97139', '0590 48 63 16', '0590 48 63 17', 'ce.lyceelasalle@ac-guadeloupe.fr', NULL, NULL, NULL),
(117, 43, '', 'Basse-Terre', '97100', '0590 81 10 40', '0590 81 11 23', 'ce.nda-bt@ac-guadeloupe.fr', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lycee`
--

CREATE TABLE `lycee` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lycee`
--

INSERT INTO `lycee` (`id`, `nom`, `type_id`) VALUES
(1, 'Cité scolaire d’excellence sportive', 1),
(2, 'Lycée Agricole Buffon', 2),
(3, 'Lycée des métiers de l hôtellerie et du tourisme de la Guadeloupe', 2),
(4, 'Lycée Général et Technologique Jardin d'Essai', 1),
(5, 'Lycée Général et Technologique La Persévérance', 1),
(6, 'Lycée Général et Technologique Baimbridge','lol', 1),
(7, 'Lycée Général et Technologique Droit de l'homme', 1),
(8, 'Lycée Général et Technologique Faustin Fléret', 1),
(9, 'Lycée Général et Technologique Félix Proto', 1),
(10, 'Lycée Général et Technologique Gerville Réache', 1),
(11, 'Lycée Général et Technologique Les Persévérants', 1),
(12, 'Lycée Général et Technologique Massabielle', 1),
(13, 'Lycée Général et Technologique Sonny Rupaire', 1),
(14, 'Lycée Général et Technologique Versailles', 1),
(15, 'Lycée Général et Technologique Yves Leborgne', 1),
(16, 'Lycée Polyvalent Chevalier de Saint-Georges', 3),
(17, 'Lycée Professionnel Saint-Joseph de Cluny', 2),
(18, 'Lycée Professionnel Versailles', 2),
(19, 'Lycée technique et professionnel de Bel Air', 4),
(20, 'Lycée Polyvalent du Nord Grande-Terre', 3),
(21, 'Lycée Polyvalent Carnot', 3),
(22, 'Lycée Polyvalent Charles Coeffin', 3),
(23, 'Lycée Polyvalent de Pointe-Noire', 3),
(24, 'Lycée Polyvalent Raoul Georges Nicolo', 3),
(25, 'Lycée Polyvalent Yacinthe Bastaraud', 3),
(26, 'Lycée Professionnel Arron', 2),
(27, 'Lycée Professionnel Bertène Juminer', 2),
(28, 'Lycée Professionnel Blanchet', 2),
(29, 'Lycée Professionnel Boc Calmet', 2),
(30, 'Lycée Professionnel Ducharmoy', 2),
(31, 'Lycée Professionnel Gerty Archimède', 2),
(32, 'Lycée Professionnel Louis Delgrès', 2),
(33, 'Lycée Professionnel Paul LACAVE', 2),
(34, 'Lycée Professionnel de la Guadeloupe', 2),
(35, 'Lycée Professionnel du Lamentin', 2),
(36, 'Lycée Technique et Professionnel des Iles de la Désirade', 4),
(37, 'Lycée Professionnel Montplaisir', 2),
(38, 'Lycée Professionnel Sainte-Thérèse', 5),
(39, 'Lycée Privé Polyvalent Notre-Dame du Rosaire', 5),
(40, 'Lycée Privé Sainte-Marie', 5),
(41, 'Lycée Privé Saint-Jean-Baptiste de La Salle', 5),
(42, 'Lycée Privé La Salle - Les Abymes', 5),
(43, 'Lycée Privé Notre-Dame de l’Assomption', 5);

-- --------------------------------------------------------

--
-- Table structure for table `type_lycee`
--

CREATE TABLE `type_lycee` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_lycee`
--

INSERT INTO `type_lycee` (`id`, `type`) VALUES
(1, 'Lycée général'),
(2, 'Lycée professionnel'),
(3, 'Lycée polyvalent'),
(4, 'Lycée technique et professionnel'),
(5, 'Lycée privé');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordonnees`
--
ALTER TABLE `coordonnees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lycee_id` (`lycee_id`);

--
-- Indexes for table `lycee`
--
ALTER TABLE `lycee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `type_lycee`
--
ALTER TABLE `type_lycee`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coordonnees`
--
ALTER TABLE `coordonnees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `lycee`
--
ALTER TABLE `lycee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `type_lycee`
--
ALTER TABLE `type_lycee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coordonnees`
--
ALTER TABLE `coordonnees`
  ADD CONSTRAINT `coordonnees_ibfk_1` FOREIGN KEY (`lycee_id`) REFERENCES `lycee` (`id`);

--
-- Constraints for table `lycee`
--
ALTER TABLE `lycee`
  ADD CONSTRAINT `lycee_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type_lycee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
