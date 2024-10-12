-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : dim. 13 oct. 2024 à 01:13
-- Version du serveur : 8.0.39-0ubuntu0.22.04.1
-- Version de PHP : 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `WacCraft`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int NOT NULL,
  `id_enigme` int NOT NULL,
  `goodAnswer` tinyint(1) NOT NULL,
  `resume` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `id_enigme`, `goodAnswer`, `resume`) VALUES
(1, 1, 0, 'Axike'),
(2, 1, 1, 'Tabik?'),
(3, 1, 0, 'Chastimban'),
(4, 2, 1, 'Tabik!'),
(5, 2, 0, 'Chastimban'),
(6, 2, 0, 'Khödöö aj akhuin erkhlegch');

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_class` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp` int NOT NULL,
  `str` int NOT NULL,
  `intel` int NOT NULL,
  `agi` int NOT NULL,
  `lvl` int NOT NULL,
  `xp` int NOT NULL,
  `gold` int NOT NULL,
  `jpg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`id`, `id_user`, `id_class`, `name`, `hp`, `str`, `intel`, `agi`, `lvl`, `xp`, `gold`, `jpg`) VALUES
(1, 1, 2, 'Trinket', 100, 10, 10, 10, 1, 0, 0, 'https://static.wikia.nocookie.net/wowpedia/images/5/5d/BTNHeroBloodElfPrince.png'),
(2, 1, 8, 'Misha', 200, 25, 10, 10, 2, 1000, 100, 'https://static.wikia.nocookie.net/wowpedia/images/b/b1/BTNHeroCryptLord.png'),
(3, 3, 1, 'Spekkio', 99999, 10, 10, 10, 1, 0, 0, 'Spekkio_%28second_form%29.png'),
(4, 1, 9, 'Aminerf', 500, 300, 450, -1, 10, 20000, 4, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCy56gglUO8jQoD603gQ0L4k3MONtpxGE0ww&s'),
(5, 1, 5, 'Erikku', 5, 5, 1000, 5, 3, 100, 1000, 'https://risibank.fr/cache/medias/0/24/2499/249932/full.png'),
(6, 1, 5, 'Zodrik', 100, 100, 100, 100, 100, 100, 100, 'https://www.judgehype.com/screenshots/battlenetclient/avatars/10.jpg'),
(7, 1, 9, 'tesinge', 100, 100, 100, 100, 100, 100, 100, 'https://www.judgehype.com/screenshots/battlenetclient/avatars/10.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `character_quests`
--

CREATE TABLE `character_quests` (
  `id` int NOT NULL,
  `id_quest` int NOT NULL,
  `id_character` int NOT NULL,
  `advancement` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `character_quests`
--

INSERT INTO `character_quests` (`id`, `id_quest`, `id_character`, `advancement`) VALUES
(1, 1, 2, 2),
(6, 1, 4, 1),
(10, 1, 5, 1),
(14, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `mainStat` varchar(255) NOT NULL,
  `jpg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`id`, `name`, `mainStat`, `jpg`) VALUES
(1, 'Mountain King', 'str', 'https://static.wikia.nocookie.net/wowpedia/images/f/f5/BTNHeroMountainKing.png'),
(2, 'Blood Mage', 'intel', 'https://static.wikia.nocookie.net/wowpedia/images/5/5d/BTNHeroBloodElfPrince.png'),
(3, 'Blademaster', 'agi', 'https://static.wikia.nocookie.net/wowpedia/images/5/52/BTNHeroBlademaster.png'),
(4, 'Far Seer', 'intel', 'https://static.wikia.nocookie.net/wowpedia/images/6/63/BTNHeroFarseer.png'),
(5, 'Demon Hunter', 'agi', 'https://static.wikia.nocookie.net/wowpedia/images/f/f5/BTNHeroDemonHunter.png'),
(6, 'Priestess of the Moon', 'intel', 'https://static.wikia.nocookie.net/wowpedia/images/4/4b/BTNPriestessOfTheMoon.png'),
(7, 'Warden', 'agi', 'https://static.wikia.nocookie.net/wowpedia/images/5/58/BTNHeroWarden.png'),
(8, 'Crypt Lord', 'str', 'https://static.wikia.nocookie.net/wowpedia/images/b/b1/BTNHeroCryptLord.png'),
(9, 'Death Knight', 'str', 'https://static.wikia.nocookie.net/wowpedia/images/d/db/BTNHeroDeathKnight.png'),
(10, 'Lich', 'intel', 'https://static.wikia.nocookie.net/wowpedia/images/b/b8/BTNHeroLich.png'),
(11, 'war god', 'intel', 'https://static.wikia.nocookie.net/chrono/images/3/31/Spekkio_%28second_form%29.png');

-- --------------------------------------------------------

--
-- Structure de la table `classes_spells`
--

CREATE TABLE `classes_spells` (
  `id_class` int NOT NULL,
  `id_spell` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `classes_spells`
--

INSERT INTO `classes_spells` (`id_class`, `id_spell`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20),
(11, 21);

-- --------------------------------------------------------

--
-- Structure de la table `enigmes`
--

CREATE TABLE `enigmes` (
  `id` int NOT NULL,
  `id_step` int NOT NULL,
  `resume` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `enigmes`
--

INSERT INTO `enigmes` (`id`, `id_step`, `resume`) VALUES
(1, 1, 'Tabik?'),
(2, 2, 'Tabik?');

-- --------------------------------------------------------

--
-- Structure de la table `inventories`
--

CREATE TABLE `inventories` (
  `id` int NOT NULL,
  `id_character` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `inventories`
--

INSERT INTO `inventories` (`id`, `id_character`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `id_inventory` int NOT NULL,
  `id_item` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `inventory_items`
--

INSERT INTO `inventory_items` (`id_inventory`, `id_item`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `tierItem` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `str` int NOT NULL,
  `intel` int NOT NULL,
  `agi` int NOT NULL,
  `gold` int NOT NULL,
  `jpg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`id`, `tierItem`, `name`, `str`, `intel`, `agi`, `gold`, `jpg`) VALUES
(1, 3, 'Claws of Attack +15', 15, 15, 15, 1000, 'https://static.wikia.nocookie.net/wowpedia/images/6/6a/BTNClawsOfAttack.png'),
(2, 2, 'Claws of Attack +8', 8, 8, 8, 750, 'https://static.wikia.nocookie.net/wowpedia/images/6/6a/BTNClawsOfAttack.png'),
(3, 1, 'Claws of Attack +5', 5, 5, 5, 200, 'https://static.wikia.nocookie.net/wowpedia/images/6/6a/BTNClawsOfAttack.png'),
(4, 3, 'Belt of Giant Strength', 20, 0, 0, 1000, 'https://static.wikia.nocookie.net/wowpedia/images/7/7e/BTNBelt.png'),
(5, 3, 'Boots of Quel Thalas', 0, 0, 20, 1000, 'https://static.wikia.nocookie.net/wowpedia/images/e/ed/Inv_boots_01.png'),
(6, 3, 'Robe of the Magi', 0, 20, 0, 1000, 'https://static.wikia.nocookie.net/wowpedia/images/f/f1/BTNRobeOfTheMagi.png'),
(7, 2, 'Slippers of Agility', 0, 0, 10, 750, 'https://static.wikia.nocookie.net/wowpedia/images/8/85/BTNSlippersOfAgility.png'),
(8, 2, 'Gauntlets of Ogre Strength', 10, 0, 0, 750, 'https://static.wikia.nocookie.net/wowpedia/images/e/ef/Inv_gauntlets_04.png'),
(9, 2, 'Mantle of Intelligence', 0, 10, 0, 750, 'https://static.wikia.nocookie.net/wowpedia/images/4/47/Inv_chest_cloth_41.png'),
(10, 1, 'Hood of Cunning', 5, 5, 5, 600, 'https://static.wikia.nocookie.net/wowpedia/images/8/8f/Inv_helmet_04.png'),
(11, 3, 'Orb of Frost', 30, 30, 30, 3000, 'https://static.wikia.nocookie.net/wowpedia/images/4/4c/BTNOrbOfFrost.png');

-- --------------------------------------------------------

--
-- Structure de la table `pnjs`
--

CREATE TABLE `pnjs` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `hp` int NOT NULL,
  `str` int NOT NULL,
  `intel` int NOT NULL,
  `agi` int NOT NULL,
  `mainStat` varchar(255) NOT NULL,
  `lvl` int NOT NULL,
  `jpg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `pnjs`
--

INSERT INTO `pnjs` (`id`, `name`, `hp`, `str`, `intel`, `agi`, `mainStat`, `lvl`, `jpg`) VALUES
(1, 'Arthas', 10000, 500, 30, 20, 'str', 100, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9QU2uEroOgulwWP_6TpR3bzFm3rMJzeQ7Cg&s'),
(2, 'Peon', 50, 2, 2, 2, 'str', 1, 'https://static.wikia.nocookie.net/wowpedia/images/f/f6/BTNPeon.png'),
(3, 'Grunt', 500, 20, 10, 15, 'str', 10, 'https://static.wikia.nocookie.net/wowpedia/images/f/fa/BTNGrunt.png'),
(4, 'Frost Wyrm', 2000, 20, 70, 15, 'intel', 70, 'https://static.wikia.nocookie.net/wowpedia/images/2/22/BTNFrostWyrm.png'),
(5, 'Dryad', 300, 10, 15, 20, 'agi', 10, 'https://static.wikia.nocookie.net/wowpedia/images/7/74/BTNDryad.png'),
(6, 'Knight', 750, 30, 10, 15, 'str', 20, 'https://static.wikia.nocookie.net/wowpedia/images/9/97/BTNKnight.png');

-- --------------------------------------------------------

--
-- Structure de la table `pnj_spells`
--

CREATE TABLE `pnj_spells` (
  `id_pnj` int NOT NULL,
  `id_spell` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `pnj_spells`
--

INSERT INTO `pnj_spells` (`id_pnj`, `id_spell`) VALUES
(1, 17),
(1, 18),
(3, 5),
(4, 19),
(5, 14),
(6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `pnj_steps`
--

CREATE TABLE `pnj_steps` (
  `id_pnj` int NOT NULL,
  `id_step` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `pnj_steps`
--

INSERT INTO `pnj_steps` (`id_pnj`, `id_step`) VALUES
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `quests`
--

CREATE TABLE `quests` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `steps` int NOT NULL,
  `resume` varchar(255) NOT NULL,
  `xp` int NOT NULL,
  `tierQuest` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `quests`
--

INSERT INTO `quests` (`id`, `name`, `steps`, `resume`, `xp`, `tierQuest`) VALUES
(1, 'Beginner quests', 2, 'ZOG ZOG !\n\nPour accomplir cette quête (presque impossible), tu dois me serrer la main !', 1000, 1);

-- --------------------------------------------------------

--
-- Structure de la table `spells`
--

CREATE TABLE `spells` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `manaCost` int NOT NULL,
  `damage` int NOT NULL,
  `jpg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `spells`
--

INSERT INTO `spells` (`id`, `name`, `manaCost`, `damage`, `jpg`) VALUES
(1, 'Storm Bolt', 100, 100, 'https://static.wikia.nocookie.net/wowpedia/images/f/f8/BTNStormBolt.png'),
(2, 'Thunder Clap', 80, 60, 'https://static.wikia.nocookie.net/wowpedia/images/3/31/BTNThunderClap.png'),
(3, 'Flame Strike', 170, 220, 'https://static.wikia.nocookie.net/wowpedia/images/e/e8/BTNWallOfFire.png'),
(4, 'Pyroblast', 300, 400, 'https://static.wikia.nocookie.net/heroesofthestorm/images/f/f3/IconPyroblast.png'),
(5, 'Critical Strike', 80, 150, 'https://static.wikia.nocookie.net/wowpedia/images/a/a8/PASBTNCriticalStrike.png'),
(6, 'Bladestorm', 100, 170, 'https://static.wikia.nocookie.net/wowpedia/images/e/ed/BTNWhirlwind.png'),
(7, 'Chain Lightning', 150, 180, 'https://static.wikia.nocookie.net/wowpedia/images/e/ee/BTNChainLightning.png'),
(8, 'Earthquake', 120, 160, 'https://static.wikia.nocookie.net/wowpedia/images/8/86/BTNEarthquake.png'),
(9, 'Mana Burn', 30, 150, 'https://static.wikia.nocookie.net/wowpedia/images/c/c1/BTNManaBurn.png'),
(10, 'Immolation', 10, 80, 'https://static.wikia.nocookie.net/wowpedia/images/0/09/BTNImmolationOn.png'),
(11, 'Searing Arrows', 10, 70, 'https://static.wikia.nocookie.net/wowpedia/images/6/6e/BTNsearingarrows.gif'),
(12, 'Starfall', 200, 190, 'https://static.wikia.nocookie.net/wowpedia/images/e/ed/BTNstarfall.gif'),
(13, 'Fan of Knives', 190, 200, 'https://static.wikia.nocookie.net/wowpedia/images/c/c5/BTNFanOfKnives.png'),
(14, 'Shadow Strike', 130, 150, 'https://static.wikia.nocookie.net/wowpedia/images/a/a9/BTNShadowStrike.png'),
(15, 'Impale', 50, 105, 'https://static.wikia.nocookie.net/wowpedia/images/c/c1/BTNImpale.png'),
(16, 'Locust Swarm', 100, 170, 'https://static.wikia.nocookie.net/wowpedia/images/2/2d/BTNLocustSwarm.png'),
(17, 'Death Coil', 180, 200, 'https://static.wikia.nocookie.net/wowpedia/images/1/16/BTNDeathCoil.png'),
(18, 'Frozen Tempest', 50, 80, 'https://static.wikia.nocookie.net/allstars_gamepedia/images/e/ef/Frozen_Tempest_Icon.png'),
(19, 'Frost Nova', 150, 150, 'https://static.wikia.nocookie.net/wowpedia/images/0/04/BTNGlacier.png'),
(20, 'Death and Decay', 200, 220, 'https://static.wikia.nocookie.net/wowpedia/images/1/17/BTNDeathAndDecay.png'),
(21, 'magic', 1, 20000000, ' https://static.wikia.nocookie.net/chrono/images/3/31/Spekkio_%28second_form%29.png');

-- --------------------------------------------------------

--
-- Structure de la table `steps`
--

CREATE TABLE `steps` (
  `id` int NOT NULL,
  `id_quest` int NOT NULL,
  `number` int NOT NULL,
  `resume` varchar(255) NOT NULL,
  `xp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `steps`
--

INSERT INTO `steps` (`id`, `id_quest`, `number`, `resume`, `xp`) VALUES
(1, 1, 1, 'Tabik?', 100),
(2, 1, 2, 'Tabik!', 100);

-- --------------------------------------------------------

--
-- Structure de la table `stuffs`
--

CREATE TABLE `stuffs` (
  `id` int NOT NULL,
  `id_inventory` int NOT NULL,
  `itemslot1` int DEFAULT NULL,
  `itemslot2` int DEFAULT NULL,
  `itemslot3` int DEFAULT NULL,
  `itemslot4` int DEFAULT NULL,
  `itemslot5` int DEFAULT NULL,
  `itemslot6` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `stuffs`
--

INSERT INTO `stuffs` (`id`, `id_inventory`, `itemslot1`, `itemslot2`, `itemslot3`, `itemslot4`, `itemslot5`, `itemslot6`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `isAdmin`) VALUES
(1, 'trinket@hotmail.ca', 'imabear', 0),
(2, 'admin@admin.adm', 'admin', 1),
(3, 'laxike@wanadoo.fr', 'noob', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_enigme` (`id_enigme`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_class` (`id_class`);

--
-- Index pour la table `character_quests`
--
ALTER TABLE `character_quests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_quest` (`id_quest`),
  ADD KEY `id_character` (`id_character`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classes_spells`
--
ALTER TABLE `classes_spells`
  ADD KEY `id_class` (`id_class`),
  ADD KEY `id_spell` (`id_spell`);

--
-- Index pour la table `enigmes`
--
ALTER TABLE `enigmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_step` (`id_step`);

--
-- Index pour la table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_character` (`id_character`);

--
-- Index pour la table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD KEY `id_inventory` (`id_inventory`),
  ADD KEY `id_item` (`id_item`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pnjs`
--
ALTER TABLE `pnjs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pnj_spells`
--
ALTER TABLE `pnj_spells`
  ADD KEY `id_pnj` (`id_pnj`),
  ADD KEY `id_spell` (`id_spell`);

--
-- Index pour la table `pnj_steps`
--
ALTER TABLE `pnj_steps`
  ADD KEY `id_pnj` (`id_pnj`),
  ADD KEY `id_step` (`id_step`);

--
-- Index pour la table `quests`
--
ALTER TABLE `quests`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `spells`
--
ALTER TABLE `spells`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `steps`
--
ALTER TABLE `steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_quest` (`id_quest`);

--
-- Index pour la table `stuffs`
--
ALTER TABLE `stuffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_inventory` (`id_inventory`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `character_quests`
--
ALTER TABLE `character_quests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `enigmes`
--
ALTER TABLE `enigmes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `pnjs`
--
ALTER TABLE `pnjs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `quests`
--
ALTER TABLE `quests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `spells`
--
ALTER TABLE `spells`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `steps`
--
ALTER TABLE `steps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `stuffs`
--
ALTER TABLE `stuffs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`id_enigme`) REFERENCES `enigmes` (`id`);

--
-- Contraintes pour la table `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `characters_ibfk_2` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id`);

--
-- Contraintes pour la table `character_quests`
--
ALTER TABLE `character_quests`
  ADD CONSTRAINT `character_quests_ibfk_1` FOREIGN KEY (`id_quest`) REFERENCES `quests` (`id`),
  ADD CONSTRAINT `character_quests_ibfk_2` FOREIGN KEY (`id_character`) REFERENCES `characters` (`id`);

--
-- Contraintes pour la table `classes_spells`
--
ALTER TABLE `classes_spells`
  ADD CONSTRAINT `classes_spells_ibfk_1` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `classes_spells_ibfk_2` FOREIGN KEY (`id_spell`) REFERENCES `spells` (`id`);

--
-- Contraintes pour la table `enigmes`
--
ALTER TABLE `enigmes`
  ADD CONSTRAINT `enigmes_ibfk_1` FOREIGN KEY (`id_step`) REFERENCES `steps` (`id`);

--
-- Contraintes pour la table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_ibfk_1` FOREIGN KEY (`id_character`) REFERENCES `characters` (`id`);

--
-- Contraintes pour la table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD CONSTRAINT `inventory_items_ibfk_1` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`),
  ADD CONSTRAINT `inventory_items_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `items` (`id`);

--
-- Contraintes pour la table `pnj_spells`
--
ALTER TABLE `pnj_spells`
  ADD CONSTRAINT `pnj_spells_ibfk_1` FOREIGN KEY (`id_pnj`) REFERENCES `pnjs` (`id`),
  ADD CONSTRAINT `pnj_spells_ibfk_2` FOREIGN KEY (`id_spell`) REFERENCES `spells` (`id`);

--
-- Contraintes pour la table `pnj_steps`
--
ALTER TABLE `pnj_steps`
  ADD CONSTRAINT `pnj_steps_ibfk_1` FOREIGN KEY (`id_pnj`) REFERENCES `pnjs` (`id`),
  ADD CONSTRAINT `pnj_steps_ibfk_2` FOREIGN KEY (`id_step`) REFERENCES `steps` (`id`);

--
-- Contraintes pour la table `steps`
--
ALTER TABLE `steps`
  ADD CONSTRAINT `steps_ibfk_1` FOREIGN KEY (`id_quest`) REFERENCES `quests` (`id`);

--
-- Contraintes pour la table `stuffs`
--
ALTER TABLE `stuffs`
  ADD CONSTRAINT `stuffs_ibfk_1` FOREIGN KEY (`id_inventory`) REFERENCES `inventories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
