-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           11.3.0-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour m2l
CREATE DATABASE IF NOT EXISTS `m2l` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `m2l`;

-- Listage de la structure de la table m2l. commandes
CREATE TABLE IF NOT EXISTS `commandes` (
  `cuid` uuid DEFAULT NULL,
  `montant` float DEFAULT NULL,
  `puiduser` uuid DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `produits` uuid DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Listage des données de la table m2l.commandes : ~4 rows (environ)
INSERT INTO `commandes` (`cuid`, `montant`, `puiduser`, `nom`, `produits`) VALUES
	('f1e50329-afcb-442a-9cbc-7fb1b01f69fd', NULL, NULL, NULL, NULL),
	('f5e363fe-e082-49f8-81bf-7c6512cad97d', NULL, NULL, NULL, NULL),
	('280f0fc6-bdcf-4391-be7f-0e6fa766bb8a', NULL, NULL, NULL, NULL),
	('2151f7b3-8c44-40bd-abee-49252d31b62c', NULL, NULL, NULL, NULL);

-- Listage de la structure de la table m2l. produit
CREATE TABLE IF NOT EXISTS `produit` (
  `puid` uuid DEFAULT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Listage des données de la table m2l.produit : ~7 rows (environ)
INSERT INTO `produit` (`puid`, `nom`, `description`, `prix`, `quantite`, `img`) VALUES
	('500bb7fc-607b-47d1-a6c1-53a11ea7c3d5', 'Kit Tir à l\'arc', 'Nous avons conçu ce kit pour découvrir le tir à l\'arc en loisir entre 5 et 10 m avec une pointe acier. Vous aurez de vraies sensations en famille !', 50, 50, 'uploads\\f6dc3da5a9db35b0c0de87cf9bdf6aff'),
	('be53fdad-38ed-44d3-b4ac-d043d41bf93c', 'Ballon de football', 'Besoin d\'un ballon de football pour votre club ? Avec le CLUB BALL FIFA BASIC, optez pour 2 couches de mousses pour plus de confort, et des coutures invisibles pour une grande résistance.', 20, 188, 'uploads\\40a83487fb1d8aba1baef3694b37ba3f'),
	('154ff52c-4c92-471d-9102-a7e05d7d76e0', 'Ballon de basket', ' Ce ballon de basket de taille 5 officielle pour les filles et garçons de 7 à 10 ans. Avec sa couche extérieur matière plastique moussé, il offre un bon toucher de balle, ainsi qu\'une bonne résistance', 20, 200, 'uploads\\acbc401ff3da2bca9e6d214c84bc318a'),
	('c2ee4262-6deb-4494-884c-7b830dbad23a', 'Table de ping pong', 'Conçue par nos pongistes pour jouer au ping pong loisir plusieurs fois par mois. Découvrez le tennis de table avec une table aux coins arrondis & plus compacte.', 500, 52, 'uploads\\29db0911a8c42afd7e61453972f4cabb'),
	('08469ec8-be5d-4817-b5bb-112c61b2f13e', 'Chaussures Homme', 'UNE CHAUSSURE DE RUNNING CONFORTABLE CONCUE POUR TOUTES LES ACTIVITÉS DE COURSE À PIED.  Cette chaussure de running polyvalente avec amorti doux est parfaite pour un run dans le parc ou tes activités du quotidien.', 60, 200, 'uploads\\1a8c2d30c94f12c5b7b096632dd11e77'),
	('c61094a7-93ba-4754-9e16-340feaa3fa26', 'Raquette de badminton', 'Conçu pour le joueur de badminton occasionnel à la recherche de solidité. Idéal pour la découverte et l\'apprentissage du badminton  Idéale pour accompagner vos premiers échanges de volants. Sa composition en acier / aluminium apporte une solidité à toute épreuve.', 20, 199, 'uploads\\da43e40d18f1a3fdcae784b183fc1456'),
	('7861a533-aeac-43e5-b6c0-445ae1e12f52', 'Chaussures Femme', 'Créée pour compléter ton jeu en salle, la chaussure adidas Court Flight t\'offre un maximum de confort avec sa semelle intermédiaire sur toute la longueur. Cette chaussure offre maintien et dynamisme. Les baskets Adidas court flight sont idéales pour le jeu en club et les compétitions.', 80, 400, 'uploads\\023d24f78097ea1bb1b3b3581831ba9c');

-- Listage de la structure de la table m2l. user
CREATE TABLE IF NOT EXISTS `user` (
  `uuid` uuid DEFAULT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `mdp` varchar(500) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Listage des données de la table m2l.user : ~5 rows (environ)
INSERT INTO `user` (`uuid`, `nom`, `email`, `mdp`, `admin`) VALUES
	('443a8651-06dc-4997-872a-dda727355c02', 'marion', 'marion@gmail.com', '$2b$10$lBKPP39ra.E8VRAz0DgKveX2rpx8Guqu0z2H.8swN3gFaH9MQX3sq', 1),
	('71128ee2-7117-4ba8-a2f9-ba1fcbaab57a', 'Const', 'Const@gmail.com', '$2b$10$/A9gQkYBFt4vXoj8kHiBKemn/YH9j3wK.edhgsnmPuKYsDnY4YOKa', NULL),
	('a3ba6c46-88e5-487f-b594-b000bbbe99e3', 'Eva', 'Eva@gmail.com', '$2b$10$Jf3n6i.HJJmuzL5Tc3C51.TqAWRQsT5b179L3uynogmJQ7cV1tKT2', NULL),
	('d04f473e-f27b-4168-8345-6f1e60269d61', 'Leo', 'LeoLarouChalot@gmail.com', '$2b$10$zhxOw2oe4qcrbp1tOYJ9g.GNTzzlCItInKNpf.F/nQghcVhz0XzIm', NULL),
	('31ffe74c-9776-4caa-a7f4-aecae5414752', 'Yoann', 'Yoann@gmail.com', '$2b$10$Ody649/aCbo83J6naTTSa.eFVuwQ8q/jUXhhYFXVaNCEAZUwc0rqK', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
