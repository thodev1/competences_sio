-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 04 mars 2019 à 11:47
-- Version du serveur :  10.2.12-MariaDB
-- Version de PHP :  7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Structure de la table `activite`
--

CREATE TABLE `activite` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `libelle` text NOT NULL,
  `choix` enum('SLAM','SISR','ALL') NOT NULL DEFAULT 'ALL'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `activite`
--

INSERT INTO `activite` (`id`, `code`, `libelle`, `choix`) VALUES
(1, 'A1.1.1', 'Analyse du cahier des charges d\'un service à produire', 'ALL'),
(2, 'A1.1.2', 'Étude de l\'impact de l\'intégration d\'un service sur le système informatique', 'ALL'),
(3, 'A1.1.3', 'Étude des exigences liées à la qualité attendue d\'un service', 'ALL'),
(4, 'A1.2.1', 'Élaboration et présentation d\'un dossier de choix de solution technique', 'ALL'),
(5, 'A1.2.2', 'Rédaction des spécifications techniques de la solution retenue', 'ALL'),
(6, 'A1.2.3', 'Évaluation des risques liés à l\'utilisation d\'un service', 'ALL'),
(7, 'A1.2.4', 'Détermination des tests nécessaires à la validation d\'un service', 'ALL'),
(8, 'A1.2.5', 'Définition des niveaux d\'habilitation associés à un service', 'ALL'),
(9, 'A1.3.1', 'Test d\'intégration et d\'acceptation d\'un service', 'ALL'),
(10, 'A1.3.2', 'Définition des éléments nécessaires à la continuité d\'un service', 'ALL'),
(11, 'A1.3.3', 'Accompagnement de la mise en place d\'un nouveau service', 'ALL'),
(12, 'A1.3.4', 'Déploiement d\'un service', 'ALL'),
(13, 'A1.4.1', 'Participation à un projet', 'ALL'),
(14, 'A1.4.2', 'Évaluation des indicateurs de suivi d\'un projet et justification des écarts', 'ALL'),
(15, 'A1.4.3', 'Gestion des ressources', 'ALL'),
(16, 'A2.1.1', 'Accompagnement des utilisateurs dans la prise en main d\'un service', 'ALL'),
(17, 'A2.1.2', 'Évaluation et maintien de la qualité d\'un service', 'ALL'),
(18, 'A2.2.1', 'Suivi et résolution d\'incidents', 'ALL'),
(19, 'A2.2.2', 'Suivi et réponse à des demandes d\'assistance', 'ALL'),
(20, 'A2.2.3', 'Réponse à une interruption de service', 'ALL'),
(21, 'A2.3.1', 'Identification, qualification et évaluation d\'un problème', 'ALL'),
(22, 'A2.3.2', 'Proposition d\'amélioration d\'un service', 'ALL'),
(23, 'A3.2.1', 'Installation et configuration d\'éléments d\'infrastructure ', 'ALL'),
(24, 'A3.2.2', 'Remplacement ou mise à jour d\'éléments défectueux ou obsolètes', 'ALL'),
(25, 'A4.1.1', 'Proposition d\'une solution applicative', 'SLAM'),
(26, 'A4.1.2', 'Conception ou adaptation de l\'interface utilisateur d\'une solution applicative', 'SLAM'),
(27, 'A4.1.3', 'Conception ou adaptation d\'une base de données', 'SLAM'),
(28, 'A4.1.4', 'Définition des caractéristiques d\'une solution applicative', 'SLAM'),
(29, 'A4.1.5', 'Prototypage de composants logiciels', 'SLAM'),
(30, 'A4.1.6', 'Gestion d\'environnements de développement et de test', 'SLAM'),
(31, 'A4.1.7', 'Développement, utilisation ou adaptation de composants logiciels', 'SLAM'),
(32, 'A4.1.8', 'Réalisation des tests nécessaires à la validation d\'éléments adaptés ou développés ', 'SLAM'),
(33, 'A4.1.9', 'Rédaction d\'une documentation technique ', 'SLAM'),
(34, 'A4.1.10', ' Rédaction d\'une documentation d\'utilisation ', 'SLAM'),
(35, 'A4.2.1', 'Analyse et correction d\'un dysfonctionnement, d\'un problème de qualité de …', 'SLAM'),
(36, 'A4.2.2', 'Adaptation d\'une solution applicative aux évolutions de ses composants', 'SLAM'),
(37, 'A4.2.3', 'Réalisation des tests nécessaires à la mise en production d\'éléments mis à jour', 'SLAM'),
(38, 'A4.2.4', 'Mise à jour d\'une documentation technique', 'SLAM'),
(39, 'A5.1.1', 'Mise en place d\'une gestion de configuration', 'ALL'),
(40, 'A5.1.2', 'Recueil d\'informations sur une configuration et ses éléments', 'ALL'),
(41, 'A5.1.3', 'Suivi d\'une configuration et de ses éléments', 'ALL'),
(42, 'A5.1.4', 'Étude de propositions de contrat de service (client, fournisseur)', 'ALL'),
(43, 'A5.1.5', 'Évaluation d\'un élément de configuration ou d\'une configuration', 'ALL'),
(44, 'A5.1.6', 'Évaluation d\'un investissement informatique', 'ALL'),
(45, 'A5.2.1', 'Exploitation des référentiels, normes et standards adoptés par le prestataire', 'ALL'),
(46, 'A5.2.2', 'Veille technologique', 'ALL'),
(47, 'A5.2.3', 'Repérage des compléments de formation ou d\'auto-formation ...', 'ALL'),
(48, 'A5.2.4', 'Étude d\'une technologie, d\'un composant, d\'un outil ou d\'une méthode', 'ALL'),
(49, 'A3.3.1', 'Administration sur site ou à distance des éléments d’un réseau, de serveurs, de services et d’équipements terminaux', 'SISR'),
(50, 'A3.3.2', 'Planification des sauvegardes et gestion des restaurations', 'SISR'),
(51, 'A3.3.3', 'Gestion des identités et des habilitations', 'SISR'),
(52, 'A3.3.4', 'Automatisation des tâches d’administration', 'SISR'),
(53, 'A3.3.5', 'Gestion des indicateurs et des fichiers d’activité', 'SISR'),
(54, 'A3.1.1', 'Proposition d’une solution d’infrastructure', 'SISR'),
(55, 'A3.1.2', 'Maquettage et prototypage d’une solution d’infrastructure', 'SISR'),
(56, 'A3.1.3', 'Prise en compte du niveau de sécurité nécessaire à une infrastructure', 'SISR'),
(57, 'A3.2.3', 'Mise à jour de la documentation technique d’une solution d’infrastructure', 'SISR');

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `id` int(11) NOT NULL,
  `activite` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `libelle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`id`, `activite`, `code`, `libelle`) VALUES
(1, 18, 'C2.2.1.1', 'Résoudre l\'incident en s\'appuyant sur une base de connaissances et la documentation associée ou solliciter l\'entité compétente'),
(2, 18, 'C2.2.1.2', 'Prendre le contrôle d\'un système à distance'),
(3, 18, 'C2.1.2.3', 'Rédiger un rapport d\'incident et mémoriser l\'incident et sa résolution dans une base de connaissances'),
(4, 18, 'C2.1.2.4', 'Faire évoluer une procédure de résolution d\'incident'),
(5, 19, 'C2.2.2.1', 'Identifier le niveau d\'assistance souhaité et proposer une réponse adaptée en s\'appuyant sur une base de connaissances et sur la documentation associée ou solliciter l\'entité compétente'),
(6, 19, 'C2.2.2.2', 'Informer l\'utilisateur de la situation de sa demande'),
(7, 19, 'C2.2.2.3', 'Prendre le contrôle d\'un poste utilisateur à distance'),
(8, 19, 'C2.2.2.4', 'Mémoriser la demande d\'assistance et sa réponse dans une base de connaissances'),
(9, 20, 'C2.2.3.1', 'Appliquer la procédure de continuité du service en mode dégradé'),
(10, 20, 'C2.2.3.2', 'Appliquer la procédure de reprise du service'),
(11, 21, 'C2.3.1.1', 'Repérer une suite de dysfonctionnements récurrents d\'un service'),
(12, 21, 'C2.3.1.2', 'Identifier les causes de ce dysfonctionnement'),
(13, 21, 'C2.3.1.3', 'Qualifier le problème (contexte et environnement)'),
(14, 21, 'C2.3.1.4', 'Définir le degré d\'urgence du problème'),
(15, 21, 'C2.3.1.5', 'Évaluer les conséquences techniques du problème'),
(16, 22, 'C2.3.2.1', 'Décrire les incidences d\'un changement proposé sur le service'),
(17, 22, 'C2.3.2.2', 'Évaluer le délai et le coût de réalisation du changement proposé'),
(18, 22, 'C2.3.2.3', 'Recenser les risques techniques, humains, financiers et juridiques associés au changement proposé'),
(19, 1, 'C1.1.1.1', 'Recenser et caractériser les contextes d\'utilisation, les processus et les acteurs sur lesquels le service à produire aura un impact'),
(20, 1, 'C1.1.1.2', 'Identifier les fonctionnalités attendues du service à produire'),
(21, 1, 'C1.1.1.3', 'Préparer sa participation à une réunion : Rédiger un compte-rendu d\'entretien, de réunion'),
(22, 2, 'C1.1.2.1', 'Analyser les interactions entre services'),
(23, 2, 'C1.1.2.2', 'Recenser les composants de l\'architecture technique sur lesquels le service à produire aura un impact'),
(24, 3, 'C1.1.3.1', 'Recenser et caractériser les exigences liées à la qualité attendue du service à produire'),
(25, 3, 'C1.1.3.2', 'Recenser et caractériser les exigences de sécurité pour le service à produire'),
(26, 4, 'C1.2.1.1', 'Recenser et caractériser des solutions répondant au cahier des charges (adaptation d\'une solution existante ou réalisation d\'une nouvelle)'),
(27, 4, 'C1.2.1.2', 'Estimer le coût d\'une solution'),
(28, 4, 'C1.2.1.3', 'Rédiger un dossier de choix et un argumentaire technique'),
(29, 5, 'C1.2.2.1', 'Recenser les composants nécessaires à la réalisation de la solution retenue'),
(30, 5, 'C1.2.2.2', 'Décrire l\'implantation des différents composants de la solution et les échanges entre eux'),
(31, 5, 'C1.2.2.3', 'Rédiger les spécifications fonctionnelles et techniques de la solution retenue dans le formalisme exigé par l\'organisation'),
(32, 6, 'C1.2.3.1', 'Recenser les risques liés à une mauvaise utilisation ou à une utilisation malveillante du service'),
(33, 6, 'C1.2.3.2', 'Recenser les risques liés à un dysfonctionnement du service'),
(34, 6, 'C1.2.3.3', 'Prévoir les conséquences techniques de la non prise en compte d\'un risque'),
(35, 7, 'C1.2.4.1', 'Recenser les tests d\'acceptation nécessaires à la validation du service et les résultats attendus'),
(36, 7, 'C1.2.4.2', 'Préparer les jeux d\'essai et les procédures pour la réalisation des tests'),
(37, 8, 'C1.2.5.1', 'Recenser les utilisateurs du service, leurs rôles et leur niveau de responsabilité'),
(38, 8, 'C1.2.5.2', 'Recenser les ressources liées à l\'utilisation du service'),
(39, 8, 'C1.2.5.3', 'Proposer les niveaux d\'habilitation associés au service'),
(40, 9, 'C1.3.1.1', 'Mettre en place l\'environnement de test du service'),
(41, 9, 'C1.3.1.2', 'Tester le service'),
(42, 9, 'C1.3.1.3', 'Rédiger le rapport de test'),
(43, 10, 'C1.3.2.1', 'Identifier les éléments à sauvegarder et à journaliser pour assurer la continuité du service et la traçabilité des transactions'),
(44, 10, 'C1.3.2.2', 'Spécifier les procédures d\'alerte associées au service'),
(45, 10, 'C1.3.2.3', 'Décrire les solutions de fonctionnement en mode dégradé et les procédures de reprise du service'),
(46, 11, 'C1.3.3.1', 'Mettre en place l\'environnement de formation au nouveau service'),
(47, 11, 'C1.3.3.2', 'Informer et former les utilisateurs'),
(48, 12, 'C1.3.4.1', 'Mettre au point une procédure d\'installation de la solution'),
(49, 12, 'C1.3.4.2', 'Automatiser l\'installation de la solution'),
(50, 12, 'C1.3.4.3', 'Mettre en exploitation le service'),
(51, 13, 'C1.4.1.1', 'Établir son planning personnel en fonction des exigences et du déroulement du projet'),
(52, 13, 'C1.4.1.2', 'Rendre compte de son activité'),
(53, 14, 'C1.4.2.1', 'Suivre l\'exécution du projet'),
(54, 14, 'C1.4.2.2', 'Analyser les écarts entre temps prévu et temps consommé'),
(55, 14, 'C1.4.2.3', 'Contribuer à l\'évaluation du projet'),
(56, 15, 'C1.4.3.1', 'Recenser les ressources humaines, matérielles, logicielles et budgétaires nécessaires à l\'exécution du projet et de ses tâches personnelles'),
(57, 15, 'C1.4.3.2', 'Adapter son planning personnel en fonction des ressources disponibles'),
(58, 16, 'C2.1.1.1', 'Aider les utilisateurs dans l\'appropriation du nouveau service'),
(59, 16, 'C2.1.1.2', 'Identifier des besoins de formation complémentaires'),
(60, 16, 'C2.1.1.3', 'Rendre compte de la satisfaction des utilisateurs'),
(61, 17, 'C2.1.2.1', 'Analyser les indicateurs de qualité du service'),
(62, 17, 'C2.1.2.2', 'Appliquer les procédures d\'alerte destinées à rétablir la qualité du service'),
(63, 17, 'C2.1.2.3', 'Vérifier périodiquement le fonctionnement du service en mode dégradé et la disponibilité des éléments permettant une reprise du service'),
(64, 17, 'C2.1.2.4', 'Superviser les services et leur utilisation'),
(65, 17, 'C2.1.2.5', 'Contrôler la confidentialité et l\'intégrité des données'),
(66, 17, 'C2.1.2.6', 'Exploiter les indicateurs et les fichiers d\'audit'),
(67, 17, 'C2.1.2.7', 'Produire les rapports d\'activité demandés par les différents acteurs'),
(68, 25, 'C4.1.1.1', 'Identifier les composants logiciels nécessaires à la conception de la solution'),
(69, 25, 'C4.1.1.2', 'Estimer les éléments de coût et le délai de mise en œuvre de la solution'),
(70, 26, 'C4.1.2.1', 'Définir les spécifications de l\'interface utilisateur de la solution applicative'),
(71, 26, 'C4.1.2.2', 'Maquetter un élément de la solution applicative'),
(72, 26, 'C4.1.2.3', 'Concevoir et valider la maquette en collaboration avec des utilisateurs'),
(73, 27, 'C4.1.3.1', 'Modéliser le schéma de données nécessaire à la mise en place de la solution applicative'),
(74, 27, 'C4.1.3.2', 'Implémenter le schéma de données dans un SGBD'),
(75, 27, 'C4.1.3.3', 'Programmer des éléments de la solution applicative dans le langage d\'un SGBD'),
(76, 27, 'C4.1.3.4', 'Manipuler les données liées à la solution applicative à travers un langage de requête'),
(77, 28, 'C4.1.4.1', 'Recenser et caractériser les composants existants ou à développer utiles à la réalisation de la solution applicative dans le respect des budgets et planning prévisionnels'),
(78, 29, 'C4.1.5.1', 'Choisir les éléments de la solution à prototyper'),
(79, 29, 'C4.1.5.2', 'Développer un prototype'),
(80, 29, 'C4.1.5.3', 'Valider un prototype'),
(81, 30, 'C4.1.6.1', 'Mettre en place et exploiter un environnement de développement'),
(82, 30, 'C4.1.6.2', 'Mettre en place et exploiter un environnement de test'),
(83, 31, 'C4.1.7.1', 'Développer les éléments d\'une solution'),
(84, 31, 'C4.1.7.2', 'Créer un composant logiciel'),
(85, 31, 'C4.1.7.3', 'Analyser et modifier le code d\'un composant logiciel'),
(86, 31, 'C4.1.7.4', 'Utiliser des composants d\'accès aux données'),
(87, 31, 'C4.1.7.5', 'Mettre en place des éléments de sécurité liés à l\'utilisation d\'un composant logiciel'),
(88, 32, 'C4.1.8.1', 'Élaborer et réaliser des tests unitaires'),
(89, 32, 'C4.1.8.2', 'Mettre en évidence et corriger les écarts'),
(90, 33, 'C4.1.9.1', 'Produire ou mettre à jour la documentation technique d\'une solution applicative et de ses composants logiciels'),
(91, 34, 'C4.1.10.1', 'Rédiger la documentation d\'utilisation, une aide en ligne, une FAQ'),
(92, 34, 'C4.1.10.2', 'Adapter la documentation d\'utilisation à chaque contexte d\'utilisation'),
(93, 35, 'C4.2.1.1', 'Élaborer un jeu d\'essai permettant de reproduire le dysfonctionnement'),
(94, 35, 'C4.2.1.2', 'Repérer les composants à l\'origine du dysfonctionnement'),
(95, 35, 'C4.2.1.3', 'Concevoir les mises à jour à effectuer'),
(96, 35, 'C4.2.1.4', 'Réaliser les mises à jour'),
(97, 36, 'C4.2.2.1', 'Repérer les évolutions des composants utilisés et leurs conséquences'),
(98, 36, 'C4.2.2.2', 'Concevoir les mises à jour à effectuer'),
(99, 36, 'C4.2.2.3', 'Élaborer et réaliser les tests unitaires des composants mis à jour'),
(100, 37, 'C4.2.3.1', 'Élaborer et réaliser des tests d\'intégration et de non régression de la solution mise à jour'),
(101, 37, 'C4.2.3.2', 'Concevoir une procédure de migration et l\'appliquer dans le respect de la continuité de service'),
(102, 38, 'C4.2.4.1', 'Repérer les éléments de la documentation à mettre à jour'),
(103, 38, 'C4.2.4.2', 'Mettre à jour une documentation'),
(104, 39, 'C5.1.1.1', 'Recenser les caractéristiques techniques nécessaires à la gestion des éléments de la configuration d\'une organisation'),
(105, 39, 'C5.1.1.2', 'Paramétrer une solution de gestion des éléments d\'une configuration'),
(106, 40, 'C5.1.2.1', 'Renseigner les événements relatifs au cycle de vie d\'un élément de la configuration'),
(107, 40, 'C5.1.2.2', 'Actualiser les caractéristiques des éléments de la configuration'),
(108, 41, 'C5.1.3.1', 'Contrôler et auditer les éléments de la configuration'),
(109, 41, 'C5.1.3.2', 'Reconstituer un historique des modifications effectuées sur les éléments de la configuration'),
(110, 41, 'C5.1.3.3', 'Identifier les éléments de la configuration à modifier ou à remplacer'),
(111, 41, 'C5.1.3.4', 'Repérer les équipements obsolètes et en\r\nproposer le traitement dans le respect de la réglementation en vigueur'),
(112, 42, 'C5.1.4.1', 'Assister la maîtrise d\'ouvrage dans l\'analyse technique de la proposition de contrat'),
(113, 42, 'C5.1.4.2', 'Interpréter des indicateurs de suivi de la prestation associée à la proposition de contrat'),
(114, 42, 'C5.1.4.3', 'Renseigner les éléments permettant d\'estimer la valeur du service'),
(115, 43, 'C5.1.5.1', 'Vérifier un plan d\'amortissement'),
(116, 43, 'C5.1.5.2', 'Apprécier la valeur actuelle d\'un élément de configuration'),
(117, 44, 'C5.1.6.1', 'Renseigner les variables d\'une étude de rentabilité d\'un investissement'),
(118, 44, 'C5.1.6.2', 'Caractériser et prévoir les investissements matériels et logiciels'),
(119, 45, 'C5.2.1.1', 'Évaluer le degré de conformité des pratiques à un référentiel, à une norme ou à un standard adopté par le prestataire informatique'),
(120, 45, 'C5.2.1.2', 'Identifier et partager les bonnes pratiques à intégrer'),
(121, 46, 'C5.2.2.1', 'Définir une stratégie de recherche d\'informations'),
(122, 46, 'C5.2.2.2', 'Tenir à jour une liste de sources d\'information'),
(123, 46, 'C5.2.2.3', 'Évaluer la qualité d\'une source d\'information en fonction d\'un besoin'),
(124, 46, 'C5.2.2.4', 'Synthétiser et diffuser les résultats d\'une veille'),
(125, 47, 'C5.2.3.1', 'Identifier les besoins de formation pour mettre en œuvre une technologie, un composant, un outil ou une méthode'),
(126, 47, 'C5.2.3.2', 'Repérer l\'offre et les dispositifs de formation'),
(127, 48, 'C5.2.4.1', 'Se documenter à propos d\'une technologie, d\'un composant, d\'un outil ou d\'une méthode'),
(128, 48, 'C5.2.4.2', 'Identifier le potentiel et les limites d\'une\r\ntechnologie, d\'un composant, d\'un outil ou d\'une méthode par rapport à un service à produire'),
(129, 23, 'C3.2.1.1', 'Installer et configurer un élément d\'interconnexion, un service, un serveur, un équipement terminal utilisateur'),
(130, 23, 'C3.2.1.2', 'Installer et configurer un élément d\'infrastructure permettant d\'assurer la continuité de service, un système de régulation des éléments d\'infrastructure, un outil de métrologie, un dispositif d\'alerte'),
(131, 23, 'C3.2.1.3', 'Installer et configurer des éléments desécurité permettant d\'assurer la protection du système informatique'),
(132, 24, 'C3.2.2.1', 'Élaborer une procédure de remplacement ou de migration respectant la continuité d\'un service'),
(133, 24, 'C3.2.2.2', 'Mettre en œuvre une procédure de remplacement ou de migration'),
(134, 49, 'C3.3.1.1', 'Installer et configurer des éléments d\'administration sur site ou à distance'),
(135, 49, 'C3.3.1.2', 'Administrer des éléments d\'infrastructure sur site ou à distance'),
(136, 50, 'C3.3.2.1', 'Installer et configurer des outils de sauvegarde et de restauration'),
(137, 50, 'C3.3.2.2', 'Définir des procédures de sauvegarde et de restauration'),
(138, 50, 'C3.3.2.3', 'Appliquer des procédures de sauvegarde et de restauration'),
(139, 51, 'C3.3.3.1', 'Identifier les besoins en gestion d\'identité permettant de protéger les éléments d\'une infrastructure'),
(140, 51, 'C3.3.3.2', 'Gérer des utilisateurs et une structure organisationnelle'),
(141, 51, 'C3.3.3.3', 'Affecter des droits aux utilisateurs sur les éléments d\'une solution d\'infrastructure'),
(142, 52, 'C3.3.4.1', 'Repérer les tâches d\'administration à automatiser'),
(143, 52, 'C3.3.4.2', 'Concevoir, réaliser et mettre en place une procédure d\'automatisation'),
(144, 53, 'C3.3.5.1', 'Installer et configurer les outils nécessaires à la production d\'indicateurs d\'activité et à l\'exploitation de fichiers d\'activité'),
(145, 53, 'C3.3.5.2', 'Assurer la confidentialité des informations collectées et traitées'),
(146, 54, 'C3.1.1.1', 'Lister les composants matériels et logiciels nécessaires à la prise en charge des processus, des flux d\'information et de leur rôle'),
(147, 54, 'C3.1.1.2', 'Caractériser les éléments d\'interconnexion, les services, les serveurs et les équipements terminaux nécessaires'),
(148, 54, 'C3.1.1.3', 'Caractériser les éléments permettant d\'assurer la qualité et la sécurité des services'),
(149, 54, 'C3.1.1.4', 'Recenser les modifications et/ou les acquisitions nécessaires à la mise en place d\'une solution d\'infrastructure compatible avec le budget et le planning prévisionnels'),
(150, 54, 'C3.1.1.5', 'Caractériser les solutions d\'interconnexion utilisées entre un réseau et d\'autres réseaux internes ou externes à l\'organisation'),
(151, 55, 'C3.1.2.1', 'Concevoir une maquette de la solution'),
(152, 55, 'C3.1.2.2', 'Construire un prototype de la solution'),
(153, 55, 'C3.1.2.3', 'Préparer l\'intégration d\'un composant d\'infrastructure'),
(154, 56, 'C3.1.3.1', 'Caractériser des solutions de sécurité et en évaluer le coût'),
(155, 56, 'C3.1.3.2', 'Proposer une solution de sécurité compatible avec les contraintes techniques, financières, juridiques et organisationnelles'),
(156, 56, 'C3.1.3.3', 'Décrire une solution de sécurité et les risques couverts'),
(157, 57, 'C3.2.3.1', 'Repérer les éléments de la documentation à mettre à jour'),
(158, 57, 'C3.2.3.2', 'Mettre à jour la documentation');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activite`
--
ALTER TABLE `activite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activite` (`activite`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activite`
--
ALTER TABLE `activite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `competence_ibfk_1` FOREIGN KEY (`activite`) REFERENCES `activite` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
