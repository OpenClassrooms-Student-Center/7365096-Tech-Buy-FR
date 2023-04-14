-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 14 avr. 2023 à 11:42
-- Version du serveur : 10.6.12-MariaDB
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `diay0794_techbuy`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Ordinateurs'),
(2, 'Écrans'),
(3, 'Accessoires');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230331105228', '2023-03-31 12:52:31', 88),
('DoctrineMigrations\\Version20230407231013', '2023-04-08 01:10:23', 67);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `best` tinyint(1) NOT NULL,
  `suggested` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `reference`, `price`, `description`, `image`, `short_description`, `best`, `suggested`) VALUES
(1, 2, 'Écran 24\"', '3409FI304', 400, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>Cet écran d\'ordinateur est doté d\'une technologie révolutionnaire de \"pixel ultra-lumineux\" offrant une résolution de 16K pour une qualité d\'image inégalée. Sa connexion sans fil ultra-rapide permet une transmission de données instantanée.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p1.png', 'LCD, FHD U24GERH', 1, 1),
(2, 2, 'Écran 21\"', '9384OE399', 250, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>Les réglages de l\'écran sont entièrement automatisés grâce à une intelligence artificielle intégrée, offrant ainsi une expérience utilisateur sans précédent. Son châssis en titane garantit une durabilité et une stabilité inégalées.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p2.png', 'FHD Dell P2219H', 1, 0),
(3, 3, 'Souris FSTYLER', '5839VF102', 72, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>Cette souris d\'ordinateur est équipée d\'un capteur optique de haute précision qui permet un suivi fluide et précis des mouvements. Les boutons programmables offrent une personnalisation maximale pour répondre à vos besoins de productivité.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p3.png', 'Pro, Sans fil', 1, 0),
(4, 3, 'Clavier Focus 21', '8002CX930', 155, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>Ce clavier d\'ordinateur est doté d\'une technologie de frappe pneumatique qui offre une expérience de frappe tactile et immersive. Il est équipé de touches programmables pour une personnalisation maximale de vos raccourcis clavier. Le clavier est compatible avec une large gamme d\'appareils grâce à sa connectivité Bluetooth ou USB. Son design épuré et élégant s\'adapte à tout type de bureau et son rétroéclairage LED personnalisable ajoute une touche de style à votre espace de travail.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p4.png', 'Sans fil, Bluetooth', 1, 0),
(5, 1, 'Macbook pro 13”', '2239UE903', 1400, '    <p><strong>Fiche Technique</strong></p>\n    <p>Le Apple MacBook Pro 16 2021 est un PC Portable annoncé le 18 octobre 2021. Itération majeure du MacBook Pro, il introduit notamment un nouveau SoC Apple M1 Pro (M1 Max en option) avec 10 cœurs pour la partie CPU et 16 à 32 cœurs pour la partie GPU, le tout épaulé par 16 à 64 Go de RAM.</p>\n    <p><strong>Garantie commerciale 12 mois</strong></p>\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\n', 'assets/products/p5.png', '256go, 16g RAM', 0, 1),
(6, 3, 'Magic Mouse', '2356PL091', 70, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>La souris est compatible avec une large gamme d\'appareils grâce à sa connectivité sans fil Bluetooth ou USB. Elle dispose également d\'une batterie rechargeable intégrée pour une utilisation sans fil prolongée. Le design ergonomique assure une prise en main confortable, même lors de sessions de travail prolongées.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p6.png', 'Sans fil, Blanc', 0, 1),
(7, 1, 'HP 11” Notebook', '7729DI092', 572, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>Ce laptop ultra-fin est équipé d\'un processeur de dernière génération pour des performances de pointe et une efficacité énergétique maximale. Son écran Full HD offre une qualité d\'image exceptionnelle pour une expérience visuelle immersive. Le laptop est doté d\'un clavier rétroéclairé pour une utilisation confortable dans les environnements sombres et d\'un pavé tactile précis pour une navigation aisée. Il dispose également d\'une connectivité Bluetooth et Wi-Fi rapide pour un accès facile à Internet et à vos périphériques sans fil. Son design élégant et épuré en fait un compagnon de travail parfait pour tous les professionnels nomades.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p7.png', '128go, 8g RAM', 0, 1),
(8, 3, 'Clavier Apple', '8293DU737', 75, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>Ce clavier d\'ordinateur est équipé d\'un système de reconnaissance vocale avancé qui vous permet de dicter votre texte directement sur le clavier. Il est également équipé de capteurs de pression pour une expérience de frappe plus ergonomique et confortable. Le clavier est compatible avec une large gamme d\'appareils grâce à sa connectivité Bluetooth ou USB. Son design compact et léger facilite le transport et l\'utilisation en déplacement.\r\n\r\n\r\n\r\n</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p8.png', 'Sans fil, Bluetooth', 0, 1),
(9, 3, 'Clavier Gamer DRTZ', '9114BZ029', 400, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>Ce clavier d\'ordinateur est équipé d\'une technologie de reconnaissance d\'empreintes digitales pour une sécurité accrue de vos données sensibles. Il est également doté d\'une fonctionnalité de rétroéclairage personnalisable pour une expérience de frappe plus agréable dans toutes les conditions d\'éclairage. Le clavier est compatible avec une large gamme d\'appareils grâce à sa connectivité sans fil Bluetooth ou USB. Son design ergonomique assure une position de frappe confortable et saine pour les mains et les poignets.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p9.png', 'Filaire, Retro-éclairé', 0, 1),
(10, 2, 'Écran 21\" LCD', '7275YC761', 230, '    <p><strong>Fiche Technique</strong></p>Cet écran d\'ordinateur est équipé d\'un éclairage LED avancé qui offre une luminosité exceptionnelle pour une qualité d\'image éblouissante. Son verre trempé ultra-résistant et son cadre en aluminium brossé confèrent un aspect élégant et moderne..</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p10.png', 'FHD Dell P2219H', 0, 1),
(11, 3, 'Souris G click', '8203WS839', 155, '    <p><strong>Fiche Technique</strong></p>\r\n    <p>Cette souris d\'ordinateur est équipée d\'une technologie de reconnaissance gestuelle avancée, permettant une interaction intuitive avec votre ordinateur. Grâce à ses capteurs biométriques, la souris est en mesure de suivre votre rythme cardiaque pour s\'adapter automatiquement à votre niveau de stress.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p11.png', 'Wireless & filaire', 0, 1),
(12, 2, 'Écran OLED 50\"', '4934OL020', 800, '    <p><strong>Fiche Technique</strong></p><p>Avec une connectivité HDMI et VGA, cet écran est compatible avec une large gamme d\'appareils. Les réglages de l\'écran sont facilement accessibles via un menu à l\'écran pour une personnalisation facile de la luminosité, du contraste et de la température de couleur.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p12.png', 'Écran OLED LG 125cm', 0, 0),
(13, 3, 'Souris pro-gamer', '9834SO811', 34, '    <p><strong>Fiche Technique</strong></p><p>Les boutons programmables offrent une personnalisation maximale pour répondre à vos besoins spécifiques. La souris est compatible avec les appareils Android et iOS, offrant une expérience de navigation unifiée pour tous vos appareils.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p13.png', 'Conçue pourles gamers', 0, 0),
(14, 3, 'Clavier FastType', '0398FT441', 80, '    <p><strong>Fiche Technique</strong></p><p>Ce clavier d\'ordinateur est équipé d\'une technologie de frappe silencieuse pour une expérience de frappe plus agréable et discrète. Il est également doté d\'un pavé numérique amovible pour une utilisation plus flexible et une position de frappe plus ergonomique. Le clavier est compatible avec une large gamme d\'appareils grâce à sa connectivité sans fil Bluetooth ou USB. Son design compact et élégant s\'intègre facilement à tout type de bureau et son repose-poignet rembourré assure un confort optimal.</p>\r\n    <p><strong>Garantie commerciale 12 mois</strong></p>\r\n    <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>\r\n', 'assets/products/p14.png', 'Adapté pour la frappe rapide', 0, 0),
(15, 1, 'Acer Aspire 5', '3948AA183', 499, '    <p><strong>Fiche Technique</strong></p><p>Cet ordinateur bureautique est conçu pour répondre à tous vos besoins professionnels. Il est équipé d\'un processeur rapide pour des performances fiables et d\'un grand espace de stockage pour stocker tous vos fichiers et documents. L\'ordinateur dispose également d\'un écran haute résolution pour une qualité d\'image exceptionnelle et d\'un clavier et d\'une souris sans fil pour une utilisation facile et confortable. Il est équipé d\'une connectivité Bluetooth et Wi-Fi rapide pour un accès facile à Internet et à vos périphériques sans fil. Son design élégant et professionnel convient parfaitement à tout environnement de bureau.</p>     <p><strong>Garantie commerciale 12 mois</strong></p>     <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>', 'assets/products/p15.png', 'Parfait pour la bureautique', 0, 0),
(16, 1, 'MSI GF63', '2203GF063', 1650, '    <p><strong>Fiche Technique</strong></p><p>Cet ordinateur gaming de haute performance est équipé d\'un processeur de pointe et d\'une carte graphique puissante pour offrir une expérience de jeu ultime. Son écran haute résolution assure une qualité d\'image exceptionnelle pour une immersion totale. L\'ordinateur dispose d\'un système de refroidissement avancé pour maintenir des températures optimales pendant les sessions de jeu intenses. Il est également équipé d\'un clavier rétroéclairé programmable pour une personnalisation maximale de votre configuration de jeu. Sa connectivité Bluetooth et Wi-Fi rapide vous permet d\'accéder facilement à Internet et à vos périphériques sans fil. Son design futuriste et agressif en fait un ordinateur gaming parfait pour les gamers passionnés.</p>     <p><strong>Garantie commerciale 12 mois</strong></p>     <p>En cas de panne le produit est réparé sans frais. Si la réparation n’est pas possible, le produit est échangé. 30 jours pour tester le produit Vous avez 30 jours après réception du produit pour l\'utiliser. S\'il ne correspond pas à vos attentes, on vous le rembourse aussi sec</p>', 'assets/products/p16.png', 'Conçu pour les gamers', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
