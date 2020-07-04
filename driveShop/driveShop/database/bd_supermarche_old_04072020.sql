-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 09 juin 2020 à 12:51
-- Version du serveur :  10.1.36-MariaDB
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd_supermarche`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `idArtc` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `idCat` INT(11) NOT NULL,
  `idMrq` INT(11) NOT NULL,
  `nomArtc` VARCHAR(254) DEFAULT NULL,
  `refArtc` VARCHAR(254) DEFAULT NULL,
  `descriptionArtc` VARCHAR(254) DEFAULT NULL,
  `prixArtc` FLOAT DEFAULT NULL,
  `photoArtc` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idArtc`, `idCat`, `idMrq`, `nomArtc`, `refArtc`, `descriptionArtc`, `prixArtc`, `photoArtc`) VALUES
(1, 1, 1, 'Fraise', 'Algérie', 'barquette de 500g', 400, 'photo de fraise'),
(2, 1, 1, 'Banane', 'Martinique', 'le sachet de 5 bananes', 700, 'photo de banane'),
(3, 2, 1, 'Pommes de terre', 'Algérie', 'le filet de 1.5kg', 200, 'photo de pomme de terre'),
(4, 3, 2, 'Viande hachée', 'Algérie', 'barquette de 500g pur boeuf', 350, 'photo de viande hachée'),
(5, 6, 6, 'Pain aux céréales', 'Algérie', 'le pain de 300g', 15, 'photo de pain'),
(6, 8, 13, 'Lait demi écrémé', 'Algérie', 'la bouteille de 1L', 50, 'photo de lait'),
(7, 12, 26, 'Lessive liquide couleur', 'France', 'le bidon de 3L', 500, 'photo de lessive'),
(8, 16, 42, 'Réfrigérateur 2 porte', 'Sud Coréen', 'hygiennefresh+', 56000, 'photo de frigo'),
(9, 19, 48, 'Gel désinfectent mains', 'Algérie', 'le flacon de 80ml', 150, 'photo de gel');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCat` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `idRay` INT(11) NOT NULL,
  `nomCat` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;


--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCat`, `idRay`, `nomCat`) VALUES
(1, 1, 'Fruits'),
(2, 1, 'Légumes'),
(3, 2, 'Viande Rouge'),
(4, 2, 'Volaille'),
(5, 2, 'Poissonnerie'),
(6, 3, 'Pains'),
(7, 3, 'Viennoiseries'),
(8, 4, 'Lait et Yaourts'),
(9, 4, 'Crémerie et Fromagerie'),
(10, 4, 'Oeufs'),
(11, 4, 'Beurres'),
(12, 5, 'Lessives'),
(13, 5, 'Accessoires de ménage'),
(14, 5, 'Désodorisants'),
(15, 6, 'Cuisinières'),
(16, 6, 'Réfrigérateur'),
(17, 6, 'Lave-linge'),
(18, 6, 'Micro-onde'),
(19, 7, 'Parapharmacie');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `codeCmd` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `idUser` INT(11) NOT NULL,
  `codeLiv` INT(11) DEFAULT NULL,
  `codeFact` INT(11) DEFAULT NULL,
  `dateCmd` TIMESTAMP NULL DEFAULT NULL,
  `descCmd` VARCHAR(254) DEFAULT NULL,
  `totalCmd` FLOAT DEFAULT NULL,
  `detailsCmd` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`codeCmd`, `idUser`, `codeLiv`, `codeFact`, `dateCmd`, `descCmd`, `totalCmd`, `detailsCmd`) VALUES
(1, 3, 1, 2, '2020-06-07 20:29:51', 'liste de produits', 10000, NULL),
(2, 1, 2, 1, '2020-06-07 20:29:51', 'liste de produits', 9000, 'Sans TVA'),
(3, 2, 3, 2, '2020-06-07 20:29:51', 'liste de produits', 500, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `codeFact` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `dateFact` TIMESTAMP NULL DEFAULT NULL,
  `detailsFact` VARCHAR(254) DEFAULT NULL,
  `totalFact` FLOAT DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `facture`
--

INSERT INTO `facture` (`codeFact`, `dateFact`, `detailsFact`, `totalFact`) VALUES
(1, '2020-06-07 19:32:43', 'Payement en ligne', 2000),
(2, '2020-06-08 18:35:00', 'Payement en ligne', 5000),
(3, '2020-06-07 19:32:43', 'Payement en ligne', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lignearticlecommande`
--

CREATE TABLE `lignearticlecommande` (
  `idArtc` INT(11) NOT NULL,
  `codeCmd` INT(11) NOT NULL,
  `quantite` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lignearticlecommande`
--

INSERT INTO `lignearticlecommande` (`idArtc`, `codeCmd`, `quantite`) VALUES
(1, 1, 4),
(3, 2, 1),
(5, 3, 5),
(9, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `livraison`
--

CREATE TABLE `livraison` (
  `codeLiv` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `idModliv` INT(11) NOT NULL,
  `dateLiv` TIMESTAMP NULL DEFAULT NULL,
  `detailsLiv` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `livraison`
--

INSERT INTO `livraison` (`codeLiv`, `idModliv`, `dateLiv`, `detailsLiv`) VALUES
(1, 1, '2020-06-08 18:35:00', 'Livraison gratuite'),
(2, 2, '2020-01-01 16:00:00', 'Commande prête dans 1h'),
(3, 1, '2020-08-02 23:00:01', 'Retoure en magasin disponible');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `idMrq` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nomMrq` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`idMrq`, `nomMrq`) VALUES
(1, 'Bio'),
(2, 'Tiziviande'),
(3, 'Tekli-Aviole'),
(4, 'Poissonnerie-Tiza'),
(5, 'MediMer'),
(6, 'Opera'),
(7, 'La Ruche'),
(8, 'La Reine'),
(9, 'Mezghena'),
(10, 'Crust'),
(11, 'Kahina'),
(12, 'El Baraka'),
(13, 'Danone'),
(14, 'Candia'),
(15, 'Soummam'),
(16, 'Loya'),
(17, 'Tifra Lait'),
(18, 'Betouche'),
(19, 'Paturages'),
(20, 'La vache qui rit'),
(21, 'Tassili'),
(22, 'Trévalli'),
(23, 'Cevital'),
(24, 'La Belle'),
(25, 'Mama'),
(26, 'Ariel'),
(27, 'Omo'),
(28, 'Le Chat'),
(29, 'Test'),
(30, 'Isis'),
(31, 'ForceXpress'),
(32, 'Aigle'),
(33, 'Top'),
(34, 'Sif'),
(35, 'Bref'),
(36, 'Nedjma'),
(37, 'Swift'),
(38, 'Atlascleen'),
(39, 'Amir'),
(40, 'Odoris'),
(41, 'Airwick'),
(42, 'Lg'),
(43, 'Samsung'),
(44, 'Becko'),
(45, 'Eniem'),
(46, 'Arthur Martin'),
(47, 'Brandt'),
(48, 'Saidal'),
(49, 'Dettol'),
(50, 'Bayer'),
(51, 'Avène'),
(52, 'Nuxe'),
(53, 'Synthol');

-- --------------------------------------------------------

--
-- Structure de la table `modelivraison`
--

CREATE TABLE `modelivraison` (
  `idModliv` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `libModliv` VARCHAR(254) DEFAULT NULL,
  `descModliv` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modelivraison`
--

INSERT INTO `modelivraison` (`idModliv`, `libModliv`, `descModliv`) VALUES
(1, 'Livraison', 'Livraison à domicile'),
(2, 'Drive', 'Retrait drive');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `idProfil` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `adrProfil` VARCHAR(254) DEFAULT NULL,
  `villeProfil` VARCHAR(254) DEFAULT NULL,
  `codepostalProfil` VARCHAR(254) DEFAULT NULL,
  `sexeProfil` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`idProfil`, `adrProfil`, `villeProfil`, `codepostalProfil`, `sexeProfil`) VALUES
(1, 'Cité 2000 nouvelle ville', 'Tizi-Ouzou', '15000', 'Femme'),
(2, 'Cité 450 nouvelle ville', 'Tizi-Ouzou', '15000', 'Homme'),
(3, 'Cité 11 décembre bouaziz', 'Tizi-Ouzou', '15000', 'Femme'),
(4, 'Cité 56 logements azazga', 'Tizi-Ouzou', '15001', 'Homme'),
(5, 'Lotissement karim tigzirt', 'Tizi-Ouzou', '15019', 'Femme');

-- --------------------------------------------------------

--
-- Structure de la table `rayons`
--

CREATE TABLE `rayons` (
  `idRay` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nomRay` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rayons`
--

INSERT INTO `rayons` (`idRay`, `nomRay`) VALUES
(1, 'Fruits et Légumes'),
(2, 'Boucherie'),
(3, 'Boulangerie'),
(4, 'Crémerie'),
(5, 'Entretien et Nettoyage'),
(6, 'Electroménager'),
(7, 'parapharmacie');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `idUser` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `idProfil` INT(11) NOT NULL,
  `nomUser` VARCHAR(254) DEFAULT NULL,
  `prenomUser` VARCHAR(254) DEFAULT NULL,
  `emailUser` VARCHAR(254) DEFAULT NULL,
  `mdpUser` VARCHAR(254) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`idUser`, `idProfil`, `nomUser`, `prenomUser`, `emailUser`, `mdpUser`) VALUES
(1, 1, 'Bouyahyaoui', 'Nina', 'bouyanina@gamail.com', 'abc123'),
(2, 2, 'Slimani', 'Lyes', 'slimanilyes@gamail.com', 'def456'),
(3, 3, 'Zidane', 'Laetitia', 'zidanelaetitia@gamail.com', 'lz1802');


--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_ARTICLE_AVOIR_MARQUE` FOREIGN KEY (`idMrq`) REFERENCES `marque` (`idMrq`),
  ADD CONSTRAINT `FK_ARTICLE_CONTIENT_CATEGORIE` FOREIGN KEY (`idCat`) REFERENCES `categorie` (`idCat`);

--
-- Contraintes pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `FK_CATEGORIE_POSSEDE_RAYONS` FOREIGN KEY (`idRay`) REFERENCES `rayons` (`idRay`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_COMMANDE_GENERE_FACTURE` FOREIGN KEY (`codeFact`) REFERENCES `facture` (`codeFact`),
  ADD CONSTRAINT `FK_COMMANDE_GENERE_LIVRAISON` FOREIGN KEY (`codeLiv`) REFERENCES `livraison` (`codeLiv`),
  ADD CONSTRAINT `FK_COMMANDE_PASSE_UTILISATEURS` FOREIGN KEY (`idUser`) REFERENCES `utilisateurs` (`idUser`);

--
-- Contraintes pour la table `lignearticlecommande`
--
ALTER TABLE `lignearticlecommande`
  ADD CONSTRAINT `FK_LIGNEARTICLECOMMANDE_FORME_ARTICLE` FOREIGN KEY (`idArtc`) REFERENCES `article` (`idArtc`),
  ADD CONSTRAINT `FK_LIGNEARTICLECOMMANDE_FORME_COMMANDE` FOREIGN KEY (`codeCmd`) REFERENCES `commande` (`codeCmd`);

--
-- Contraintes pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD CONSTRAINT `FK_LIVRAISON_DONNELIEU_MODELIVRAISON` FOREIGN KEY (`idModliv`) REFERENCES `modelivraison` (`idModliv`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `FK_UTILISATEURS_DETIENT_PROFIL` FOREIGN KEY (`idProfil`) REFERENCES `profil` (`idProfil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
