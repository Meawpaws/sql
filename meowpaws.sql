-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 11 avr. 2023 à 18:02
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

--
-- Déchargement des données de la table `card`
--

INSERT INTO `card` (`id_card`, `id_u`, `id_p`, `quantité`, `price`) VALUES
(1, 1, 2, 2, 24),
(2, 1, 2, 1, 12),
(3, 1, 2, 9, 109),
(4, 1, 2, 1, 12),
(5, 5, 4, 1, 12),
(6, 5, 4, 1, 12),
(7, 1, 4, 1, 11);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id_c` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id_c`, `cname`) VALUES
(1, 'dog'),
(2, 'cat'),
(3, 'bedBrackets');

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

--
-- Déchargement des données de la table `commentstar`
--

INSERT INTO `commentstar` (`id_cs`, `comment`, `star`, `id_u`, `id_p`) VALUES
(1, 'fbsdvdqsv', 4, 1, 2),
(2, 'fbsdvdqsv', 4, 2, 2),
(3, 'fbsdvdqsvdgwxf', 4, 1, 2),
(4, 'fbsdvdqsv', 4, 2, 2),
(5, 'fbsdvdqsv', 3, 1, 2),
(6, 'fbsdvdqsv', 3, 1, 2),
(7, 'fbsdvdqsv', 1, 1, 2),
(8, 'fbsdvdqsv', 5, 1, 2),
(9, 'fbsdvdqsv', 5, 1, 2),
(10, 'ldsgndskf', 4, 1, 2),
(11, 'reftgyhjkl', 4, 1, 2),
(12, 'reftgyhjkl', 4, 1, 2),
(13, 'reftgyhjkl', 4, 1, 2),
(14, 'reftgyhjkl', 4, 1, 2),
(15, 'reftgyhjkl', 4, 1, 2),
(16, 'reftgyhjkl', 4, 1, 2),
(17, 'reftgyhjkl', 4, 1, 2),
(18, 'reftgyhjkl', 4, 1, 2),
(19, 'reftgyhjkl', 4, 1, 2),
(20, 'reftgyhjkl', 4, 1, 2),
(21, 'reftgyhjkl', 4, 1, 2),
(22, 'reftgyhjkl', 4, 1, 2),
(23, 'reftgyhjkl', 4, 1, 2),
(24, 'reftgyhjkl', 4, 1, 2),
(25, 'reftgyhjkl', 4, 1, 2),
(26, 'reftgyhjkl', 4, 1, 2),
(27, 'reftgyhjkl', 4, 1, 2),
(28, 'reftgyhjkl', 4, 1, 2),
(29, 'reftgyhjkl', 4, 1, 2),
(30, 'sdfgqrsdf', 5, 1, 2),
(31, 'xwcxsc', 3, 1, 2),
(32, 'xwcxscdg', 5, 1, 2),
(33, 'sdfsd', 4, 1, 2),
(34, 'cvdsq', 5, 1, 2),
(35, 'cvdsq', 5, 1, 2),
(36, 'cvdsq', 5, 1, 2),
(37, 'cvdsq', 5, 1, 2),
(38, 'cvdsq', 5, 1, 2),
(39, 'cvdsq', 5, 1, 2),
(40, 'cvdsq', 5, 1, 2),
(41, 'cvdsq', 5, 1, 2),
(42, 'cvdsq', 5, 1, 2),
(43, 'cvdsq', 5, 1, 2),
(44, 'cvdsq', 5, 1, 2),
(45, 'cvdsq', 5, 1, 2),
(46, 'cvdsq', 5, 1, 2),
(47, 'cvdsq', 5, 1, 2),
(48, 'cvdsq', 5, 1, 2),
(49, 'feFD', 5, 1, 2),
(50, 'XWFSD', 2, 1, 2),
(51, 'xcfqdf', 5, 1, 2),
(52, 'sdfghjkl\n', 4, 1, 2),
(53, 'rygerzr', 4, 1, 2),
(54, 'xcsdf', 3, 1, 2),
(55, 'dfqergfqe', 5, 1, 2),
(56, 'dsgsdfg', 3, 1, 2),
(57, 'dsfdqf', 4, 1, 2),
(58, 'dsfdqfsdf', 4, 1, 2),
(59, 'sdf', 4, 1, 2),
(60, 'cxfb', 4, 1, 2),
(61, 'test review', 3, 5, 3),
(62, 'reftgyhjkl', 4, 1, 2),
(63, 'dsqgfg', 3, 5, 3),
(64, 'dsqgfg', 3, 5, 3),
(65, 'dsqgfg', 3, 5, 3),
(66, 'csvq', 4, 5, 3),
(67, 'dsqgfg', 3, 5, 3),
(68, 'dfrzegf', 4, 5, 3),
(69, 'erf', 4, 5, 3),
(70, 'dzfrz', 4, 5, 3),
(71, 'reftgyhjkl', 4, 1, 2),
(72, 'reftgyhjkl', 4, 1, 2),
(73, 'reftgyhjkl', 4, 1, 2),
(74, 'zdza', 4, 5, 3);

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

--
-- Déchargement des données de la table `picturescommentstar`
--

INSERT INTO `picturescommentstar` (`image`, `id_cs`) VALUES
('dzxdsxsx.dxsx', 11),
('dzxdsxsx.dxsx', 11),
('dzxdsxsx.dxsx', 26),
('dzxdsxsx.dxsx', 26),
('dzxdsxsx.dxsx', 27),
('dzxdsxsx.dxsx', 27),
('dzxdsxsx.dxsx', 28),
('dzxdsxsx.dxsx', 28),
('dzxdsxsx.dxsx', 29),
('dzxdsxsx.dxsx', 29),
('dzxdsxsx.dxsx', 62),
('dzxdsxsx.dxsx', 62),
('i-1.svg', 64),
('i-2.svg', 64),
('i-3.svg', 64),
('i-1.svg', 65),
('i-2.svg', 65),
('i-3.svg', 65),
('i-1.svg', 67),
('i-2.svg', 67),
('i-3.svg', 67),
('dzxdsxsx.dxsx', 71),
('dzxdsxsx.dxsx', 71),
('dzxdsxsx.dxsx', 73),
('dzxdsxsx.dxsx', 73),
('i-1.svg', 74),
('i-2.svg', 74),
('i-3.svg', 74);

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
(1, 'i-1.svg', 2),
(2, 'i-2.svg', 2);

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
(2, 'shoses', 12, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\n        molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\n        numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\n        optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\n        obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\n        nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\n        tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\n        quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos \n        sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam\n        recusandae alias error harum maxime adipisci amet laborum.', 'i-1.svg', 1),
(3, 'shoses', 12, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\n        molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\n        numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\n        optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\n        obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\n        nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\n        tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\n        quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos \n        sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam\n        recusandae alias error harum maxime adipisci amet laborum.', 'i-2.svg', 2),
(4, 'shoses', 12, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\n        molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\n        numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\n        optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\n        obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\n        nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\n        tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\n        quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos \n        sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam\n        recusandae alias error harum maxime adipisci amet laborum.', 'i-1.svg', 3),
(5, 'shoses', 12, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\n        molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\n        numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\n        optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\n        obcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\n        nihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\n        tenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\n        quia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos \n        sapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam\n        recusandae alias error harum maxime adipisci amet laborum.', 'i-2.svg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_u` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar_user` text NOT NULL,
  `number` varchar(10) NOT NULL,
  `adress` text NOT NULL,
  `postcode` int(11) NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 = client | 1 = admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_u`, `username`, `email`, `password`, `avatar_user`, `number`, `adress`, `postcode`, `State`, `Country`, `role`) VALUES
(1, 'marouane', 'admin@gmail.com', '$2y$10$0zrMz4DVyH5D30hPV5VevuQ6yHjZ1Tcrr56TFYcULMd.Ib1cM8LwS', 'avatar.png', '', '', 0, '', '', 1),
(2, 'marouane user', 'user@gmail.com', '$2y$10$0zrMz4DVyH5D30hPV5VevuQ6yHjZ1Tcrr56TFYcULMd.Ib1cM8LwS', 'avatar.png', '', '', 0, '', '', 0),
(3, 'marouane', 'uanemaro216@@gmail.com', '$2y$10$CPvGTgxRI0Hy6Adg82XMVOSZTSG93h3s5FCz5UrvSgHVMrQjj0GvG', 'avatar.png', '', '', 0, '', '', 0),
(4, 'marouane', 'uanemaro216@gmail.com', '$2y$10$0aDfVD9NC3vyl.32G51gT.v.e33sz4PJMHF80S5rZWFa1p4JlAKgO', 'avatar.png', '', '', 0, '', '', 0),
(5, 'miwi', 'miwi@miwi.miwi', '$2y$10$GvLRocNxgwpQAAoNl/vNguBEPWAO821gApyRS6DN3iV7hpyX2z4nO', 'avatar.png', '', '', 0, '', '', 0),
(6, 'miwi', 'miwi@miwi.miwi', '$2y$10$dV3XWLLRJfuoBSEfNhD7D.fXH/UKCwgFKJyM222HE6ZWFFi3tRpwW', 'avatar.png', '', '', 0, '', '', 0),
(7, 'miwi', 'miwi@miwi.miwi', '$2y$10$LZwkKCOawqRtz0EG7DYsQObzYhI8FqDXfEP3l2A28h8eF7xpwz372', 'avatar.png', '', '', 0, '', '', 0),
(8, 'miwi', 'miwi@miwi.miwi', '$2y$10$14FFD5oNDAlqMBYBhrTGVOvclvacfguoXKNX3hX1wgeh2CLUN1bsm', 'avatar.png', '', '', 0, '', '', 0),
(9, 'mi@gmail.com', '', '$2y$10$dXspze2yvq8PC/hVETX.der2fwhGy8r/v4jRqBqoGkMHgclGDVbLG', 'avatar.png', '', '', 0, '', '', 0),
(10, 'mi', 'mi@gmail.com', '$2y$10$0zrMz4DVyH5D30hPV5VevuQ6yHjZ1Tcrr56TFYcULMd.Ib1cM8LwS', 'avatar.png', '', '', 0, '', '', 0);

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
  ADD PRIMARY KEY (`id_c`);

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
  ADD PRIMARY KEY (`id_u`);

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
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id_i` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
