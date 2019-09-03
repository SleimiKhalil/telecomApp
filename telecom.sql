-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 20 août 2019 à 16:52
-- Version du serveur :  10.1.25-MariaDB
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `telecom`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) NOT NULL,
  `id_ligne` int(12) NOT NULL,
  `ref_demande` varchar(12) NOT NULL,
  `nom_clt` varchar(20) NOT NULL,
  `itineraire` varchar(50) NOT NULL,
  `brin` text NOT NULL,
  `date_commision` date NOT NULL,
  `adresse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `id_ligne`, `ref_demande`, `nom_clt`, `itineraire`, `brin`, `date_commision`, `adresse`) VALUES
(1, 1234, 'test', 'test', 'test', 'test', '2019-08-21', 'test'),
(2, 2558, 'test', 'test', 'test', 'test', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Structure de la table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `salt`) VALUES
(0, 'root', 'root', '49afb0e6a8346cda141d60c2d5977c3f1659a4f0c64497a7ef9198fd9d98165164256d876a17808351322e9be3a52f3fa9b6ea79876dc15b1eb22d8c0473fdb0', '2ba939692ff2ddb6ffc993b6f847fd553dc597846e32253e769439a53e5898b568793a48d5d71d299ebf2caae6e23bc22fbe95331b6dedba0333e21bc4f1dd0d'),
(8, 'test', 'test', '78c9367833e98c3d40666b12951295f2b5f5a49ea03ea086e304b7df5afcec8ac4a49ff20a52afec8d2351dfaaaf7a02104e5e34a9b62f293d73680f0b57647f', 'be9575bf5e84894e1a4960e39b0ced03110f842ab84bb986eb6f81947911d1138c4ef6fee531403bf67bca681b05b12025c60f4462a7942e718bc76842c0d278');

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `id` int(10) NOT NULL,
  `from_ctn` varchar(20) DEFAULT NULL,
  `to_ctn` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`id`, `from_ctn`, `to_ctn`) VALUES
(1, 'Belvédère', 'Belvédère');

-- --------------------------------------------------------

--
-- Structure de la table `telecom`
--

CREATE TABLE `telecom` (
  `id_stock` int(11) NOT NULL,
  `client` varchar(20) DEFAULT NULL,
  `fibre` varchar(20) DEFAULT NULL,
  `options` varchar(20) DEFAULT NULL,
  `num_brain` varchar(20) DEFAULT NULL,
  `nom_equipement` varchar(20) DEFAULT NULL,
  `slot` varchar(20) DEFAULT NULL,
  `port` varchar(20) DEFAULT NULL,
  `note` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `telecom`
--
ALTER TABLE `telecom`
  ADD PRIMARY KEY (`id_stock`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `telecom`
--
ALTER TABLE `telecom`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
