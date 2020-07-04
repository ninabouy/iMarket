-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 04 juil. 2020 à 05:07
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_imarket`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `idArtc` int(11) NOT NULL,
  `idCat` int(11) NOT NULL,
  `idMrq` int(11) NOT NULL,
  `nomArtc` varchar(254) DEFAULT NULL,
  `refArtc` varchar(254) DEFAULT NULL,
  `descriptionArtc` varchar(254) DEFAULT NULL,
  `prixArtc` float DEFAULT NULL,
  `photoArtc` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idArtc`, `idCat`, `idMrq`, `nomArtc`, `refArtc`, `descriptionArtc`, `prixArtc`, `photoArtc`) VALUES
(1, 1, 1, 'Fraise', 'Algérie', 'barquette de 500g', 400, 'fraise.jpg'),
(2, 1, 1, 'Banane', 'Martinique\r\n', 'Sachet de 5 bananes', 700, 'banane.jpg'),
(3, 2, 1, 'Pommes de terre', 'Algérie', 'Filet de 2kg', 62.5, 'pomme_terre.jpg'),
(4, 3, 2, 'Viande hachée', 'Algérie', 'Barquette de 500g pur boeuf', 425, 'viande_hachee.jpg'),
(5, 6, 6, 'Pain aux céréales', 'Algérie', 'Pain de 300g', 15, 'pain_cereale.jpg\r\n'),
(6, 8, 13, 'Lait demi écrémé', 'Algérie', 'Bouteille de 1L', 85, 'lait_demi_ecreme.jpg'),
(7, 12, 26, 'Lessive liquide couleur', 'France', 'Bidon de 3L', 750.5, 'lessive_liquide_chat.jpg'),
(8, 16, 42, 'Réfrigérateur 2 porte', 'Sud Coréen', 'Hygiennefresh+', 56000, 'frigo.jpg'),
(9, 19, 48, 'Gel désinfectent mains', 'Algérie', 'Flacon de 100ml', 115, 'manigel.jpg'),
(10, 4, 3, 'Poulet frais', 'Algerie', 'Barquette >1.5kg', 280, 'poulet_barquette.jpg'),
(11, 1, 1, 'Orange', 'Algérie', 'Filet de 1kg ', 180, 'orange.jpg'),
(12, 1, 1, 'Pastèque ', 'Maroc', 'chaire Rayée - Au kilo', 35, 'pasteque.jpg'),
(13, 1, 1, 'Nèfles', 'Algérie', 'Filet de 1kg', 90, 'nefle.jpg'),
(14, 1, 1, 'Figues ', 'Kabylie', 'Corbeille de 500g', 150, 'figue.jpg'),
(15, 1, 1, 'Cerise', 'Algérie', 'Corbeille 500g', 110, 'cerise.jpg'),
(16, 1, 1, 'Citron', 'Algérie', 'Filet de 1kg', 220, 'citron.jpg'),
(17, 1, 1, 'Pomme', 'Algérie', 'Pomme jaune 1kg', 190, 'pomme.jpg'),
(18, 1, 1, 'Poire', 'Algérie', 'Filet de 1kg', 200, 'poire.jpg'),
(19, 1, 1, 'Pèche', 'Algérie', 'Filet de 1kg', 165, 'peche.jpg'),
(20, 1, 1, 'Abricot', 'Algérie', 'Filet de 1kg', 150, 'abricot.jpg'),
(21, 1, 1, 'Dattes', 'Algérie', 'Boite de 2kg', 1550, 'datte.jpg'),
(22, 1, 1, 'Grenade', 'Asie', 'Filet de 1kg', 170, 'grenade.jpg'),
(23, 1, 1, 'Kiwi', 'Chine', 'Filet 400g', 450, 'kiwi.jpg'),
(24, 1, 1, 'Melon', 'Azeffoun', 'vente au kilo', 130, 'melon.jpg'),
(25, 2, 1, 'oignon', 'Mascara', 'Vente au kilo', 36, 'oignon.jpg'),
(26, 2, 1, 'Tomate', 'Biskra', 'Chaire rouge - au kilo', 45, 'tomate.jpg'),
(27, 2, 1, 'Carottes', 'Espagne', 'Méditerranéenne - au kilo', 110, 'carotte.jpg'),
(28, 2, 1, 'Aubergines', 'Inde', 'Vente au kilo', 80, 'aubergine.jpg'),
(29, 2, 1, 'Bettrave', 'Inde', 'Rouge - au kilo', 70, 'betterave.jpg'),
(30, 2, 1, 'Artichaut', 'Espagne', ' Au kilo', 100, 'artichaut.jpg'),
(31, 2, 1, 'Courgette', 'Algérie', 'Verte Rayée - au kilo', 70, 'courgette.jpg'),
(32, 2, 1, 'concombre', 'Algérie', ' Au kilo', 40, 'concombre.jpg'),
(33, 2, 1, 'Haricot Vet', 'Algérie', ' Au kilo', 150, 'haricotV.jpg'),
(34, 2, 1, 'Chou fleur', 'France', 'Blanc Memphis - Au kilo', 70, 'chouFleur.jpg'),
(35, 2, 1, 'Chou', 'Algerie', 'Vert Cabus - au kilo', 60, 'chou.jpg'),
(36, 2, 1, 'Poivrons', 'Biskra', 'Vert Doux - Au kilo', 110, 'poivron.jpg'),
(37, 2, 1, 'Piments', 'Algérie', 'Vert - Au kilo', 150, 'piment.jpg'),
(38, 2, 1, 'Salade', 'France', 'Laitue verte - au kilo', 100, 'salade.jpg'),
(39, 2, 1, 'Ail', 'Algérie', 'Blanche - au kilo', 370, 'ail.jpg'),
(40, 3, 2, 'Viande', 'Agneau', 'Au kilo', 1600, 'agneau.jpg'),
(41, 3, 2, 'Viande', 'Boeuf', 'Au kilo', 1150, 'boeuf.jpg'),
(42, 3, 2, 'Viande', 'Veau', 'Au kilo', 1300, 'veau.jpg'),
(43, 3, 2, 'Viande', 'Hachée veau', 'Au kilo', 980, 'hachee.jpg'),
(44, 3, 2, 'Viande', 'Chevaline', ' Cheval France - Au kilo', 1750, 'chevaline.jpg'),
(45, 4, 3, 'Poulet', 'Algérie', 'Au kilo', 280, 'poulet.jpg'),
(46, 4, 3, 'Dinde', 'Algérie', 'Au kilo', 300, 'dinde.jpg'),
(47, 4, 3, 'Escalope Dinde', 'Algérie', 'Au kilo', 750, 'escalope.jpg'),
(48, 4, 3, 'Lapin', 'Algérie', 'Au kilo', 360, 'lapin.jpg'),
(49, 5, 4, 'Sardine', 'Algérie', 'Au kilo', 600, 'sardine.jpg'),
(50, 5, 4, 'Rouget', 'Algérie', 'Au kilo', 1000, 'rouget.jpg'),
(51, 5, 4, 'Thon', 'Algérie', 'Au kilo', 1100, 'sardine_thon.jpg'),
(52, 5, 4, 'Crevettes', 'Algérie', 'Au kilo', 1750, 'crevettes.jpg'),
(53, 5, 5, 'Espadon', 'Algérie', 'Au kilo', 2000, 'espadon.jpg'),
(59, 5, 4, 'Merou', 'Algérie', 'Au kilo', 1800, 'merou.jpg'),
(60, 5, 5, '¨Poulpe', 'Algérie', 'Au kilo', 600, 'poulpe.jpg'),
(61, 5, 5, 'Moules', 'France', 'Au kilo', 1400, 'moule.jpg'),
(62, 5, 4, 'Bonite', 'Algérie', 'Au kilo', 600, 'bonite.jpg'),
(63, 6, 6, 'Pains', 'Baguette', 'Pièce', 10, 'baguette.jpg'),
(67, 6, 7, 'Pains', 'Au son', 'Pièce', 20, 'son.jpg'),
(68, 6, 8, 'Pains', 'd\'orge', 'Pièce', 35, 'orge.jpg'),
(69, 6, 8, 'Pains', 'Parisien', 'Pièce', 35, 'parisien.jpg'),
(70, 6, 6, 'Pains', 'Sur Dalle', 'Pièce', 30, 'dalle.jpg'),
(72, 7, 9, 'Pain', 'Chocolat', 'Pièce', 15, 'choco.jpg'),
(76, 7, 12, 'Croissant', NULL, 'Pièce', 15, 'croissant.jpg'),
(80, 7, 10, 'Forêt Noire', NULL, 'Pièce', 700, 'foret_noire.jpg'),
(81, 7, 9, 'Mousse au chocolat', NULL, 'Pot 250g', 350, 'mousse.jpg'),
(82, 7, 10, 'Gâteau d\'anniversaire', NULL, 'Pièce', 1200, 'anniv.jpg'),
(83, 7, 12, 'Petits Fours', NULL, 'Pièce', 30, 'petit_four.jpg'),
(84, 8, 13, 'Yaourt Danone', 'France', '1 pcs', 20, 'yaourt_danone.jpg'),
(85, 8, 15, 'Yaourt Soumman', 'Algérie', ' FORT 1 pcs', 18, 'yaourt_soumman.jpg'),
(86, 8, 14, 'Lait Candia', 'Algérie', ' Silhouette 1 brique', 120, 'lait_candia.jpg'),
(87, 10, 1, 'Oeufs', 'Algérie', 'Du jour 30pcs', 300, 'oeufs.jpg'),
(88, 8, 17, 'tifra_lait', 'Algérie', 'Lait tifra ', 50, 'tifra_lait.jpg'),
(89, 17, 43, 'samsung_lave_linge', 'Asie', 'lave linge samsung', 50000, 'samsung_lave_linge.jpg'),
(90, 19, 53, 'bain_bouche', 'Algérie', 'Paracitamol 500 mg', 50, 'bain_bouche.jpg'),
(91, 7, 11, 'génoise', 'Kabylie', 'Patesserie', 150, 'genoise.jpg'),
(92, 8, 16, 'poudre_loya', 'Algérie', 'Lait en poudre', 100, 'poudre_loya.jpg'),
(93, 8, 18, 'betouche_yaourt', 'Algérie', 'Pot de yaourt aromatisé', 20, 'betouche_yaourt.jpg'),
(94, 8, 19, 'paturage_lait', 'Algérie', 'lait demi écremé', 50, 'paturage_lait.jpg'),
(95, 9, 20, 'vache_qui_rit', 'France', 'Fromage en portion', 120, 'vache_qui_rit.jpg'),
(96, 9, 21, 'camembert', 'Algérie', 'Camembert Tassili', 200, 'camembert.jpg'),
(97, 11, 23, 'matina', 'Algérie', 'Margarine à tartiner petit dej', 100, 'matina.jpg'),
(98, 13, 32, 'aigle detérgent', 'Algérie', 'Univers Détergent / Aigle ', 120, 'aigle_detergent.jpg'),
(99, 13, 38, 'lavettes', 'Algérie', 'Atlascleen Lavettes', 100, 'lavettes.jpg'),
(100, 13, 39, 'détergent_amir', 'Algérie', 'Amir Détergent', 100, 'detergent_amir.jpg'),
(101, 14, 41, 'desodorisant', 'USA', 'Airwick Desodorisant', 160, 'desodorisant_airwick.jpg'),
(102, 17, 46, 'lave_linge', 'France', 'Lave linge Arthur Martin', 40000, 'lave_linge.jpg'),
(103, 19, 51, 'gel_nettoyant', 'France', 'Avène Gel nettoyant', 2000, 'gel_nettoyant.jpg'),
(104, 11, 24, 'la belle', 'Algérie', 'Margarine à tartiner La Belle', 110, 'la_belle.jpg'),
(105, 19, 50, 'euphytose_nuit', 'France', 'Euphytose nuit Bayer', 220, 'euphytose_nuit.jpg'),
(106, 18, 47, 'micro_onde', 'France', 'Micro onde Brandt', 12000, 'micro_onde.jpg'),
(107, 16, 44, 'frigo_becko', 'Turquie', 'Réfrégirateur Becko', 30000, 'frigo_becko.jpg'),
(108, 13, 35, 'l\'eau_de_javel', 'Allemagne', 'l\'eau de Javel Bref', 90, 'eau_de_javel.jpg'),
(110, 19, 49, 'antiseptic', 'UK', 'Antiseptic Dettol', 280, 'antiseptic.jpg'),
(111, 16, 45, 'frigo_eniem', 'Algérie', 'Réfrégirateur Eniem', 45000, 'frigo_eniem.jpg'),
(112, 13, 31, 'nettoyant', 'Algérie', 'ForceXpress Nettoyant', 160, 'nettoyant.jpg'),
(113, 12, 30, 'isis', 'Algérie', 'Isis Vaisselle', 120, 'isis.jpg'),
(114, 13, 36, 'detergent', 'Algérie', 'Nedjma Detergent', 100, 'detergent_nedjma.jpg'),
(115, 19, 52, 'huile_prodigieuse', 'France', 'Huile prodigieuse', 2900, 'huile_prodigieuse.jpg'),
(116, 12, 27, 'lessive_liquide', 'Algérie', 'Lessive liquide Omo', 220, 'lessive_liquide_omo.jpg'),
(117, 14, 40, 'désodorisant', 'France', 'Désodorisant Odoris', 350, 'desodorisant_odoris.jpg'),
(118, 13, 34, 'detergent', 'France', 'Detergent Cif', 290, 'detergent_cif.jpg'),
(119, 13, 37, 'swift_liquide', 'France', 'Swift Detergent', 160, 'swift_liquide.jpg'),
(120, 15, 43, 'cuisinière ', 'Corée du sud', 'Cuisinière Samsung', 32000, 'cuisiniere.jpg'),
(121, 19, 53, 'synthol', 'France', 'Synthol', 500, 'synthol.jpg'),
(122, 12, 29, 'test_liquide', 'Suisse', 'Lessive liquide Test', 100, 'test_liquide.jpg'),
(123, 13, 33, 'detergent top', 'France', 'Detergent Top', 130, 'detergent_top.jpg'),
(124, 19, 48, 'masque_anti_corona', 'chine', 'masque de protection cotre le corona virus', 50, 'masque.jpg'),
(125, 19, 48, 'gants_anti_corona', 'chine', 'gants de protection cotre le corona virus', 50, 'gants.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCat` int(11) NOT NULL,
  `idRay` int(11) NOT NULL,
  `nomCat` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `codeCmd` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `codeLiv` int(11) DEFAULT NULL,
  `codeFact` int(11) DEFAULT NULL,
  `dateCmd` timestamp NULL DEFAULT NULL,
  `descCmd` varchar(254) DEFAULT NULL,
  `totalCmd` float DEFAULT NULL,
  `detailsCmd` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `codeFact` int(11) NOT NULL,
  `dateFact` timestamp NULL DEFAULT NULL,
  `detailsFact` varchar(254) DEFAULT NULL,
  `totalFact` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `idArtc` int(11) NOT NULL,
  `codeCmd` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `codeLiv` int(11) NOT NULL,
  `idModliv` int(11) NOT NULL,
  `dateLiv` timestamp NULL DEFAULT NULL,
  `detailsLiv` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `idMrq` int(11) NOT NULL,
  `nomMrq` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(34, 'cif'),
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
  `idModliv` int(11) NOT NULL,
  `libModliv` varchar(254) DEFAULT NULL,
  `descModliv` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `idProfil` int(11) NOT NULL,
  `adrProfil` varchar(254) DEFAULT NULL,
  `villeProfil` varchar(254) DEFAULT NULL,
  `codepostalProfil` varchar(254) DEFAULT NULL,
  `sexeProfil` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`idProfil`, `adrProfil`, `villeProfil`, `codepostalProfil`, `sexeProfil`) VALUES
(1, 'Cité 2000 nouvelle ville', 'Tizi-Ouzou', '15000', 'Femme'),
(2, 'Cité 450 nouvelle ville', 'Tizi-Ouzou', '15000', 'Homme'),
(3, 'Cité 11 décembre bouaziz', 'Tizi-Ouzou', '15000', 'Femme'),
(4, 'Cité 56 logements azazga', 'Tizi-Ouzou', '15001', 'Homme'),
(5, 'Lotissement karim tigzirt', 'Tizi-Ouzou', '15019', 'Femme'),
(18, 'Lot.Bekkar num 04', 'tizi ouzou', '15000', 'femme'),
(19, 'boukhalfa', 'tizi ouzou', '15000', 'femme');

-- --------------------------------------------------------

--
-- Structure de la table `rayons`
--

CREATE TABLE `rayons` (
  `idRay` int(11) NOT NULL,
  `nomRay` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `idUser` int(11) NOT NULL,
  `idProfil` int(11) NOT NULL,
  `nomUser` varchar(254) DEFAULT NULL,
  `prenomUser` varchar(254) DEFAULT NULL,
  `emailUser` varchar(254) DEFAULT NULL,
  `mdpUser` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`idUser`, `idProfil`, `nomUser`, `prenomUser`, `emailUser`, `mdpUser`) VALUES
(1, 1, 'Bouyahyaoui', 'Nina', 'bouyanina@gamail.com', 'abc123'),
(2, 2, 'Slimani', 'Lyes', 'slimanilyes@gamail.com', 'def456'),
(3, 3, 'Zidane', 'Laetitia', 'zidanelaetitia@gamail.com', 'lz1802'),
(10, 18, 'zidane', 'melissa', 'Lemelisse@hotmail.com', '123soleil'),
(11, 19, 'arezki', 'fariza', 'fari@gmail.com', '1234');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idArtc`),
  ADD KEY `FK_ARTICLE_AVOIR_MARQUE` (`idMrq`),
  ADD KEY `FK_ARTICLE_CONTIENT_CATEGORIE` (`idCat`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCat`),
  ADD KEY `FK_CATEGORIE_POSSEDE_RAYONS` (`idRay`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`codeCmd`),
  ADD KEY `FK_COMMANDE_GENERE_FACTURE` (`codeFact`),
  ADD KEY `FK_COMMANDE_GENERE_LIVRAISON` (`codeLiv`),
  ADD KEY `FK_COMMANDE_PASSE_UTILISATEURS` (`idUser`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`codeFact`);

--
-- Index pour la table `lignearticlecommande`
--
ALTER TABLE `lignearticlecommande`
  ADD KEY `FK_LIGNEARTICLECOMMANDE_FORME_ARTICLE` (`idArtc`),
  ADD KEY `FK_LIGNEARTICLECOMMANDE_FORME_COMMANDE` (`codeCmd`);

--
-- Index pour la table `livraison`
--
ALTER TABLE `livraison`
  ADD PRIMARY KEY (`codeLiv`),
  ADD KEY `FK_LIVRAISON_DONNELIEU_MODELIVRAISON` (`idModliv`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`idMrq`);

--
-- Index pour la table `modelivraison`
--
ALTER TABLE `modelivraison`
  ADD PRIMARY KEY (`idModliv`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`idProfil`);

--
-- Index pour la table `rayons`
--
ALTER TABLE `rayons`
  ADD PRIMARY KEY (`idRay`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `idProfil` (`idProfil`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `idArtc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `codeCmd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `codeFact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `livraison`
--
ALTER TABLE `livraison`
  MODIFY `codeLiv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `idMrq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `modelivraison`
--
ALTER TABLE `modelivraison`
  MODIFY `idModliv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `idProfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `rayons`
--
ALTER TABLE `rayons`
  MODIFY `idRay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
