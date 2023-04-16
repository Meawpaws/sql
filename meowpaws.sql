-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 16 avr. 2023 à 22:44
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
  `id_card` int(11) NOT NULL,
  `id_u` int(11) NOT NULL,
  `id_p` int(11) NOT NULL,
  `quantité` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id_c` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id_c`, `cname`, `Description`) VALUES
(1, 'dog', ''),
(2, 'cat', ''),
(3, 'bedBrackets', '');

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
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(12) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `telephone`, `message`) VALUES
(1, 'marouane bouchettoy', 'uanemaro216@gmail.com', '0696554077', 'hjk'),
(2, 'marouane bouchettoy', 'uanemaro216@gmail.com', '', 'sqrf'),
(3, 'marouane bouchettoy', 'uanemaro216@gmail.com', '', 'sqrf'),
(4, 'marouane bouchettoy', 'uanemaro216@gmail.com', '', 'sqrf');

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

--
-- Déchargement des données de la table `picturesproduct`
--

INSERT INTO `picturesproduct` (`id_i`, `image`, `id_p`) VALUES
(65, 'i-1.svg', 6),
(66, 'i-2.svg', 6),
(67, 'i-3.svg', 6),
(68, 'item.svg', 6),
(69, 'i-1.svg', 5),
(70, 'i-3.svg', 5),
(71, 'i-1.svg', 9),
(72, 'i-2.svg', 9),
(73, 'i-3.svg', 9),
(74, 'item.svg', 9);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id_p` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `imagePricipal` text NOT NULL,
  `id_c` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id_p`, `pname`, `price`, `description`, `imagePricipal`, `id_c`) VALUES
(5, 'shoses', 12, 'Lorem ipsum dolor sit amet adipisicing elit. Maxime mollitia,', 'i-3.svg', 2),
(6, 'Melyssa Stout', 103, 'Assumenda ut volupta', 'i-3.svg', 2),
(7, 'Melyssa Stout', 103, 'Assumenda ut volupta', 'i-3.svg', 2),
(8, 'Blythe Sargent', 606, 'Nam est sunt molest', 'item.svg', 1),
(9, 'Maile Lloyd', 914, 'Pariatur Laboriosam', 'i-3.svg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_u` int(11) NOT NULL,
  `name` text NOT NULL,
  `prenom` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar_user` text NOT NULL,
  `number` varchar(10) NOT NULL,
  `adress` text NOT NULL,
  `postcode` int(11) NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = client | 1 = admin',
  `added_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_u`, `name`, `prenom`, `username`, `email`, `password`, `avatar_user`, `number`, `adress`, `postcode`, `State`, `Country`, `role`, `added_at`) VALUES
(1, '', '', 'marouaneAdmin', 'admin@gmail.com', '$2y$10$hVf4jFS9/gsDSHnu0l6z.eaLoPxhd5FFAF/hu3jJERL.BxUgIzk.m', 'avatar.png', '', '', 0, '', '', 1, '2023-04-12'),
(13, 'Tarik Price', 'Atque in deserunt at', 'MAROUANE', 'user@gmail.com', '$2y$10$W2HTxhAnUJGTZ2j9FvmTN.fndJJcnEY6Wm5NY38SczKutsLJWE/A.', 'avatar.png', '50', 'Explicabo Id dolor ', 0, 'Voluptatem repudiand', 'Nam quia minim assum', 0, '2023-04-13'),
(14, 'Cadman Hester', 'Molestiae qui rem de', 'pibus', 'ziwepu@mailinator.com', '1234', 'avatar.png', '828', 'Ex animi non commod', 0, 'Et dolor lorem nostr', 'Modi ipsam voluptas ', 1, '2023-04-13'),
(15, 'Christine Arnold', 'In vero dignissimos ', 'qozekysiga', 'zibyzanid@mailinator.com', 'Pa$$w0rd!', 'avatar.png', '780', 'Cumque aliquam ab il', 0, 'Proident id velit a', 'Beatae consectetur ', 1, '2023-04-13');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id_card`),
  ADD KEY `card_user` (`id_u`),
  ADD KEY `card_product` (`id_p`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_c`),
  ADD UNIQUE KEY `cname` (`cname`);

--
-- Index pour la table `commentstar`
--
ALTER TABLE `commentstar`
  ADD PRIMARY KEY (`id_cs`),
  ADD KEY `cs_user` (`id_u`),
  ADD KEY `cs_product` (`id_p`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id_u`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `card`
--
ALTER TABLE `card`
  MODIFY `id_card` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `commentstar`
--
ALTER TABLE `commentstar`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `picturesproduct`
--
ALTER TABLE `picturesproduct`
  MODIFY `id_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
