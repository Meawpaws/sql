-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 28 jan. 2023 à 19:50
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `meowpaws`
--

-- --------------------------------------------------------

--
-- Structure de la table `card`
--

CREATE TABLE `card` (
  `id_u` int(11) NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id_c` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentstar`
--

CREATE TABLE `commentstar` (
  `id_cs` int(11) NOT NULL,
  `comment` text NOT NULL,
  `star` int(11) NOT NULL,
  `id_u` int(11) NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` int(10) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `picturescommentstar`
--

CREATE TABLE `picturescommentstar` (
  `image` varchar(255) NOT NULL,
  `id_cs` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `picturesproduct`
--

CREATE TABLE `picturesproduct` (
  `id_i` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id_p` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `id_c` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_u` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = client | 1 = admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `card`
--
ALTER TABLE `card`
  ADD KEY `card_user` (`id_u`),
  ADD KEY `card_product` (`id_p`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_c`);

--
-- Index pour la table `commentstar`
--
ALTER TABLE `commentstar`
  ADD PRIMARY KEY (`id_cs`),
  ADD KEY `cs_user` (`id_u`),
  ADD KEY `cs_product` (`id_p`);

--
-- Index pour la table `picturescommentstar`
--
ALTER TABLE `picturescommentstar`
  ADD KEY `picture_cs` (`id_cs`);

--
-- Index pour la table `picturesproduct`
--
ALTER TABLE `picturesproduct`
  ADD PRIMARY KEY (`id_i`),
  ADD KEY `picture_product` (`id_p`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `category_product` (`id_c`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentstar`
--
ALTER TABLE `commentstar`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `picturesproduct`
--
ALTER TABLE `picturesproduct`
  MODIFY `id_i` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_product` FOREIGN KEY (`id_p`) REFERENCES `product` (`id_p`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `card_user` FOREIGN KEY (`id_u`) REFERENCES `users` (`id_u`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `commentstar`
--
ALTER TABLE `commentstar`
  ADD CONSTRAINT `cs_product` FOREIGN KEY (`id_p`) REFERENCES `product` (`id_p`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cs_user` FOREIGN KEY (`id_u`) REFERENCES `users` (`id_u`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `picturescommentstar`
--
ALTER TABLE `picturescommentstar`
  ADD CONSTRAINT `picture_cs` FOREIGN KEY (`id_cs`) REFERENCES `commentstar` (`id_cs`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `picturesproduct`
--
ALTER TABLE `picturesproduct`
  ADD CONSTRAINT `picture_product` FOREIGN KEY (`id_p`) REFERENCES `product` (`id_p`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `category_product` FOREIGN KEY (`id_c`) REFERENCES `category` (`id_c`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
