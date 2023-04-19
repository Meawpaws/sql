-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 avr. 2023 à 23:31
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
(1, 'dog', 'for dog'),
(2, 'cat', 'for cat'),
(3, 'bedBrackets', 'bed et brackets'),
(4, 'Krokette', 'Krokettep pour les chiens et les chats');

-- --------------------------------------------------------

--
-- Structure de la table `checkout`
--

CREATE TABLE `checkout` (
  `id_u` int(11) NOT NULL,
  `priceCheckedOut` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'p-6-2.jpg', 11),
(2, 'p-6-3.jpg', 11),
(3, 'p-6-4.jpg', 11),
(4, 'p-6-5.jpg', 11),
(5, 'p-2-2.jpg', 12),
(6, 'p-2-3.jpg', 12),
(7, 'p-2-4.jpg', 12),
(8, 'p-2-5.jpg', 12),
(9, 'p-1-2.jpg', 13),
(10, 'p-1-3.jpg', 13),
(11, 'p-1-4.jpg', 13),
(12, 'p-1-5.jpg', 13),
(13, 'p-4-2.jpg', 14),
(14, 'p-4-3.jpg', 14),
(15, 'p-3-2.jpg', 15),
(16, 'p-3-3.jpg', 15),
(17, 'p-3-4.jpg', 15),
(18, 'p-3-5.jpg', 15),
(19, 'p-5-2.jpg', 16),
(20, 'p-5-3.jpg', 16),
(21, 'p-7-2.jpg', 17),
(22, 'p-7-3.jpg', 17),
(23, 'p-7-4.jpg', 17),
(24, 'p-7-5.jpg', 17),
(25, 'p-8-2.jpg', 18),
(26, 'p-8-3.jpg', 18),
(27, 'p-8-4.jpg', 18),
(28, 'p-8-5.jpg', 18),
(29, 'p-9-2.jpg', 19),
(30, 'p-9-3.jpg', 19),
(31, 'p-9-4.jpg', 19),
(32, 'p-9-5.jpg', 19),
(33, 'p-10-2.jpg', 20),
(34, 'p-10-3.jpg', 20),
(35, 'p-11-2.jpg', 21),
(36, 'p-11-3.jpg', 21),
(37, 'p-11-4.jpg', 21),
(38, 'p-11-5.jpg', 21),
(39, 'p-12-2.jpg', 22),
(40, 'p-12-3.jpg', 22);

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
(11, 'Double Bande Anti-griffes', 7, 'Protection de Canapé', 'p-6-1.jpg', 2),
(12, 'TRUELOVE', 38, 'Harnais pour animal de compagnie', 'p-2-1.jpg', 1),
(13, 'Laisse de chien durable', 5, 'rétractable automatiquement,', 'p-1-1.jpg', 1),
(14, 'Hibou surélevé', 12, 'réglable, à faible hauteur', 'p-4-1.jpg', 1),
(15, 'Collier de chien unisexe', 4, 'collier de chien personnalisé', 'p-3-1.jpg', 1),
(16, 'Jouet Intelligent OVNI', 25, 'pour Chat, Entraînement à la Capture', 'p-5-1.jpg', 2),
(17, 'brosse autonettoyante', 1, 'Masseur pour chats', 'p-7-1.jpeg', 2),
(18, 'Baguette mains libres', 1, 'oiseau/plume chat avec cloche ventouse puissante', 'p-8-1.jpg', 2),
(19, 'Lit Confortable', 18, 'Mir pour Animaux de Compagnie,', 'p-9-1.jpg', 3),
(20, 'Panier pour dormir', 11, 'profondément en hiver,', 'p-10-1.jpg', 3),
(21, 'Tapis rafraîchissant', 9, 'accessoire d\'été', 'p-11-1.jpg.jpg', 3),
(22, 'Maison pliable', 21, 'lit grotte, Chihuahua, panier', 'p-12-1.jpg', 3);

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
(1, 'marouane', 'bouchettoy', 'Admin', 'admin@gmail.com', '$2y$10$jQsLpP6Dwo6ET8NJvz552e/mJ/VlK9Y7ZA3IDXjCPLLeg4ENc3cke', 'avatar2.png', '0696554077', 'Rue My Youssef Residence Raha 3eme Etage Appartemment Numro 27', 46010, 'Safi', 'Morocco', 1, '2023-04-12'),
(2, 'marouane', 'bouchettoy', 'user', 'user@gmail.com', '$2y$10$jQsLpP6Dwo6ET8NJvz552e/mJ/VlK9Y7ZA3IDXjCPLLeg4ENc3cke', 'me.png', '0696554077', 'Rue My Youssef Residence Raha 3eme Etage Appartemment Numro 27', 46010, 'Safi', 'Morocco', 0, '2023-04-13');

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
  MODIFY `id_card` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `commentstar`
--
ALTER TABLE `commentstar`
  MODIFY `id_cs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `picturesproduct`
--
ALTER TABLE `picturesproduct`
  MODIFY `id_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
