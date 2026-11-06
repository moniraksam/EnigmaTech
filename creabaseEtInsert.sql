SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Base de données :  `enigmatech`
--
CREATE DATABASE IF NOT EXISTS `enigmatech` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `enigmatech`;

-- --------------------------------------------------------

--
-- Structure de la table `communiquer`
--

CREATE TABLE `communiquer` (
  `IdSalle_1` int(11) NOT NULL,
  `IdSalle_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `communiquer`
--

INSERT INTO `communiquer` (`IdSalle_1`, `IdSalle_2`) VALUES
(1, 2),
(2, 3),
(2, 4),
(3, 4),
(5, 6),
(5, 7),
(6, 7),
(7, 8),
(9, 10),
(9, 11),
(10, 11),
(11, 12),
(13, 14),
(13, 15),
(14, 15),
(15, 16),
(17, 18),
(17, 19),
(18, 19),
(19, 20),
(21, 22),
(21, 23),
(22, 23),
(23, 24),
(25, 26),
(25, 27),
(26, 27),
(27, 28),
(29, 30),
(29, 31),
(30, 31),
(31, 32),
(33, 34),
(33, 35),
(34, 35),
(35, 36),
(37, 38),
(37, 39),
(38, 39),
(39, 40),
(41, 42),
(41, 43),
(42, 43),
(43, 44),
(45, 46),
(45, 47),
(46, 47),
(47, 48),
(49, 50),
(49, 51),
(50, 51),
(51, 52),
(53, 54),
(53, 55),
(54, 55),
(55, 56),
(57, 58),
(57, 59),
(58, 59),
(59, 60),
(61, 62),
(61, 63),
(62, 63),
(63, 64),
(65, 66),
(65, 67),
(66, 67),
(67, 68),
(69, 70),
(69, 71),
(70, 71),
(71, 72),
(73, 74),
(73, 75),
(74, 75),
(75, 76),
(77, 78),
(77, 79),
(78, 79),
(79, 80);

-- --------------------------------------------------------

--
-- Structure de la table `dispositif`
--

CREATE TABLE `dispositif` (
  `idDispositif` int(11) NOT NULL,
  `idxDomoticz` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `typeDispositif` enum('multisensor','wall_plug','door_sensor','button') NOT NULL,
  `typeDomotic` varchar(50) DEFAULT NULL,
  `sousType` varchar(50) DEFAULT NULL,
  `unitId` int(11) DEFAULT NULL,
  `alimentationType` varchar(50) DEFAULT NULL,
  `niveauBatterie` int(11) DEFAULT NULL,
  `dateInstallation` date DEFAULT NULL,
  `description` text,
  `IdSalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `dispositif`
--

INSERT INTO `dispositif` (`idDispositif`, `idxDomoticz`, `nom`, `typeDispositif`, `typeDomotic`, `sousType`, `unitId`, `alimentationType`, `niveauBatterie`, `dateInstallation`, `description`, `IdSalle`) VALUES
(1, 12, 'Capteur Lumiere Cellule', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur de luminosite principal', 1),
(2, 14, 'Capteur UV', 'multisensor', 'UV', 'UVN128', 1, 'battery', 95, '2026-05-24', 'Capteur ultraviolet puzzle', 2),
(3, 17, 'Prise Generateur', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Controle du generateur principal', 3),
(4, 21, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 90, '2026-05-24', 'Capteur temperature laboratoire', 1),
(5, 22, 'Bouton Principal', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Bouton principal puzzle', 1),
(6, 23, 'Bouton Secondaire', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Bouton secondaire puzzle', 2),
(7, 24, 'Détecteur Porte', 'door_sensor', 'Security', 'Door', 1, 'battery', 85, '2026-05-24', 'Détection ouverture porte', 3),
(8, 25, 'Capteur Mouvement', 'door_sensor', 'Security', 'Motion', 1, 'battery', 80, '2026-05-24', 'Détecteur de mouvement', 2),
(9, 26, 'Alarme Centrale', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 75, '2026-05-24', 'Alarme du laboratoire', 4),
(10, 27, 'Prise Système', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation système final', 4),
(11, 28, 'Capteur Cellule', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur cellule prison', 5),
(12, 29, 'Bouton Évasion', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Bouton secret évasion', 5),
(13, 30, 'Détecteur Caméra', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détecteur surveillance', 6),
(14, 31, 'Prise Électrique', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation prison', 7),
(15, 32, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température salle électrique', 7),
(16, 33, 'Capteur Humidité', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 92, '2026-05-24', 'Humidité prison', 6),
(17, 34, 'Alarme Blindée', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 80, '2026-05-24', 'Alarme salle blindée', 8),
(18, 35, 'Détecteur Porte Blindée', 'door_sensor', 'Security', 'Door', 1, 'battery', 88, '2026-05-24', 'Porte blindée finale', 8),
(19, 36, 'Bouton Contrôle', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Contrôle système prison', 7),
(20, 37, 'Prise Centrale', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système principal prison', 8),
(21, 38, 'Capteur Réveil', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur salle réveil', 9),
(22, 39, 'Bouton Urgence', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Bouton urgence bunker', 9),
(23, 40, 'Prise Générateur', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Générateur bunker', 10),
(24, 41, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température bunker', 10),
(25, 42, 'Capteur Radiation', 'multisensor', 'UV', 'UVN128', 1, 'battery', 90, '2026-05-24', 'Détection radiation', 11),
(26, 43, 'Détecteur Mouvement', 'door_sensor', 'Security', 'Motion', 1, 'battery', 85, '2026-05-24', 'Surveillance bunker', 11),
(27, 44, 'Alarme IA', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 80, '2026-05-24', 'Alarme intelligence artificielle', 12),
(28, 45, 'Détecteur Porte Centrale', 'door_sensor', 'Security', 'Door', 1, 'battery', 82, '2026-05-24', 'Accès noyau central', 12),
(29, 46, 'Bouton Contrôle IA', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Contrôle IA', 12),
(30, 47, 'Prise Centrale', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation bunker', 12),
(31, 198, 'Capteur Surveillance', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur poste surveillance', 13),
(32, 199, 'Détecteur Turbines', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection turbines', 14),
(33, 200, 'Prise Turbines', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation turbines', 14),
(34, 201, 'Capteur Température Centrale', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température centrale', 15),
(35, 202, 'Capteur Haute Tension', 'multisensor', 'UV', 'UVN128', 1, 'battery', 88, '2026-05-24', 'Détection haute tension', 15),
(36, 203, 'Bouton Générateur', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Activation générateur', 15),
(37, 204, 'Détecteur Contrôle', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès salle contrôle', 16),
(38, 205, 'Alarme Centrale', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme centrale électrique', 16),
(39, 206, 'Prise Centrale Blackout', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système électrique principal', 16),
(40, 207, 'Bouton Final Blackout', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Réactivation réseau', 16),
(41, 208, 'Capteur Accès Epsilon', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur accès complexe', 17),
(42, 209, 'Détecteur Laboratoire', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection laboratoire principal', 18),
(43, 210, 'Prise Laboratoire', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation laboratoire', 18),
(44, 211, 'Capteur Température Cryo', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température cryogénique', 19),
(45, 212, 'Capteur Humidité Cryo', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 88, '2026-05-24', 'Humidité cryogénique', 19),
(46, 213, 'Bouton Cryogénique', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Commande cryogénique', 19),
(47, 214, 'Détecteur Serveur', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès salle serveur', 20),
(48, 215, 'Alarme Epsilon', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme complexe scientifique', 20),
(49, 216, 'Prise Centrale Epsilon', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système principal epsilon', 20),
(50, 217, 'Bouton Final Epsilon', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin complexe epsilon', 20),
(51, 48, 'Capteur Accueil', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur accueil laboratoire', 21),
(52, 49, 'Détecteur Serveur', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection serveur', 22),
(53, 50, 'Prise Serveur', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation serveurs', 22),
(54, 51, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température serveurs', 22),
(55, 52, 'Bouton Maintenance', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Commande maintenance', 23),
(56, 53, 'Capteur Humidité', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 88, '2026-05-24', 'Humidité maintenance', 23),
(57, 54, 'Détecteur Porte IA', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Porte noyau IA', 24),
(58, 55, 'Alarme Nemesis', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 80, '2026-05-24', 'Alarme centrale IA', 24),
(59, 56, 'Bouton Désactivation', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Arrêt Nemesis', 24),
(60, 57, 'Prise Centrale IA', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système IA', 24),
(61, 58, 'Capteur Entrée Temple', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur entrée', 25),
(62, 59, 'Bouton Symboles', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Puzzle symboles', 26),
(63, 60, 'Détecteur Mouvement', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection temple', 26),
(64, 61, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 92, '2026-05-24', 'Température sanctuaire', 27),
(65, 62, 'Capteur UV Temple', 'multisensor', 'UV', 'UVN128', 1, 'battery', 88, '2026-05-24', 'Lumière UV temple', 27),
(66, 63, 'Prise Torches', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation torches', 27),
(67, 64, 'Détecteur Porte Sacrée', 'door_sensor', 'Security', 'Door', 1, 'battery', 85, '2026-05-24', 'Porte sanctuaire', 28),
(68, 65, 'Alarme Relique', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 80, '2026-05-24', 'Protection relique', 28),
(69, 66, 'Bouton Final Temple', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Activation relique', 28),
(70, 67, 'Prise Sanctuaire', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système sanctuaire', 28),
(71, 68, 'Capteur Hall Neon', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur hall cyberpunk', 29),
(72, 69, 'Détecteur Réseau', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection serveur', 30),
(73, 70, 'Prise Serveur Central', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Serveur principal', 30),
(74, 71, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température salle serveur', 30),
(75, 72, 'Laser Sécurité', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 88, '2026-05-24', 'Système laser', 31),
(76, 73, 'Détecteur Mouvement Laser', 'door_sensor', 'Security', 'Motion', 1, 'battery', 84, '2026-05-24', 'Détection salle laser', 31),
(77, 74, 'Bouton Piratage', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Commande piratage', 32),
(78, 75, 'Prise Coffre Numérique', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation coffre', 32),
(79, 76, 'Capteur Humidité', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 82, '2026-05-24', 'Humidité salle finale', 32),
(80, 77, 'Détecteur Coffre', 'door_sensor', 'Security', 'Door', 1, 'battery', 80, '2026-05-24', 'Ouverture coffre', 32),
(81, 78, 'Capteur Réacteur', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 100, '2026-05-24', 'Capteur température réacteur', 33),
(82, 79, 'Détecteur Centrale', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection centrale', 33),
(83, 80, 'Prise Réacteur', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation réacteur', 34),
(84, 81, 'Capteur Pression', 'multisensor', 'Temp', 'Pressure', 1, 'battery', 88, '2026-05-24', 'Pression réacteur', 34),
(85, 82, 'Capteur Refroidissement', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 92, '2026-05-24', 'Refroidissement', 35),
(86, 83, 'Bouton Stabilisation', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Stabilisation réacteur', 35),
(87, 84, 'Alarme Surcharge', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 84, '2026-05-24', 'Alarme surcharge', 36),
(88, 85, 'Détecteur Porte Sécurité', 'door_sensor', 'Security', 'Door', 1, 'battery', 82, '2026-05-24', 'Accès sécurité', 36),
(89, 86, 'Prise Sécurité', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système sécurité', 36),
(90, 87, 'Bouton Final Réacteur', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Arrêt urgence', 36),
(91, 88, 'Capteur Jungle', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur jungle', 37),
(92, 89, 'Détecteur Piège', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection pièges', 38),
(93, 90, 'Prise Temple', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation temple', 39),
(94, 91, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température temple', 39),
(95, 92, 'Capteur UV Sanctuaire', 'multisensor', 'UV', 'UVN128', 1, 'battery', 88, '2026-05-24', 'UV sanctuaire', 39),
(96, 93, 'Bouton Relique', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Activation relique', 40),
(97, 94, 'Détecteur Porte Relique', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Porte relique', 40),
(98, 95, 'Alarme Sanctuaire', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme sanctuaire', 40),
(99, 96, 'Prise Finale', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation finale', 40),
(100, 97, 'Bouton Final Sanctuaire', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin sanctuaire', 40),
(101, 98, 'Capteur Hangar', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur hangar', 41),
(102, 99, 'Détecteur Laboratoire', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection laboratoire', 42),
(103, 100, 'Prise Expérience', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation expérience', 42),
(104, 101, 'Capteur Radiation', 'multisensor', 'UV', 'UVN128', 1, 'battery', 95, '2026-05-24', 'Radiation anomalie', 42),
(105, 102, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 88, '2026-05-24', 'Température complexe', 43),
(106, 103, 'Bouton Archives', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Accès archives', 43),
(107, 104, 'Détecteur Confinement', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Porte confinement', 44),
(108, 105, 'Alarme Zone X', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 80, '2026-05-24', 'Alarme anomalie', 44),
(109, 106, 'Prise Confinement', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système confinement', 44),
(110, 107, 'Bouton Final Zone X', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin mission', 44),
(111, 108, 'Capteur Hall', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur hall manoir', 45),
(112, 109, 'Détecteur Bibliothèque', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection bibliothèque', 46),
(113, 110, 'Prise Occulte', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation rituels', 47),
(114, 111, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température crypte', 48),
(115, 112, 'Capteur Humidité', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 88, '2026-05-24', 'Humidité crypte', 48),
(116, 113, 'Bouton Secret', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Passage secret', 46),
(117, 114, 'Détecteur Crypte', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Ouverture crypte', 48),
(118, 115, 'Alarme Manoir', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme manoir', 45),
(119, 116, 'Prise Centrale Manoir', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système central', 45),
(120, 117, 'Bouton Final Manoir', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin manoir', 48),
(121, 118, 'Capteur Entrée Catacombes', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur entrée', 49),
(122, 119, 'Détecteur Galerie', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection galerie', 50),
(123, 120, 'Prise Chambre Funéraire', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation tombeaux', 51),
(124, 121, 'Capteur Température', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température catacombes', 50),
(125, 122, 'Capteur Humidité', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 88, '2026-05-24', 'Humidité souterraine', 51),
(126, 123, 'Bouton Secret', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Passage secret', 50),
(127, 124, 'Détecteur Sanctuaire', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Porte sanctuaire', 52),
(128, 125, 'Alarme Catacombes', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme relique', 52),
(129, 126, 'Prise Sanctuaire', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système sanctuaire', 52),
(130, 127, 'Bouton Final Catacombes', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin exploration', 52),
(131, 128, 'Capteur Entrée Mine', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur entrée mine', 53),
(132, 129, 'Détecteur Galerie Minière', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection galerie', 54),
(133, 130, 'Prise Machines', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Machines minières', 55),
(134, 131, 'Capteur Température Mine', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température mine', 54),
(135, 132, 'Capteur Gaz', 'multisensor', 'UV', 'UVN128', 1, 'battery', 88, '2026-05-24', 'Détection gaz dangereux', 55),
(136, 133, 'Bouton Extraction', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Commande extraction', 55),
(137, 134, 'Détecteur Puits', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès puits', 56),
(138, 135, 'Alarme Mine', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme effondrement', 56),
(139, 136, 'Prise Centrale Mine', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système principal', 56),
(140, 137, 'Bouton Final Mine', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin mine', 56),
(141, 138, 'Capteur Quai', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur quai', 57),
(142, 139, 'Détecteur Wagon', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection wagon', 58),
(143, 140, 'Prise Wagon Technique', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation train', 59),
(144, 141, 'Capteur Température Train', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température locomotive', 60),
(145, 142, 'Capteur Humidité Train', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 88, '2026-05-24', 'Humidité wagon', 58),
(146, 143, 'Bouton Locomotive', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Contrôle locomotive', 60),
(147, 144, 'Détecteur Locomotive', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès locomotive', 60),
(148, 145, 'Alarme Train', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme train', 59),
(149, 146, 'Prise Centrale Train', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système train', 60),
(150, 147, 'Bouton Final Train', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin train', 60),
(151, 148, 'Capteur Dock', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur dock spatial', 61),
(152, 149, 'Détecteur Oxygène', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection salle oxygène', 62),
(153, 150, 'Prise Réacteur Spatial', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Réacteur station', 63),
(154, 151, 'Capteur Température Orion', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température station', 63),
(155, 152, 'Capteur Pression Orion', 'multisensor', 'Temp', 'Pressure', 1, 'battery', 88, '2026-05-24', 'Pression spatiale', 62),
(156, 153, 'Bouton Cockpit', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Commande cockpit', 64),
(157, 154, 'Détecteur Cockpit', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès cockpit', 64),
(158, 155, 'Alarme Station', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme spatiale', 63),
(159, 156, 'Prise Centrale Orion', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système station', 64),
(160, 157, 'Bouton Final Orion', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin mission', 64),
(161, 158, 'Capteur Accueil Titan', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur accueil entreprise', 65),
(162, 159, 'Détecteur Biotech', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection laboratoire biotech', 66),
(163, 160, 'Prise Laboratoire Titan', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation laboratoire', 66),
(164, 161, 'Capteur Température Titan', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température laboratoire', 66),
(165, 162, 'Capteur Humidité Titan', 'multisensor', 'Humidity', 'Humidity', 1, 'battery', 88, '2026-05-24', 'Humidité laboratoire', 66),
(166, 163, 'Bouton Serveur Titan', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Commande serveurs', 67),
(167, 164, 'Détecteur Bureau Directeur', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès bureau directeur', 68),
(168, 165, 'Alarme Titan', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme entreprise', 68),
(169, 166, 'Prise Centrale Titan', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système principal Titan', 68),
(170, 167, 'Bouton Final Titan', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin infiltration', 68),
(171, 168, 'Capteur Banque', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur banque', 69),
(172, 169, 'Détecteur Laser', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection salle laser', 70),
(173, 170, 'Prise Sécurité Banque', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation sécurité', 71),
(174, 171, 'Capteur Température Banque', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température salle sécurité', 71),
(175, 172, 'Capteur UV Banque', 'multisensor', 'UV', 'UVN128', 1, 'battery', 88, '2026-05-24', 'Laser UV', 70),
(176, 173, 'Bouton Coffre Rouge', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Ouverture coffre', 72),
(177, 174, 'Détecteur Coffre Rouge', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès coffre', 72),
(178, 175, 'Alarme Banque', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme coffre', 72),
(179, 176, 'Prise Centrale Banque', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système bancaire', 72),
(180, 177, 'Bouton Final Coffre', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin braquage', 72),
(181, 178, 'Capteur Réveil Spatial', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur réveil spatial', 73),
(182, 179, 'Détecteur Module Énergie', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection énergie', 74),
(183, 180, 'Prise Navigation', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système navigation', 75),
(184, 181, 'Capteur Température Deep Space', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température vaisseau', 75),
(185, 182, 'Capteur Pression Deep Space', 'multisensor', 'Temp', 'Pressure', 1, 'battery', 88, '2026-05-24', 'Pression vaisseau', 74),
(186, 183, 'Bouton Passerelle', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Contrôle passerelle', 76),
(187, 184, 'Détecteur Passerelle', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès passerelle', 76),
(188, 185, 'Alarme Deep Space', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme vaisseau', 76),
(189, 186, 'Prise Centrale Deep Space', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système vaisseau', 76),
(190, 187, 'Bouton Final Deep Space', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Fin mission spatiale', 76),
(191, 188, 'Capteur Temporel', 'multisensor', 'Lux', 'Lux', 1, 'battery', 100, '2026-05-24', 'Capteur laboratoire temporel', 77),
(192, 189, 'Détecteur Magnétique', 'door_sensor', 'Security', 'Motion', 1, 'battery', 90, '2026-05-24', 'Détection chambre magnétique', 78),
(193, 190, 'Prise Quantique', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Alimentation quantique', 79),
(194, 191, 'Capteur Température Quantique', 'multisensor', 'Temp', 'LaCrosse TX3', 1, 'battery', 95, '2026-05-24', 'Température laboratoire', 79),
(195, 192, 'Capteur UV Quantique', 'multisensor', 'UV', 'UVN128', 1, 'battery', 88, '2026-05-24', 'Détection anomalie UV', 79),
(196, 193, 'Bouton Noyau Temporel', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Commande noyau', 80),
(197, 194, 'Détecteur Noyau', 'door_sensor', 'Security', 'Door', 1, 'battery', 84, '2026-05-24', 'Accès noyau temporel', 80),
(198, 195, 'Alarme Quantique', 'door_sensor', 'Security', 'Alarm', 1, 'battery', 82, '2026-05-24', 'Alarme temporelle', 80),
(199, 196, 'Prise Centrale Quantique', 'wall_plug', 'Usage', 'Electric', 1, 'secteur', NULL, '2026-05-24', 'Système quantique', 80),
(200, 197, 'Bouton Final Quantique', 'button', 'Light/Switch', 'Switch', 1, 'battery', 100, '2026-05-24', 'Stabilisation finale', 80);

-- --------------------------------------------------------

--
-- Structure de la table `etape`
--

CREATE TABLE `etape` (
  `idEtape` int(11) NOT NULL,
  `ordre` int(11) NOT NULL,
  `description` text,
  `IdJeu` int(11) NOT NULL,
  `IdSalle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etape`
--

INSERT INTO `etape` (`idEtape`, `ordre`, `description`, `IdJeu`, `IdSalle`) VALUES
(1, 1, 'Activer le panneau électrique principal du laboratoire', 1, 1),
(2, 2, 'Révéler le code caché grâce à la lumière UV', 1, 2),
(3, 3, 'Redémarrer le générateur secondaire', 1, 3),
(4, 4, 'Désactiver le protocole de confinement', 1, 4),
(5, 5, 'Ouvrir la sortie sécurisée du complexe', 1, 4),
(6, 1, 'S évader de la cellule principale', 2, 5),
(7, 2, 'Contourner les systèmes de surveillance', 2, 6),
(8, 3, 'Réactiver l alimentation électrique', 2, 7),
(9, 4, 'Déverrouiller la porte blindée', 2, 8),
(10, 5, 'Quitter définitivement la prison', 2, 8),
(11, 1, 'Réactiver les systèmes d urgence du bunker', 3, 9),
(12, 2, 'Relancer les générateurs autonomes', 3, 10),
(13, 3, 'Envoyer un signal radio vers l extérieur', 3, 11),
(14, 4, 'Accéder au noyau de contrôle central', 3, 12),
(15, 5, 'Désactiver l intelligence artificielle', 3, 12),
(16, 1, 'Analyser les pannes électriques du réseau', 4, 13),
(17, 2, 'Réactiver les turbines principales', 4, 14),
(18, 3, 'Stabiliser les transformateurs haute tension', 4, 15),
(19, 4, 'Réinitialiser les systèmes de sécurité', 4, 16),
(20, 5, 'Rétablir complètement l alimentation de la ville', 4, 16),
(21, 1, 'Accéder aux secteurs souterrains sécurisés', 5, 17),
(22, 2, 'Analyser les expériences abandonnées', 5, 18),
(23, 3, 'Déverrouiller la chambre cryogénique', 5, 19),
(24, 4, 'Récupérer les données scientifiques secrètes', 5, 20),
(25, 5, 'Désactiver définitivement le complexe', 5, 20),
(26, 1, 'Accéder au centre de recherche', 6, 21),
(27, 2, 'Contourner les protections des serveurs', 6, 22),
(28, 3, 'Réparer les systèmes techniques du laboratoire', 6, 23),
(29, 4, 'Atteindre le noyau principal de Nemesis', 6, 24),
(30, 5, 'Désactiver l intelligence artificielle', 6, 24),
(31, 1, 'Entrer dans le temple ancien', 7, 25),
(32, 2, 'Résoudre les énigmes symboliques', 7, 26),
(33, 3, 'Allumer les torches sacrées', 7, 27),
(34, 4, 'Déverrouiller le sanctuaire caché', 7, 28),
(35, 5, 'Récupérer la relique sacrée', 7, 28),
(36, 1, 'Infiltrer le complexe cybernétique', 8, 29),
(37, 2, 'Pirater les serveurs principaux', 8, 30),
(38, 3, 'Traverser la salle laser sécurisée', 8, 31),
(39, 4, 'Déverrouiller le coffre numérique', 8, 32),
(40, 5, 'Télécharger les données confidentielles', 8, 32),
(41, 1, 'Analyser l état du réacteur expérimental', 9, 33),
(42, 2, 'Réactiver le cœur énergétique', 9, 34),
(43, 3, 'Stabiliser les systèmes de refroidissement', 9, 35),
(44, 4, 'Désactiver les alarmes critiques', 9, 36),
(45, 5, 'Empêcher l explosion du complexe', 9, 36),
(46, 1, 'Explorer la jungle ancienne', 10, 37),
(47, 2, 'Contourner les pièges mécaniques', 10, 38),
(48, 3, 'Accéder au temple intérieur', 10, 39),
(49, 4, 'Déverrouiller la salle de la relique', 10, 40),
(50, 5, 'Récupérer l artefact interdit', 10, 40),
(51, 1, 'Explorer le hangar militaire abandonné', 11, 41),
(52, 2, 'Analyser les expériences du laboratoire X', 11, 42),
(53, 3, 'Récupérer les documents classifiés', 11, 43),
(54, 4, 'Accéder au centre de confinement', 11, 44),
(55, 5, 'Neutraliser l anomalie expérimentale', 11, 44),
(56, 1, 'Explorer le hall principal du manoir', 12, 45),
(57, 2, 'Trouver les indices cachés dans la bibliothèque', 12, 46),
(58, 3, 'Résoudre le rituel du salon occulte', 12, 47),
(59, 4, 'Déverrouiller l accès à la crypte', 12, 48),
(60, 5, 'Échapper à la malédiction du manoir', 12, 48),
(61, 1, 'Entrer dans les galeries souterraines', 13, 49),
(62, 2, 'Traverser la galerie des crânes', 13, 50),
(63, 3, 'Ouvrir les tombeaux anciens', 13, 51),
(64, 4, 'Accéder au sanctuaire caché', 13, 52),
(65, 5, 'Récupérer l artefact perdu', 13, 52),
(66, 1, 'Explorer les tunnels effondrés', 14, 53),
(67, 2, 'Réactiver les équipements miniers', 14, 54),
(68, 3, 'Redémarrer les machines d extraction', 14, 55),
(69, 4, 'Accéder au puits principal', 14, 56),
(70, 5, 'Trouver une sortie de secours', 14, 56),
(71, 1, 'Explorer le quai abandonné', 15, 57),
(72, 2, 'Traverser les wagons hantés', 15, 58),
(73, 3, 'Réparer les systèmes mécaniques du train', 15, 59),
(74, 4, 'Accéder à la locomotive principale', 15, 60),
(75, 5, 'Arrêter définitivement le train fantôme', 15, 60),
(76, 1, 'Accéder au dock spatial principal', 16, 61),
(77, 2, 'Réactiver les systèmes d oxygène', 16, 62),
(78, 3, 'Stabiliser le réacteur énergétique', 16, 63),
(79, 4, 'Reprendre le contrôle du cockpit', 16, 64),
(80, 5, 'Empêcher la destruction de la station', 16, 64),
(81, 1, 'Infiltrer le siège de Titan Industries', 17, 65),
(82, 2, 'Explorer le laboratoire biotech', 17, 66),
(83, 3, 'Pirater les serveurs sécurisés', 17, 67),
(84, 4, 'Accéder au bureau du directeur', 17, 68),
(85, 5, 'Récupérer les preuves illégales', 17, 68),
(86, 1, 'Entrer dans la banque sécurisée', 18, 69),
(87, 2, 'Traverser la salle laser', 18, 70),
(88, 3, 'Désactiver les systèmes de sécurité', 18, 71),
(89, 4, 'Déverrouiller le coffre principal', 18, 72),
(90, 5, 'Récupérer les documents confidentiels', 18, 72),
(91, 1, 'Comprendre la situation du vaisseau spatial', 19, 73),
(92, 2, 'Réactiver les modules énergétiques', 19, 74),
(93, 3, 'Recalibrer les systèmes de navigation', 19, 75),
(94, 4, 'Accéder à la passerelle centrale', 19, 76),
(95, 5, 'Reprendre le contrôle total du vaisseau', 19, 76),
(96, 1, 'Explorer le laboratoire temporel', 20, 77),
(97, 2, 'Activer les systèmes magnétiques', 20, 78),
(98, 3, 'Stabiliser les anomalies quantiques', 20, 79),
(99, 4, 'Accéder au noyau temporel', 20, 80),
(100, 5, 'Fermer définitivement la faille temporelle', 20, 80);

-- --------------------------------------------------------

--
-- Structure de la table `etatsession`
--

CREATE TABLE `etatsession` (
  `IdSession` int(11) NOT NULL,
  `STatut` varchar(50) NOT NULL,
  `HeureDebut` datetime NOT NULL,
  `HeureFin` datetime DEFAULT NULL,
  `idUtilisateur` int(11) NOT NULL,
  `IdJeu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etatsession`
--

INSERT INTO `etatsession` (`IdSession`, `STatut`, `HeureDebut`, `HeureFin`, `idUtilisateur`, `IdJeu`) VALUES
(1, 'Terminee', '2026-05-01 14:00:00', '2026-05-01 14:54:00', 2, 1),
(2, 'Terminee', '2026-05-03 16:00:00', '2026-05-03 16:58:00', 3, 1),
(3, 'En cours', '2026-05-28 18:00:00', NULL, 2, 1),
(4, 'Terminee', '2026-05-02 15:00:00', '2026-05-02 16:09:00', 2, 2),
(5, 'Terminee', '2026-05-05 20:00:00', '2026-05-05 21:02:00', 3, 2),
(6, 'Pause', '2026-05-28 19:00:00', NULL, 2, 2),
(7, 'Terminee', '2026-05-04 13:00:00', '2026-05-04 14:01:00', 2, 3),
(8, 'Terminee', '2026-05-07 17:00:00', '2026-05-07 18:05:00', 3, 3),
(9, 'Terminee', '2026-05-10 19:00:00', '2026-05-10 20:03:00', 2, 3),
(10, 'Terminee', '2026-05-01 18:00:00', '2026-05-01 19:16:00', 2, 4),
(11, 'Terminee', '2026-05-06 14:00:00', '2026-05-06 15:13:00', 3, 4),
(12, 'En cours', '2026-05-28 21:00:00', NULL, 2, 4),
(13, 'Terminee', '2026-05-03 11:00:00', '2026-05-03 12:02:00', 2, 5),
(14, 'Terminee', '2026-05-09 15:00:00', '2026-05-09 16:00:00', 3, 5),
(15, 'Terminee', '2026-05-12 20:00:00', '2026-05-12 21:01:00', 2, 5),
(16, 'Terminee', '2026-05-02 18:00:00', '2026-05-02 19:22:00', 7, 6),
(17, 'Terminee', '2026-05-06 21:00:00', '2026-05-06 22:19:00', 8, 6),
(18, 'Pause', '2026-05-28 17:00:00', NULL, 7, 6),
(19, 'Terminee', '2026-05-01 10:00:00', '2026-05-01 10:57:00', 7, 7),
(20, 'Terminee', '2026-05-08 14:00:00', '2026-05-08 14:59:00', 8, 7),
(21, 'Terminee', '2026-05-11 16:00:00', '2026-05-11 16:55:00', 7, 7),
(22, 'Terminee', '2026-05-04 20:00:00', '2026-05-04 21:28:00', 7, 8),
(23, 'Terminee', '2026-05-10 18:00:00', '2026-05-10 19:24:00', 8, 8),
(24, 'En cours', '2026-05-28 22:00:00', NULL, 7, 8),
(25, 'Terminee', '2026-05-03 13:00:00', '2026-05-03 14:10:00', 7, 9),
(26, 'Terminee', '2026-05-06 15:00:00', '2026-05-06 16:08:00', 8, 9),
(27, 'Terminee', '2026-05-09 19:00:00', '2026-05-09 20:05:00', 7, 9),
(28, 'Terminee', '2026-05-05 11:00:00', '2026-05-05 12:04:00', 7, 10),
(29, 'Terminee', '2026-05-11 17:00:00', '2026-05-11 18:01:00', 8, 10),
(30, 'Pause', '2026-05-28 20:00:00', NULL, 7, 10),
(31, 'Terminee', '2026-05-02 14:00:00', '2026-05-02 15:06:00', 12, 11),
(32, 'Terminee', '2026-05-07 19:00:00', '2026-05-07 20:02:00', 13, 11),
(33, 'Terminee', '2026-05-12 18:00:00', '2026-05-12 19:04:00', 12, 11),
(34, 'Terminee', '2026-05-01 21:00:00', '2026-05-01 22:17:00', 12, 12),
(35, 'Terminee', '2026-05-08 20:00:00', '2026-05-08 21:13:00', 13, 12),
(36, 'En cours', '2026-05-28 18:30:00', NULL, 12, 12),
(37, 'Terminee', '2026-05-04 12:00:00', '2026-05-04 13:01:00', 12, 13),
(38, 'Terminee', '2026-05-09 16:00:00', '2026-05-09 17:00:00', 13, 13),
(39, 'Terminee', '2026-05-13 14:00:00', '2026-05-13 15:03:00', 12, 13),
(40, 'Terminee', '2026-05-03 09:00:00', '2026-05-03 09:58:00', 12, 14),
(41, 'Terminee', '2026-05-06 11:00:00', '2026-05-06 12:00:00', 13, 14),
(42, 'Pause', '2026-05-28 16:00:00', NULL, 12, 14),
(43, 'Terminee', '2026-05-05 19:00:00', '2026-05-05 20:12:00', 12, 15),
(44, 'Terminee', '2026-05-10 21:00:00', '2026-05-10 22:08:00', 13, 15),
(45, 'Terminee', '2026-05-14 17:00:00', '2026-05-14 18:09:00', 12, 15),
(46, 'Terminee', '2026-05-02 20:00:00', '2026-05-02 21:10:00', 17, 16),
(47, 'Terminee', '2026-05-07 18:00:00', '2026-05-07 19:09:00', 18, 16),
(48, 'En cours', '2026-05-28 23:00:00', NULL, 17, 16),
(49, 'Terminee', '2026-05-04 14:00:00', '2026-05-04 15:16:00', 17, 17),
(50, 'Terminee', '2026-05-09 20:00:00', '2026-05-09 21:11:00', 18, 17),
(51, 'Terminee', '2026-05-13 18:00:00', '2026-05-13 19:12:00', 17, 17),
(52, 'Terminee', '2026-05-01 17:00:00', '2026-05-01 18:01:00', 17, 18),
(53, 'Terminee', '2026-05-11 19:00:00', '2026-05-11 20:00:00', 18, 18),
(54, 'Pause', '2026-05-28 21:30:00', NULL, 17, 18),
(55, 'Terminee', '2026-05-06 20:00:00', '2026-05-06 21:22:00', 17, 19),
(56, 'Terminee', '2026-05-12 21:00:00', '2026-05-12 22:18:00', 18, 19),
(57, 'Terminee', '2026-05-15 16:00:00', '2026-05-15 17:15:00', 17, 19),
(58, 'Terminee', '2026-05-03 18:00:00', '2026-05-03 19:06:00', 17, 20),
(59, 'Terminee', '2026-05-08 15:00:00', '2026-05-08 16:04:00', 18, 20),
(60, 'En cours', '2026-05-28 19:30:00', NULL, 17, 20);

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `IdJeu` int(11) NOT NULL,
  `nomJeu` varchar(100) NOT NULL,
  `description` text,
  `dureeMax` int(11) DEFAULT NULL,
  `IdOperateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jeu`
--

INSERT INTO `jeu` (`IdJeu`, `nomJeu`, `description`, `dureeMax`, `IdOperateur`) VALUES
(1, 'Laboratoire Secret', 'Les joueurs infiltrent un ancien laboratoire scientifique abandonné appartenant à une société privée ayant mené des expériences interdites. Leur objectif est de retrouver une formule expérimentale cachée derrière plusieurs systèmes électroniques sécurisés avant que le système de confinement automatique ne verrouille définitivement le complexe.', 60, 1),
(2, 'Prison 404', 'Les joueurs incarnent des prisonniers enfermés dans une prison technologique de haute sécurité contrôlée par une intelligence artificielle. Ils doivent désactiver les systèmes de surveillance, rétablir l alimentation électrique et ouvrir les portes blindées afin de réussir leur évasion avant l arrivée des gardes.', 75, 1),
(3, 'Le Bunker Omega', 'À la suite d une catastrophe nucléaire, les joueurs se réveillent enfermés dans un bunker militaire autonome dont l intelligence artificielle est devenue incontrôlable. Ils doivent reprendre le contrôle des systèmes de sécurité et désactiver le protocole d auto-destruction.', 70, 1),
(4, 'Operation Blackout', 'Une panne électrique massive plonge une ville entière dans le chaos. Les joueurs doivent infiltrer une centrale énergétique abandonnée afin de réactiver les générateurs principaux et éviter une catastrophe nationale.', 80, 1),
(5, 'Le Complexe Epsilon', 'Les joueurs explorent un complexe scientifique secret construit sous terre afin de découvrir l origine d une anomalie mystérieuse ayant provoqué la disparition du personnel.', 65, 1),
(6, 'Projet Nemesis', 'Une intelligence artificielle expérimentale nommée Nemesis a pris le contrôle d un centre de recherche entier. Les joueurs doivent parcourir plusieurs salles techniques afin de récupérer les codes d accès, contourner les systèmes électroniques et désactiver le noyau central avant qu il ne supprime toutes les données du laboratoire.', 85, 2),
(7, 'Temple Maudit', 'Une équipe d explorateurs découvre un ancien temple oublié rempli de mécanismes complexes et d énigmes mystiques protégeant une relique sacrée. Les joueurs doivent résoudre plusieurs puzzles environnementaux et activer différents mécanismes cachés afin d accéder à la chambre sacrée.', 60, 2),
(8, 'Cyber Heist', 'Dans un univers cyberpunk futuriste, les joueurs incarnent une équipe de hackers chargée d infiltrer une corporation ultra sécurisée afin de voler des données confidentielles. Ils devront désactiver des alarmes électroniques, détourner des systèmes de sécurité et ouvrir un coffre numérique sécurisé.', 90, 2),
(9, 'Le Réacteur', 'Une centrale expérimentale menace d exploser après une surcharge énergétique. Les joueurs doivent collaborer afin de stabiliser le cœur du réacteur et empêcher une catastrophe industrielle majeure.', 75, 2),
(10, 'Le Sanctuaire Interdit', 'Les joueurs pénètrent dans un ancien sanctuaire oublié caché au cœur d une jungle tropicale. Entre pièges mécaniques et mécanismes anciens, ils devront survivre et récupérer un artefact perdu.', 70, 2),
(11, 'Zone X', 'Un ancien complexe militaire secret a été abandonné après une expérience scientifique catastrophique. Les joueurs doivent explorer les différentes zones du site afin de comprendre ce qui s est réellement passé et empêcher la propagation d une anomalie dangereuse.', 70, 3),
(12, 'Le Manoir Noir', 'Les participants explorent un manoir hanté rempli de passages secrets, de mécanismes cachés et de phénomènes paranormaux. Ils devront résoudre plusieurs énigmes liées à l histoire tragique de la famille propriétaire du manoir afin de trouver une sortie avant d être piégés définitivement.', 80, 3),
(13, 'Les Catacombes', 'Les joueurs s aventurent dans des catacombes anciennes découvertes sous une ville historique. Entre pièges mécaniques, salles secrètes et symboles mystérieux, ils devront progresser dans les profondeurs afin de retrouver un artefact disparu depuis plusieurs siècles.', 65, 3),
(14, 'La Mine Abandonnée', 'Après l effondrement d une ancienne mine, les joueurs doivent retrouver un chemin vers la sortie tout en découvrant les secrets cachés dans les profondeurs du site.', 60, 3),
(15, 'Le Train Fantôme', 'Un train abandonné circule encore mystérieusement chaque nuit. Les joueurs montent à bord afin de découvrir l origine de cette étrange malédiction.', 75, 3),
(16, 'Station Orion', 'Une station spatiale en orbite autour de Mars subit une panne critique menaçant la survie de l équipage. Les joueurs doivent réactiver les systèmes de survie, réparer les modules énergétiques et reprendre le contrôle du cockpit avant la destruction complète de la station.', 75, 4),
(17, 'Titan Industries', 'Les joueurs infiltrent le siège d une multinationale spécialisée dans les biotechnologies afin de révéler des expériences illégales menées sur des cobayes humains. Ils devront accéder aux serveurs sécurisés, contourner les dispositifs électroniques et récupérer des preuves avant d être détectés.', 80, 4),
(18, 'Le Coffre Rouge', 'Une organisation criminelle protège un coffre ultra sécurisé contenant des documents confidentiels liés à un trafic international. Les joueurs doivent franchir plusieurs systèmes de sécurité électroniques, désactiver des alarmes et ouvrir le coffre avant l arrivée des renforts.', 65, 4),
(19, 'Deep Space', 'Les joueurs se réveillent à bord d un vaisseau spatial dérivant dans l espace profond sans aucun souvenir de ce qui s est produit. Ils devront réparer les systèmes et découvrir la vérité.', 85, 4),
(20, 'La Chambre Quantique', 'Une expérience scientifique ouvre accidentellement une faille temporelle dans un laboratoire de recherche avancée. Les joueurs doivent résoudre plusieurs énigmes technologiques afin de stabiliser la faille.', 70, 4);

-- --------------------------------------------------------

--
-- Structure de la table `mesure`
--

CREATE TABLE `mesure` (
  `idMesure` int(11) NOT NULL,
  `dateEnregistrement` datetime NOT NULL,
  `typeValeur` varchar(50) DEFAULT NULL,
  `Valeur` varchar(50) DEFAULT NULL,
  `unite` varchar(20) DEFAULT NULL,
  `idDispositif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mesure`
--

INSERT INTO `mesure` (`idMesure`, `dateEnregistrement`, `typeValeur`, `Valeur`, `unite`, `idDispositif`) VALUES
(1, '2026-05-24 14:00:00', 'Lux', '58', 'Lux', 1),
(2, '2026-05-24 14:05:00', 'Lux', '62', 'Lux', 1),
(3, '2026-05-24 14:10:00', 'Lux', '55', 'Lux', 1),
(4, '2026-05-24 14:01:00', 'UV', '0.2', 'UVI', 2),
(5, '2026-05-24 14:06:00', 'UV', '0.8', 'UVI', 2),
(6, '2026-05-24 14:11:00', 'UV', '1.0', 'UVI', 2),
(7, '2026-05-24 14:02:00', 'Usage', '12', 'Watt', 3),
(8, '2026-05-24 14:07:00', 'Usage', '18', 'Watt', 3),
(9, '2026-05-24 14:12:00', 'Usage', '22', 'Watt', 3),
(10, '2026-05-24 14:03:00', 'Temp', '22.8', 'C', 4),
(11, '2026-05-24 14:08:00', 'Temp', '23.1', 'C', 4),
(12, '2026-05-24 14:04:00', 'Light/Switch', 'Off', NULL, 5),
(13, '2026-05-24 14:09:00', 'Light/Switch', 'On', NULL, 5),
(14, '2026-05-24 14:05:00', 'Light/Switch', 'Off', NULL, 6),
(15, '2026-05-24 14:10:00', 'Light/Switch', 'On', NULL, 6),
(16, '2026-05-24 14:06:00', 'Door', 'Off', NULL, 7),
(17, '2026-05-24 14:11:00', 'Door', 'On', NULL, 7),
(18, '2026-05-24 14:07:00', 'Motion', 'Off', NULL, 8),
(19, '2026-05-24 14:12:00', 'Motion', 'On', NULL, 8),
(20, '2026-05-24 14:08:00', 'Alarm', 'Off', NULL, 9),
(21, '2026-05-24 14:13:00', 'Alarm', 'On', NULL, 9),
(22, '2026-05-24 14:09:00', 'Usage', '0', 'Watt', 10),
(23, '2026-05-24 14:14:00', 'Usage', '15', 'Watt', 10),
(24, '2026-05-24 15:00:00', 'Lux', '40', 'Lux', 11),
(25, '2026-05-24 15:05:00', 'Lux', '45', 'Lux', 11),
(26, '2026-05-24 15:01:00', 'Light/Switch', 'Off', NULL, 12),
(27, '2026-05-24 15:06:00', 'Light/Switch', 'On', NULL, 12),
(28, '2026-05-24 15:02:00', 'Motion', 'Off', NULL, 13),
(29, '2026-05-24 15:07:00', 'Motion', 'On', NULL, 13),
(30, '2026-05-24 15:03:00', 'Usage', '10', 'Watt', 14),
(31, '2026-05-24 15:08:00', 'Usage', '20', 'Watt', 14),
(32, '2026-05-24 15:04:00', 'Temp', '24.5', 'C', 15),
(33, '2026-05-24 15:09:00', 'Temp', '25.2', 'C', 15),
(34, '2026-05-24 15:05:00', 'Humidity', '61', '%', 16),
(35, '2026-05-24 15:10:00', 'Humidity', '64', '%', 16),
(36, '2026-05-24 15:06:00', 'Alarm', 'Off', NULL, 17),
(37, '2026-05-24 15:11:00', 'Alarm', 'On', NULL, 17),
(38, '2026-05-24 15:07:00', 'Door', 'Off', NULL, 18),
(39, '2026-05-24 15:12:00', 'Door', 'On', NULL, 18),
(40, '2026-05-24 15:08:00', 'Light/Switch', 'Off', NULL, 19),
(41, '2026-05-24 15:13:00', 'Light/Switch', 'On', NULL, 19),
(42, '2026-05-24 15:09:00', 'Usage', '0', 'Watt', 20),
(43, '2026-05-24 15:14:00', 'Usage', '18', 'Watt', 20),
(44, '2026-05-24 16:00:00', 'Lux', '48', 'Lux', 21),
(45, '2026-05-24 16:05:00', 'Lux', '52', 'Lux', 21),
(46, '2026-05-24 16:10:00', 'Light/Switch', 'On', NULL, 22),
(47, '2026-05-24 16:15:00', 'Usage', '25', 'Watt', 23),
(48, '2026-05-24 16:20:00', 'Temp', '23.7', 'C', 24),
(49, '2026-05-24 16:25:00', 'UV', '1.4', 'UVI', 25),
(50, '2026-05-24 16:30:00', 'Motion', 'On', NULL, 26),
(51, '2026-05-24 16:35:00', 'Alarm', 'Off', NULL, 27),
(52, '2026-05-24 16:40:00', 'Door', 'On', NULL, 28),
(53, '2026-05-24 16:45:00', 'Light/Switch', 'On', NULL, 29),
(54, '2026-05-24 16:50:00', 'Usage', '19', 'Watt', 30),
(55, '2026-05-24 17:00:00', 'Lux', '60', 'Lux', 31),
(56, '2026-05-24 17:05:00', 'Motion', 'On', NULL, 32),
(57, '2026-05-24 17:10:00', 'Usage', '28', 'Watt', 33),
(58, '2026-05-24 17:15:00', 'Temp', '26.1', 'C', 34),
(59, '2026-05-24 17:20:00', 'UV', '0.8', 'UVI', 35),
(60, '2026-05-24 17:25:00', 'Light/Switch', 'On', NULL, 36),
(61, '2026-05-24 17:30:00', 'Door', 'Off', NULL, 37),
(62, '2026-05-24 17:35:00', 'Alarm', 'On', NULL, 38),
(63, '2026-05-24 17:40:00', 'Usage', '31', 'Watt', 39),
(64, '2026-05-24 17:45:00', 'Light/Switch', 'On', NULL, 40),
(65, '2026-05-24 18:00:00', 'Lux', '55', 'Lux', 41),
(66, '2026-05-24 18:05:00', 'Motion', 'Off', NULL, 42),
(67, '2026-05-24 18:10:00', 'Usage', '22', 'Watt', 43),
(68, '2026-05-24 18:15:00', 'Temp', '-4', 'C', 44),
(69, '2026-05-24 18:20:00', 'Humidity', '71', '%', 45),
(70, '2026-05-24 18:25:00', 'Light/Switch', 'On', NULL, 46),
(71, '2026-05-24 18:30:00', 'Door', 'On', NULL, 47),
(72, '2026-05-24 18:35:00', 'Alarm', 'Off', NULL, 48),
(73, '2026-05-24 18:40:00', 'Usage', '16', 'Watt', 49),
(74, '2026-05-24 18:45:00', 'Light/Switch', 'On', NULL, 50),
(75, '2026-05-24 19:00:00', 'Lux', '43', 'Lux', 51),
(76, '2026-05-24 19:05:00', 'Motion', 'On', NULL, 52),
(77, '2026-05-24 19:10:00', 'Usage', '41', 'Watt', 53),
(78, '2026-05-24 19:15:00', 'Temp', '24.9', 'C', 54),
(79, '2026-05-24 19:20:00', 'Humidity', '58', '%', 56),
(80, '2026-05-24 19:25:00', 'Door', 'On', NULL, 57),
(81, '2026-05-24 19:30:00', 'Alarm', 'On', NULL, 58),
(82, '2026-05-24 19:35:00', 'Light/Switch', 'On', NULL, 59),
(83, '2026-05-24 19:40:00', 'Usage', '35', 'Watt', 60),
(84, '2026-05-24 20:00:00', 'Lux', '72', 'Lux', 61),
(85, '2026-05-24 20:05:00', 'Light/Switch', 'Off', NULL, 62),
(86, '2026-05-24 20:10:00', 'Motion', 'On', NULL, 63),
(87, '2026-05-24 20:15:00', 'Temp', '27.0', 'C', 64),
(88, '2026-05-24 20:20:00', 'UV', '1.2', 'UVI', 65),
(89, '2026-05-24 20:25:00', 'Usage', '14', 'Watt', 66),
(90, '2026-05-24 20:30:00', 'Door', 'Off', NULL, 67),
(91, '2026-05-24 20:35:00', 'Alarm', 'On', NULL, 68),
(92, '2026-05-24 20:40:00', 'Light/Switch', 'On', NULL, 69),
(93, '2026-05-24 20:45:00', 'Usage', '17', 'Watt', 70),
(94, '2026-05-24 21:00:00', 'Lux', '69', 'Lux', 71),
(95, '2026-05-24 21:05:00', 'Motion', 'Off', NULL, 72),
(96, '2026-05-24 21:10:00', 'Usage', '39', 'Watt', 73),
(97, '2026-05-24 21:15:00', 'Temp', '21.5', 'C', 74),
(98, '2026-05-24 21:20:00', 'Alarm', 'On', NULL, 75),
(99, '2026-05-24 21:25:00', 'Motion', 'On', NULL, 76),
(100, '2026-05-24 21:30:00', 'Light/Switch', 'On', NULL, 77),
(101, '2026-05-24 21:35:00', 'Usage', '23', 'Watt', 78),
(102, '2026-05-24 21:40:00', 'Humidity', '65', '%', 79),
(103, '2026-05-24 21:45:00', 'Door', 'On', NULL, 80),
(104, '2026-05-24 22:00:00', 'Temp', '89', 'C', 81),
(105, '2026-05-24 22:05:00', 'Motion', 'On', NULL, 82),
(106, '2026-05-24 22:10:00', 'Usage', '52', 'Watt', 83),
(107, '2026-05-24 22:15:00', 'Temp', '101', 'C', 84),
(108, '2026-05-24 22:20:00', 'Humidity', '45', '%', 85),
(109, '2026-05-24 22:25:00', 'Light/Switch', 'On', NULL, 86),
(110, '2026-05-24 22:30:00', 'Alarm', 'On', NULL, 87),
(111, '2026-05-24 22:35:00', 'Door', 'On', NULL, 88),
(112, '2026-05-24 22:40:00', 'Usage', '61', 'Watt', 89),
(113, '2026-05-24 22:45:00', 'Light/Switch', 'Off', NULL, 90),
(114, '2026-05-24 23:00:00', 'Lux', '34', 'Lux', 91),
(115, '2026-05-24 23:05:00', 'Motion', 'On', NULL, 92),
(116, '2026-05-24 23:10:00', 'Usage', '20', 'Watt', 93),
(117, '2026-05-24 23:15:00', 'Temp', '28.5', 'C', 94),
(118, '2026-05-24 23:20:00', 'UV', '2.1', 'UVI', 95),
(119, '2026-05-24 23:25:00', 'Light/Switch', 'On', NULL, 96),
(120, '2026-05-24 23:30:00', 'Door', 'Off', NULL, 97),
(121, '2026-05-24 23:35:00', 'Alarm', 'On', NULL, 98),
(122, '2026-05-24 23:40:00', 'Usage', '18', 'Watt', 99),
(123, '2026-05-24 23:45:00', 'Light/Switch', 'On', NULL, 100),
(124, '2026-05-25 00:00:00', 'Lux', '18', 'Lux', 121),
(125, '2026-05-25 00:05:00', 'Motion', 'On', NULL, 122),
(126, '2026-05-25 00:10:00', 'Usage', '11', 'Watt', 123),
(127, '2026-05-25 00:15:00', 'Temp', '16.5', 'C', 124),
(128, '2026-05-25 00:20:00', 'Humidity', '82', '%', 125),
(129, '2026-05-25 00:25:00', 'Light/Switch', 'On', NULL, 126),
(130, '2026-05-25 00:30:00', 'Door', 'On', NULL, 127),
(131, '2026-05-25 00:35:00', 'Alarm', 'Off', NULL, 128),
(132, '2026-05-25 00:40:00', 'Usage', '15', 'Watt', 129),
(133, '2026-05-25 00:45:00', 'Light/Switch', 'On', NULL, 130),
(134, '2026-05-25 01:00:00', 'Lux', '26', 'Lux', 131),
(135, '2026-05-25 01:05:00', 'Motion', 'Off', NULL, 132),
(136, '2026-05-25 01:10:00', 'Usage', '37', 'Watt', 133),
(137, '2026-05-25 01:15:00', 'Temp', '12.2', 'C', 134),
(138, '2026-05-25 01:20:00', 'UV', '0.4', 'UVI', 135),
(139, '2026-05-25 01:25:00', 'Light/Switch', 'On', NULL, 136),
(140, '2026-05-25 01:30:00', 'Door', 'Off', NULL, 137),
(141, '2026-05-25 01:35:00', 'Alarm', 'On', NULL, 138),
(142, '2026-05-25 01:40:00', 'Usage', '19', 'Watt', 139),
(143, '2026-05-25 01:45:00', 'Light/Switch', 'Off', NULL, 140),
(144, '2026-05-25 02:00:00', 'Lux', '9', 'Lux', 141),
(145, '2026-05-25 02:05:00', 'Motion', 'On', NULL, 142),
(146, '2026-05-25 02:10:00', 'Usage', '29', 'Watt', 143),
(147, '2026-05-25 02:15:00', 'Temp', '31.4', 'C', 144),
(148, '2026-05-25 02:20:00', 'Humidity', '67', '%', 145),
(149, '2026-05-25 02:25:00', 'Light/Switch', 'On', NULL, 146),
(150, '2026-05-25 02:30:00', 'Door', 'On', NULL, 147),
(151, '2026-05-25 02:35:00', 'Alarm', 'Off', NULL, 148),
(152, '2026-05-25 02:40:00', 'Usage', '14', 'Watt', 149),
(153, '2026-05-25 02:45:00', 'Light/Switch', 'On', NULL, 150),
(154, '2026-05-25 03:00:00', 'Lux', '76', 'Lux', 151),
(155, '2026-05-25 03:05:00', 'Motion', 'Off', NULL, 152),
(156, '2026-05-25 03:10:00', 'Usage', '45', 'Watt', 153),
(157, '2026-05-25 03:15:00', 'Temp', '18.3', 'C', 154),
(158, '2026-05-25 03:20:00', 'Pressure', '1.8', 'Bar', 155),
(159, '2026-05-25 03:25:00', 'Light/Switch', 'On', NULL, 156),
(160, '2026-05-25 03:30:00', 'Door', 'On', NULL, 157),
(161, '2026-05-25 03:35:00', 'Alarm', 'On', NULL, 158),
(162, '2026-05-25 03:40:00', 'Usage', '39', 'Watt', 159),
(163, '2026-05-25 03:45:00', 'Light/Switch', 'On', NULL, 160),
(164, '2026-05-25 04:00:00', 'Lux', '82', 'Lux', 161),
(165, '2026-05-25 04:05:00', 'Motion', 'On', NULL, 162),
(166, '2026-05-25 04:10:00', 'Usage', '27', 'Watt', 163),
(167, '2026-05-25 04:15:00', 'Temp', '20.8', 'C', 164),
(168, '2026-05-25 04:20:00', 'Humidity', '55', '%', 165),
(169, '2026-05-25 04:25:00', 'Light/Switch', 'On', NULL, 166),
(170, '2026-05-25 04:30:00', 'Door', 'Off', NULL, 167),
(171, '2026-05-25 04:35:00', 'Alarm', 'On', NULL, 168),
(172, '2026-05-25 04:40:00', 'Usage', '42', 'Watt', 169),
(173, '2026-05-25 04:45:00', 'Light/Switch', 'On', NULL, 170),
(174, '2026-05-25 05:00:00', 'Lux', '61', 'Lux', 171),
(175, '2026-05-25 05:05:00', 'Motion', 'Off', NULL, 172),
(176, '2026-05-25 05:10:00', 'Usage', '51', 'Watt', 173),
(177, '2026-05-25 05:15:00', 'Temp', '19.2', 'C', 174),
(178, '2026-05-25 05:20:00', 'UV', '1.9', 'UVI', 175),
(179, '2026-05-25 05:25:00', 'Light/Switch', 'On', NULL, 176),
(180, '2026-05-25 05:30:00', 'Door', 'On', NULL, 177),
(181, '2026-05-25 05:35:00', 'Alarm', 'Off', NULL, 178),
(182, '2026-05-25 05:40:00', 'Usage', '34', 'Watt', 179),
(183, '2026-05-25 05:45:00', 'Light/Switch', 'On', NULL, 180),
(184, '2026-05-25 06:00:00', 'Lux', '14', 'Lux', 181),
(185, '2026-05-25 06:05:00', 'Motion', 'On', NULL, 182),
(186, '2026-05-25 06:10:00', 'Usage', '47', 'Watt', 183),
(187, '2026-05-25 06:15:00', 'Temp', '17.1', 'C', 184),
(188, '2026-05-25 06:20:00', 'Pressure', '2.1', 'Bar', 185),
(189, '2026-05-25 06:25:00', 'Light/Switch', 'On', NULL, 186),
(190, '2026-05-25 06:30:00', 'Door', 'Off', NULL, 187),
(191, '2026-05-25 06:35:00', 'Alarm', 'On', NULL, 188),
(192, '2026-05-25 06:40:00', 'Usage', '36', 'Watt', 189),
(193, '2026-05-25 06:45:00', 'Light/Switch', 'On', NULL, 190),
(194, '2026-05-25 07:00:00', 'Lux', '91', 'Lux', 191),
(195, '2026-05-25 07:05:00', 'Motion', 'Off', NULL, 192),
(196, '2026-05-25 07:10:00', 'Usage', '58', 'Watt', 193),
(197, '2026-05-25 07:15:00', 'Temp', '25.7', 'C', 194),
(198, '2026-05-25 07:20:00', 'UV', '2.7', 'UVI', 195),
(199, '2026-05-25 07:25:00', 'Light/Switch', 'On', NULL, 196),
(200, '2026-05-25 07:30:00', 'Door', 'On', NULL, 197),
(201, '2026-05-25 07:35:00', 'Alarm', 'Off', NULL, 198),
(202, '2026-05-25 07:40:00', 'Usage', '49', 'Watt', 199),
(203, '2026-05-25 07:45:00', 'Light/Switch', 'On', NULL, 200);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `IdSalle` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text,
  `IdJeu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`IdSalle`, `nom`, `description`, `IdJeu`) VALUES
(1, 'Salle de Confinement', 'Salle de départ contenant plusieurs équipements scientifiques verrouillés ainsi que les premiers indices permettant d accéder au laboratoire principal.', 1),
(2, 'Laboratoire UV', 'Salle équipée de lampes ultraviolettes et de plusieurs expériences chimiques permettant de révéler des messages cachés.', 1),
(3, 'Salle du Générateur', 'Pièce contenant le système électrique principal du laboratoire et différents mécanismes électroniques sécurisés.', 1),
(4, 'Salle de Contrôle', 'Centre de supervision du complexe scientifique où les joueurs doivent désactiver le protocole de confinement.', 1),
(5, 'Cellule Alpha', 'Salle de départ représentant une cellule de prison futuriste sécurisée électroniquement.', 2),
(6, 'Couloir de Surveillance', 'Couloir équipé de caméras et de détecteurs de mouvements reliés au système de sécurité central.', 2),
(7, 'Salle Électrique', 'Salle technique contenant les panneaux de contrôle énergétique de la prison.', 2),
(8, 'Salle Blindée', 'Zone finale protégée par plusieurs systèmes électroniques et alarmes de sécurité.', 2),
(9, 'Salle de Réveil', 'Salle où les joueurs se réveillent après une panne générale du bunker militaire.', 3),
(10, 'Centre Énergétique', 'Salle contenant les générateurs autonomes et les systèmes de secours du bunker.', 3),
(11, 'Salle de Communication', 'Salle permettant d établir un contact avec l extérieur via plusieurs systèmes radio.', 3),
(12, 'Noyau Central', 'Salle principale contenant l intelligence artificielle contrôlant le bunker.', 3),
(13, 'Poste de Surveillance', 'Salle permettant d observer les différents secteurs de la centrale électrique.', 4),
(14, 'Salle des Turbines', 'Salle industrielle contenant les énormes turbines du réseau énergétique principal.', 4),
(15, 'Salle Haute Tension', 'Salle dangereuse regroupant les transformateurs électriques et les commandes de sécurité.', 4),
(16, 'Centre de Contrôle', 'Salle finale où les joueurs doivent rétablir totalement le réseau électrique.', 4),
(17, 'Zone d Accès', 'Salle sécurisée permettant d accéder aux parties souterraines du complexe.', 5),
(18, 'Laboratoire Principal', 'Salle scientifique contenant plusieurs expériences abandonnées et des documents confidentiels.', 5),
(19, 'Salle Cryogénique', 'Salle réfrigérée utilisée pour conserver des échantillons biologiques dangereux.', 5),
(20, 'Salle du Serveur', 'Salle informatique regroupant les données du complexe scientifique.', 5),
(21, 'Accueil', 'Salle d entrée du centre de recherche contrôlé par l intelligence artificielle Nemesis.', 6),
(22, 'Serveurs', 'Salle regroupant les serveurs principaux du laboratoire et les systèmes de sécurité numériques.', 6),
(23, 'Salle de Maintenance', 'Salle technique contenant les outils nécessaires pour contourner les systèmes de défense.', 6),
(24, 'Noyau IA', 'Salle finale hébergeant le noyau central de Nemesis.', 6),
(25, 'Entrée du Temple', 'Salle ancienne décorée de symboles mystérieux et de mécanismes antiques.', 7),
(26, 'Salle des Symboles', 'Salle contenant plusieurs énigmes murales liées à une ancienne civilisation.', 7),
(27, 'Chambre des Torches', 'Salle obscure où les joueurs doivent allumer plusieurs torches dans le bon ordre.', 7),
(28, 'Sanctuaire Sacré', 'Salle finale protégeant une relique ancienne enfermée dans un autel sécurisé.', 7),
(29, 'Hall Neon', 'Salle d entrée du complexe cyberpunk équipée de systèmes lumineux avancés.', 8),
(30, 'Salle Serveur', 'Salle informatique contenant les bases de données sécurisées de la corporation.', 8),
(31, 'Salle Laser', 'Salle protégée par plusieurs faisceaux laser et détecteurs électroniques.', 8),
(32, 'Coffre Numérique', 'Salle finale contenant les données confidentielles à récupérer.', 8),
(33, 'Salle de Contrôle', 'Salle permettant de surveiller la stabilité du réacteur expérimental.', 9),
(34, 'Réacteur Principal', 'Salle centrale contenant le cœur énergétique du complexe.', 9),
(35, 'Salle de Refroidissement', 'Salle regroupant les systèmes de refroidissement du réacteur.', 9),
(36, 'Salle de Sécurité', 'Salle finale où les joueurs doivent stabiliser définitivement le système.', 9),
(37, 'Entrée de la Jungle', 'Salle représentant l accès principal vers le sanctuaire caché.', 10),
(38, 'Salle des Pièges', 'Salle remplie de mécanismes anciens et de pièges dissimulés.', 10),
(39, 'Temple Intérieur', 'Salle centrale du sanctuaire contenant plusieurs énigmes anciennes.', 10),
(40, 'Salle de la Relique', 'Salle finale protégeant l artefact recherché.', 10),
(41, 'Hangar Militaire', 'Ancien hangar militaire abandonné contenant plusieurs véhicules et équipements scientifiques détériorés.', 11),
(42, 'Laboratoire X', 'Salle expérimentale utilisée pour mener des recherches interdites sur une anomalie inconnue.', 11),
(43, 'Salle des Archives', 'Salle regroupant des documents classifiés et des rapports militaires confidentiels.', 11),
(44, 'Centre de Confinement', 'Salle sécurisée contenant le cœur de l anomalie responsable de l incident.', 11),
(45, 'Hall Principal', 'Salle principale du manoir décorée de tableaux anciens et de mécanismes secrets.', 12),
(46, 'Bibliothèque', 'Salle remplie de livres anciens contenant plusieurs indices cachés.', 12),
(47, 'Salon Occulte', 'Salle utilisée autrefois pour des rituels mystérieux liés à la famille du manoir.', 12),
(48, 'Crypte', 'Salle souterraine renfermant les secrets les plus sombres du manoir.', 12),
(49, 'Entrée des Catacombes', 'Salle permettant l accès aux galeries souterraines anciennes.', 13),
(50, 'Galerie des Crânes', 'Salle remplie d ossements et de symboles mystérieux gravés dans les murs.', 13),
(51, 'Chambre Funéraire', 'Salle contenant plusieurs tombeaux verrouillés par des mécanismes anciens.', 13),
(52, 'Sanctuaire Caché', 'Salle secrète protégeant un ancien artefact disparu.', 13),
(53, 'Entrée de la Mine', 'Salle représentant l accès principal vers les tunnels miniers effondrés.', 14),
(54, 'Galerie Minière', 'Salle contenant plusieurs rails et équipements d extraction abandonnés.', 14),
(55, 'Salle des Machines', 'Salle regroupant les anciens systèmes mécaniques de la mine.', 14),
(56, 'Puits Principal', 'Salle finale permettant d accéder à la sortie du site minier.', 14),
(57, 'Quai Abandonné', 'Salle représentant une ancienne gare désertée depuis plusieurs décennies.', 15),
(58, 'Wagon Passager', 'Salle reproduisant l intérieur du train hanté rempli d objets mystérieux.', 15),
(59, 'Wagon Technique', 'Salle contenant les systèmes mécaniques et électriques du train.', 15),
(60, 'Locomotive', 'Salle finale permettant de reprendre le contrôle du train fantôme.', 15),
(61, 'Dock Spatial', 'Salle permettant l accès principal à la station spatiale en orbite.', 16),
(62, 'Salle Oxygène', 'Salle regroupant les systèmes de survie et de régulation atmosphérique.', 16),
(63, 'Salle Réacteur', 'Salle contenant le cœur énergétique alimentant toute la station.', 16),
(64, 'Cockpit', 'Salle de pilotage permettant de reprendre le contrôle du vaisseau.', 16),
(65, 'Accueil Corporatif', 'Salle d entrée du siège de Titan Industries équipée de systèmes de sécurité avancés.', 17),
(66, 'Laboratoire Biotech', 'Salle scientifique utilisée pour mener des expériences biologiques illégales.', 17),
(67, 'Salle des Serveurs', 'Salle informatique contenant les données confidentielles de l entreprise.', 17),
(68, 'Bureau du Directeur', 'Salle finale contenant les preuves nécessaires pour dénoncer Titan Industries.', 17),
(69, 'Banque', 'Salle d entrée du complexe bancaire ultra sécurisé.', 18),
(70, 'Salle Laser', 'Salle protégée par plusieurs faisceaux laser reliés à un système d alarme.', 18),
(71, 'Salle de Sécurité', 'Salle contenant les commandes principales des systèmes électroniques du bâtiment.', 18),
(72, 'Coffre Principal', 'Salle finale contenant les documents confidentiels recherchés.', 18),
(73, 'Salle de Réveil', 'Salle où les joueurs se réveillent sans souvenir à bord du vaisseau spatial.', 19),
(74, 'Module Énergie', 'Salle contenant les générateurs principaux du vaisseau.', 19),
(75, 'Salle Navigation', 'Salle permettant de recalibrer les systèmes de navigation spatiale.', 19),
(76, 'Passerelle', 'Salle finale donnant accès au contrôle total du vaisseau.', 19),
(77, 'Laboratoire Temporel', 'Salle scientifique contenant plusieurs expériences liées aux anomalies temporelles.', 20),
(78, 'Chambre Magnétique', 'Salle équipée de dispositifs expérimentaux produisant des champs électromagnétiques.', 20),
(79, 'Salle Quantique', 'Salle principale où la faille temporelle a été ouverte accidentellement.', 20),
(80, 'Noyau Temporel', 'Salle finale permettant de stabiliser définitivement la faille.', 20);

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

CREATE TABLE `societe` (
  `IdOperateur` int(11) NOT NULL,
  `nomSociete` varchar(100) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `adresse` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `societe`
--

INSERT INTO `societe` (`IdOperateur`, `nomSociete`, `email`, `telephone`, `adresse`) VALUES
(1, 'Enigma Escape', 'contact@enigmaescape.fr', '0563000001', '12 Rue du Puzzle, Toulouse'),
(2, 'DarkRoom Escape', 'contact@darkroom.fr', '0563000002', '8 Avenue du Mystere, Bordeaux'),
(3, 'Cipher Quest', 'contact@cipherquest.fr', '0563000003', '22 Rue des Enigmes, Lyon'),
(4, 'NeoRoom Studios', 'contact@neoroom.fr', '0563000004', '5 Boulevard Secret, Paris'),
(5, 'Enigmatech', 'enigmatech@enigmatech.fr', '0605040302', '3 rue toulouse,01350 paris');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `dateNaissance` date DEFAULT NULL,
  `role` enum('Admin','Gamemaster','Opérateur') NOT NULL,
  `IdOperateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUtilisateur`, `nom`, `prenom`, `pseudo`, `mdp`, `email`, `dateNaissance`, `role`, `IdOperateur`) VALUES
(1, 'Martin', 'Lucas', 'admin_global', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'admin@enigmatech.fr', '1990-01-15', 'Admin', 5),
(2, 'Durand', 'Emma', 'gm_lab', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'emma@enigmaescape.fr', '1995-04-20', 'Gamemaster', 1),
(3, 'Petit', 'Leo', 'operateur_dark', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'leo@darkroom.fr', '1993-08-11', 'Opérateur', 2),
(4, 'Moreau', 'Sarah', 'gm_cipher', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'sarah@cipherquest.fr', '1998-12-03', 'Gamemaster', 3),
(5, 'Garcia', 'Tom', 'operateur_neo', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'tom@neoroom.fr', '1991-05-06', 'Opérateur', 4),
(7, 'Garcia', 'Tom', 'gm_darkroom_1', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'tom.garcia@darkroom.fr', '1992-05-06', 'Gamemaster', 2),
(8, 'Lopez', 'Nina', 'gm_darkroom_2', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'nina.lopez@darkroom.fr', '1996-03-21', 'Gamemaster', 2),
(9, 'Dubois', 'Alex', 'operateur_darkroom_1', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'alex.dubois@darkroom.fr', '1993-12-14', 'Opérateur', 2),
(10, 'Michel', 'Clara', 'operateur_darkroom_2', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'clara.michel@darkroom.fr', '1990-07-27', 'Opérateur', 2),
(11, 'Roux', 'Hugo', 'admin_cipher', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'hugo.roux@cipherquest.fr', '1988-09-04', 'Admin', 5),
(12, 'Fournier', 'Lea', 'gm_cipher_1', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'lea.fournier@cipherquest.fr', '1997-01-16', 'Gamemaster', 3),
(13, 'Girard', 'Maxime', 'gm_cipher_2', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'maxime.girard@cipherquest.fr', '1995-04-28', 'Gamemaster', 3),
(14, 'Andre', 'Camille', 'operateur_cipher_1', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'camille.andre@cipherquest.fr', '1991-08-30', 'Opérateur', 3),
(15, 'Mercier', 'Nathan', 'operateur_cipher_2', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'nathan.mercier@cipherquest.fr', '1992-10-22', 'Opérateur', 3),
(16, 'Lambert', 'Eva', 'admin_neoroom', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'eva.lambert@neoroom.fr', '1987-06-12', 'Admin', 5),
(17, 'Bonnet', 'Louis', 'gm_neoroom_1', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'louis.bonnet@neoroom.fr', '1994-03-11', 'Gamemaster', 4),
(18, 'Francois', 'Chloe', 'gm_neoroom_2', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'chloe.francois@neoroom.fr', '1998-05-02', 'Gamemaster', 4),
(19, 'Perrin', 'Antoine', 'operateur_neoroom_1', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'antoine.perrin@neoroom.fr', '1993-09-17', 'Opérateur', 4),
(20, 'Faure', 'Manon', 'operateur_neoroom_2', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'manon.faure@neoroom.fr', '1996-12-08', 'Opérateur', 4),
(26, 'Martin', 'Lucas', 'admin_enigma', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'lucas.martin@enigmaescape.fr', '1990-01-15', 'Admin', 5),
(27, 'Durand', 'Emma', 'gm_enigma_1', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'emma.durand@enigmaescape.fr', '1995-04-20', 'Gamemaster', 1),
(28, 'Petit', 'Leo', 'gm_enigma_2', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'leo.petit@enigmaescape.fr', '1993-08-11', 'Gamemaster', 1),
(29, 'Bernard', 'Julie', 'operateur_enigma_1', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'julie.bernard@enigmaescape.fr', '1994-06-18', 'Opérateur', 1),
(30, 'Morel', 'Thomas', 'operateur_enigma_2', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'thomas.morel@enigmaescape.fr', '1991-02-10', 'Opérateur', 1),
(31, 'Robert', 'Sarah', 'admin_darkroom', '$2y$10$5hsQ1HHz222WBwELNGyoyO28x2v3pmPWUUkoVHEmeJptbxkgKXLsi', 'sarah.robert@darkroom.fr', '1989-11-09', 'Admin', 5);

-- --------------------------------------------------------

--
-- Structure de la table `valider`
--

CREATE TABLE `valider` (
  `idEtape` int(11) NOT NULL,
  `idDispositif` int(11) NOT NULL,
  `mesure` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `valider`
--

INSERT INTO `valider` (`idEtape`, `idDispositif`, `mesure`) VALUES
(1, 1, '55'),
(1, 5, 'On'),
(2, 2, '1.0'),
(2, 6, 'On'),
(3, 3, '20'),
(3, 7, 'On'),
(4, 9, 'On'),
(4, 10, '15'),
(5, 7, 'On'),
(5, 10, '18'),
(6, 11, '45'),
(6, 12, 'On'),
(7, 13, 'On'),
(7, 16, '60'),
(8, 14, '20'),
(8, 15, '25'),
(9, 17, 'On'),
(9, 18, 'On'),
(10, 19, 'On'),
(10, 20, '18'),
(11, 21, '48'),
(11, 22, 'On'),
(12, 23, '25'),
(12, 24, '23.7'),
(13, 25, '1.4'),
(13, 26, 'On'),
(14, 27, 'On'),
(14, 28, 'On'),
(15, 29, 'On'),
(15, 30, '19'),
(16, 31, '60'),
(16, 32, 'On'),
(17, 33, '28'),
(17, 34, '26.1'),
(18, 35, '0.8'),
(18, 36, 'On'),
(19, 37, 'Off'),
(19, 38, 'On'),
(20, 39, '31'),
(20, 40, 'On'),
(21, 41, '55'),
(21, 42, 'Off'),
(22, 43, '22'),
(22, 44, '-4'),
(23, 45, '71'),
(23, 46, 'On'),
(24, 47, 'On'),
(24, 48, 'Off'),
(25, 49, '16'),
(25, 50, 'On'),
(26, 51, '43'),
(26, 52, 'On'),
(27, 53, '41'),
(27, 54, '24.9'),
(28, 55, 'On'),
(28, 56, '58'),
(29, 57, 'On'),
(29, 58, 'On'),
(30, 59, 'On'),
(30, 60, '35'),
(31, 61, '72'),
(31, 62, 'Off'),
(32, 63, 'On'),
(32, 64, '27.0'),
(33, 65, '1.2'),
(33, 66, '14'),
(34, 67, 'Off'),
(34, 68, 'On'),
(35, 69, 'On'),
(35, 70, '17'),
(36, 71, '69'),
(36, 72, 'Off'),
(37, 73, '39'),
(37, 74, '21.5'),
(38, 75, 'On'),
(38, 76, 'On'),
(39, 77, 'On'),
(39, 78, '23'),
(40, 79, '65'),
(40, 80, 'On'),
(41, 81, '89'),
(41, 82, 'On'),
(42, 83, '52'),
(42, 84, '101'),
(43, 85, '45'),
(43, 86, 'On'),
(44, 87, 'On'),
(44, 88, 'On'),
(45, 89, '61'),
(45, 90, 'Off'),
(46, 91, '34'),
(46, 92, 'On'),
(47, 93, '20'),
(47, 94, '28.5'),
(48, 95, '2.1'),
(48, 96, 'On'),
(49, 97, 'Off'),
(49, 98, 'On'),
(50, 99, '18'),
(50, 100, 'On'),
(51, 101, '48'),
(51, 102, 'On'),
(52, 103, '22'),
(52, 104, '1.8'),
(53, 105, '26'),
(53, 106, 'On'),
(54, 107, 'On'),
(54, 108, 'On'),
(55, 109, '19'),
(55, 110, 'On'),
(56, 111, '18'),
(56, 112, 'On'),
(57, 113, '11'),
(57, 114, '16.5'),
(58, 115, '82'),
(58, 116, 'On'),
(59, 117, 'On'),
(59, 118, 'Off'),
(60, 119, '15'),
(60, 120, 'On'),
(61, 121, '26'),
(61, 122, 'Off'),
(62, 123, '37'),
(62, 124, '12.2'),
(63, 125, '0.4'),
(63, 126, 'On'),
(64, 127, 'Off'),
(64, 128, 'On'),
(65, 129, '19'),
(65, 130, 'Off'),
(66, 131, '9'),
(66, 132, 'On'),
(67, 133, '29'),
(67, 134, '31.4'),
(68, 135, '67'),
(68, 136, 'On'),
(69, 137, 'On'),
(69, 138, 'Off'),
(70, 139, '14'),
(70, 140, 'On'),
(71, 141, '76'),
(71, 142, 'Off'),
(72, 143, '45'),
(72, 144, '18.3'),
(73, 145, '1.8'),
(73, 146, 'On'),
(74, 147, 'On'),
(74, 148, 'On'),
(75, 149, '39'),
(75, 150, 'On'),
(76, 151, '82'),
(76, 152, 'On'),
(77, 153, '27'),
(77, 154, '20.8'),
(78, 155, '55'),
(78, 156, 'On'),
(79, 157, 'Off'),
(79, 158, 'On'),
(80, 159, '42'),
(80, 160, 'On'),
(81, 161, '61'),
(81, 162, 'Off'),
(82, 163, '51'),
(82, 164, '19.2'),
(83, 165, '1.9'),
(83, 166, 'On'),
(84, 167, 'On'),
(84, 168, 'Off'),
(85, 169, '34'),
(85, 170, 'On'),
(86, 171, '14'),
(86, 172, 'On'),
(87, 173, '47'),
(87, 174, '17.1'),
(88, 175, '2.1'),
(88, 176, 'On'),
(89, 177, 'Off'),
(89, 178, 'On'),
(90, 179, '36'),
(90, 180, 'On'),
(91, 181, '91'),
(91, 182, 'Off'),
(92, 183, '58'),
(92, 184, '25.7'),
(93, 185, '2.7'),
(93, 186, 'On'),
(94, 187, 'On'),
(94, 188, 'Off'),
(95, 189, '49'),
(95, 190, 'On'),
(96, 191, '91'),
(96, 192, 'Off'),
(97, 193, '58'),
(97, 194, '25.7'),
(98, 195, '2.7'),
(98, 196, 'On'),
(99, 197, 'On'),
(99, 198, 'Off'),
(100, 199, '49'),
(100, 200, 'On');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `communiquer`
--
ALTER TABLE `communiquer`
  ADD PRIMARY KEY (`IdSalle_1`,`IdSalle_2`),
  ADD KEY `IdSalle_2` (`IdSalle_2`);

--
-- Index pour la table `dispositif`
--
ALTER TABLE `dispositif`
  ADD PRIMARY KEY (`idDispositif`),
  ADD UNIQUE KEY `idxDomoticz` (`idxDomoticz`),
  ADD KEY `IdSalle` (`IdSalle`);

--
-- Index pour la table `etape`
--
ALTER TABLE `etape`
  ADD PRIMARY KEY (`idEtape`),
  ADD KEY `IdJeu` (`IdJeu`),
  ADD KEY `IdSalle` (`IdSalle`);

--
-- Index pour la table `etatsession`
--
ALTER TABLE `etatsession`
  ADD PRIMARY KEY (`IdSession`),
  ADD KEY `idUtilisateur` (`idUtilisateur`),
  ADD KEY `IdJeu` (`IdJeu`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`IdJeu`),
  ADD KEY `IdOperateur` (`IdOperateur`);

--
-- Index pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD PRIMARY KEY (`idMesure`),
  ADD KEY `idDispositif` (`idDispositif`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`IdSalle`),
  ADD KEY `IdJeu` (`IdJeu`);

--
-- Index pour la table `societe`
--
ALTER TABLE `societe`
  ADD PRIMARY KEY (`IdOperateur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`),
  ADD UNIQUE KEY `pseudo` (`pseudo`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `IdOperateur` (`IdOperateur`);

--
-- Index pour la table `valider`
--
ALTER TABLE `valider`
  ADD PRIMARY KEY (`idEtape`,`idDispositif`),
  ADD KEY `idDispositif` (`idDispositif`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `dispositif`
--
ALTER TABLE `dispositif`
  MODIFY `idDispositif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT pour la table `etape`
--
ALTER TABLE `etape`
  MODIFY `idEtape` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `etatsession`
--
ALTER TABLE `etatsession`
  MODIFY `IdSession` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `IdJeu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `mesure`
--
ALTER TABLE `mesure`
  MODIFY `idMesure` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `IdSalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT pour la table `societe`
--
ALTER TABLE `societe`
  MODIFY `IdOperateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `idUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `communiquer`
--
ALTER TABLE `communiquer`
  ADD CONSTRAINT `communiquer_ibfk_1` FOREIGN KEY (`IdSalle_1`) REFERENCES `salle` (`IdSalle`) ON DELETE CASCADE,
  ADD CONSTRAINT `communiquer_ibfk_2` FOREIGN KEY (`IdSalle_2`) REFERENCES `salle` (`IdSalle`) ON DELETE CASCADE;

--
-- Contraintes pour la table `dispositif`
--
ALTER TABLE `dispositif`
  ADD CONSTRAINT `dispositif_ibfk_1` FOREIGN KEY (`IdSalle`) REFERENCES `salle` (`IdSalle`) ON DELETE CASCADE;

--
-- Contraintes pour la table `etape`
--
ALTER TABLE `etape`
  ADD CONSTRAINT `etape_ibfk_1` FOREIGN KEY (`IdJeu`) REFERENCES `jeu` (`IdJeu`) ON DELETE CASCADE,
  ADD CONSTRAINT `etape_ibfk_2` FOREIGN KEY (`IdSalle`) REFERENCES `salle` (`IdSalle`) ON DELETE CASCADE;

--
-- Contraintes pour la table `etatsession`
--
ALTER TABLE `etatsession`
  ADD CONSTRAINT `etatsession_ibfk_1` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `etatsession_ibfk_2` FOREIGN KEY (`IdJeu`) REFERENCES `jeu` (`IdJeu`) ON DELETE SET NULL;

--
-- Contraintes pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD CONSTRAINT `jeu_ibfk_1` FOREIGN KEY (`IdOperateur`) REFERENCES `societe` (`IdOperateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `mesure`
--
ALTER TABLE `mesure`
  ADD CONSTRAINT `mesure_ibfk_1` FOREIGN KEY (`idDispositif`) REFERENCES `dispositif` (`idDispositif`) ON DELETE CASCADE;

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`IdJeu`) REFERENCES `jeu` (`IdJeu`) ON DELETE CASCADE;

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`IdOperateur`) REFERENCES `societe` (`IdOperateur`) ON DELETE CASCADE;

--
-- Contraintes pour la table `valider`
--
ALTER TABLE `valider`
  ADD CONSTRAINT `valider_ibfk_1` FOREIGN KEY (`idEtape`) REFERENCES `etape` (`idEtape`) ON DELETE CASCADE,
  ADD CONSTRAINT `valider_ibfk_2` FOREIGN KEY (`idDispositif`) REFERENCES `dispositif` (`idDispositif`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

