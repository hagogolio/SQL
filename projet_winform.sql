-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 02 Mars 2017 à 14:48
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet_winform`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE `adherent` (
  `id_adh` int(11) NOT NULL,
  `nom_adh` varchar(50) NOT NULL,
  `prenom_adh` varchar(50) NOT NULL,
  `adresse_adh` varchar(50) NOT NULL,
  `cp_adh` int(11) NOT NULL,
  `ville_adh` varchar(50) NOT NULL,
  `tel_adh` varchar(20) NOT NULL,
  `mail_adh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`id_adh`, `nom_adh`, `prenom_adh`, `adresse_adh`, `cp_adh`, `ville_adh`, `tel_adh`, `mail_adh`) VALUES
(1, 'Treno', 'Fifi', '17 avenue de la république', 78400, 'Chatou', '01.52.26.36.30', 'phtraineau@gmail.com'),
(2, 'tesT', 'test', 'test', 78400, 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `club`
--

CREATE TABLE `club` (
  `id_club` int(11) NOT NULL,
  `adresse_club` varchar(100) NOT NULL,
  `cp_club` int(11) NOT NULL,
  `ville_club` varchar(100) NOT NULL,
  `tel_club` varchar(20) NOT NULL,
  `nom_club` varchar(100) NOT NULL,
  `site_club` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `club`
--

INSERT INTO `club` (`id_club`, `adresse_club`, `cp_club`, `ville_club`, `tel_club`, `nom_club`, `site_club`) VALUES
(1, 'tests', 78400, 'MDR', 'tes', 'test', 'test'),
(2, '78 avenue de Paris', 78400, 'Chatou', '864896', 'Tennis', 'azezaeaze'),
(3, '12 rue des Tchoins', 85201, 'Leisail', '01.12.56.89.63', 'Kaaris', 'www.Telsi.com');

-- --------------------------------------------------------

--
-- Structure de la table `lien_adh_club`
--

CREATE TABLE `lien_adh_club` (
  `id_lien` int(11) NOT NULL,
  `id_adh` int(11) NOT NULL,
  `id_club` int(11) NOT NULL,
  `test` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `lien_adh_club`
--

INSERT INTO `lien_adh_club` (`id_lien`, `id_adh`, `id_club`, `test`) VALUES
(3, 1, 1, 1),
(4, 2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ligue`
--

CREATE TABLE `ligue` (
  `id_ligue` int(10) NOT NULL,
  `nom_ligue` varchar(50) NOT NULL,
  `id_club` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ligue`
--

INSERT INTO `ligue` (`id_ligue`, `nom_ligue`, `id_club`) VALUES
(1, 'Test', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD PRIMARY KEY (`id_adh`);

--
-- Index pour la table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id_club`);

--
-- Index pour la table `lien_adh_club`
--
ALTER TABLE `lien_adh_club`
  ADD PRIMARY KEY (`id_lien`),
  ADD KEY `id_adh` (`id_adh`,`id_club`);

--
-- Index pour la table `ligue`
--
ALTER TABLE `ligue`
  ADD PRIMARY KEY (`id_ligue`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adherent`
--
ALTER TABLE `adherent`
  MODIFY `id_adh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `club`
--
ALTER TABLE `club`
  MODIFY `id_club` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `lien_adh_club`
--
ALTER TABLE `lien_adh_club`
  MODIFY `id_lien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `ligue`
--
ALTER TABLE `ligue`
  MODIFY `id_ligue` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
