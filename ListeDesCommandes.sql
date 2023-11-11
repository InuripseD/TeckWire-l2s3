CREATE TABLE `produits` (
    `idproduit` int PRIMARY KEY,
    `nom` varchar(30),
    `marque` varchar(30),
    `categorie` varchar(30),
    `description` varchar(200),
    `photo` varchar(100),
    `prix` float,
    `stock` int
);

CREATE TABLE IF NOT EXISTS `clients` (
  `email` varchar(60) PRIMARY KEY,
  `mdp` varchar(30) NOT NULL,
  `nom` varchar(50),
  `prenom` varchar(20),
  `tel` varchar(150)
);

CREATE TABLE IF NOT EXISTS `commandes` (
  `idcommande` int PRIMARY KEY AUTO_INCREMENT,
  `date` varchar(30),
  `email` varchar(50),
  `etat` varchar(20)
);

ALTER TABLE `commandes` ADD FOREIGN KEY (`email`) REFERENCES `clients` (`email`);

CREATE TABLE IF NOT EXISTS `lignescommandes` (
  `idlignecommande` int PRIMARY KEY AUTO_INCREMENT,
  `idcommande` int,
  `idproduit` int,
  `quantite` int,
  `montant` float
);

ALTER TABLE `lignescommandes` ADD FOREIGN KEY (`idcommande`) REFERENCES `commandes` (`idcommande`);

ALTER TABLE `lignescommandes` ADD FOREIGN KEY (`idproduit`) REFERENCES `produits` (`idproduit`);

INSERT INTO `produits` (`idproduit`, `nom`, `marque`, `categorie`, `description`, `photo`, `prix`, `stock`) VALUES
(1001, 'Corsair Vengeance RGB PRO 32Go (2 x 16Go) DDR4 3600MHz C18, Kit de Mémoire Haute Performance (AMD Optimisé) - Noir', 'Corsair', 'RAM', 'Corsair Vengeance RGB PRO 32Go (2 x 16Go) DDR4 3600MHz C18, Kit de Mémoire Haute Performance (AMD Optimisé) - Noir, Tension 1.35 Volts Compatibilité du périphérique Intel 300 Series, Intel 400 Series,Intel 400 Series, AMD X570 Latence stroboscopique d adresse de colonne 18 Nanoseconds Nombre de broches 288, Dimensions de l article L x L x H 13.8 x 0.8 x 5.1 centimètres', 'images/RAM/1001.jpg', 165.88, 55),
(1002, 'Crucial Ballistix BL8G32C16U4RL RGB 3200 MHz DDR4 DRAM Mémoire PC de Gamer 8Go CL16 Rouge ', 'Crucial', 'RAM', 'Crucial Ballistix BL8G32C16U4RL RGB 3200 MHz DDR4 DRAM Mémoire PC de Gamer 8Go CL16 Rouge, Tension 1.35 Volts, Latence stroboscopique d adresse de colonne 16 Nanoseconds, Nombre de broches 288, Dimensions de l article L x L x H 13.3 x 0.7 x 3.9 centimètres', 'images/RAM/1002.jpg', 45.59, 9),
(1003, 'Crucial Ballistix BL2K8G36C16U4B 3600 MHz, DDR4, DRAM, Mémoire Kit pour PC de Gamer, 16Go (8Go x2), CL16, Noir', 'Crucial', 'RAM', 'Crucial Ballistix BL2K8G36C16U4B 3600 MHz, DDR4, DRAM, Mémoire Kit pour PC de Gamer, 16Go (8Go x2), CL16, Noir, Tension 1.35 Volts, Latence stroboscopique d adresse de colonne 16 Nanoseconds, Nombre de broches 288, Dimensions de l article L x L x H 13.3 x 0.7 x 3.9 centimètres', 'images/RAM/1003.jpg', 82.62, 25),
(1004, 'HyperX FURY Black HX426C16FB3K2/16 Mémoire 16Go Kit*(2x8Go) 2666MHz DDR4 CL16 DIMM 1Rx8 ', 'HyperX', 'RAM', 'HyperX FURY Black HX426C16FB3K2/16 Mémoire 16Go Kit*(2x8Go) 2666MHz DDR4 CL16 DIMM 1Rx8, Tension 1.2 Volts, Dimensions de l article L x L x H 13.3 x 0.7 x 3.4 centimètres', 'images/RAM/1004.jpg', 123.99, 0),
(1005, 'HyperX Predator HX436C17PB3A/16 Mémoire RAM 3600 MHz DDR4 CL17 DIMM XMP 16 GB RGB ', 'HyperX', 'RAM', 'HyperX Predator HX436C17PB3A/16 Mémoire RAM 3600 MHz DDR4 CL17 DIMM XMP 16 GB RGB, Dimensions de l article L x L x H 8 x 42 x 133 millimètres, Poids du produit 80 Grammes', 'images/RAM/1005.jpg', 155.99, 5),
(1006, 'Kingston FURY Beast 16GB (2x8GB) 3200MHz DDR4 CL16 Mémoire Kit pour PC Kit de 2 KF432C16BBK2/16 ', 'Kingston', 'RAM', 'Kingston FURY Beast 16GB (2x8GB) 3200MHz DDR4 CL16 Mémoire Kit pour PC Kit de 2 KF432C16BBK2/16, Tension 1.35 Volts Latence stroboscopique d adresse de colonne 16 Nanoseconds Nombre de broches, Dimensions de l article L x L x H 13.3 x 3.4 x 0.7 centimètres', 'images/RAM/1006.jpg', 77.88, 8),
(1007, 'Crucial RAM CT4G4DFS824A 4Go DDR4 2400 MHz CL17 Mémoire de bureau', 'Crucial', 'RAM', 'Crucial RAM CT4G4DFS824A 4Go DDR4 2400 MHz CL17 Mémoire de bureau Tension 1.2 Volts, Latence stroboscopique dadresse de colonne 17 Nanoseconds, Nombre de broches 288, Dimensions de l article L x L x H 13.4 x 0.1 x 3.1 centimètres', 'images/RAM/1007.jpg', 21.59, 102),
(1008, 'Corsair VS2GB1333D3 Value Select 2GB (1x2GB) DDR3 1333 Mhz CL9 ', 'Corsair', 'RAM', 'Corsair VS2GB1333D3 Value Select 2GB (1x2GB) DDR3 1333 Mhz CL9, Tension 1.5 Volts, Nombre de broches 240', 'images/RAM/1008.jpg', 15.99, 68),
(1009, 'Corsair CML8GX3M2A1600C9 Vengeance LP 8GB (2x4GB) DDR3 1600 Mhz CL9 Mémoire pour ordinateur de bureau performante avec profil XMP. Noir', 'Corsair', 'RAM', 'Corsair CML8GX3M2A1600C9 Vengeance LP 8GB (2x4GB) DDR3 1600 Mhz CL9 Mémoire pour ordinateur de bureau performante avec profil XMP. Noir, Tension 1.5 Volts, Latence stroboscopique d adresse de colonne 5 Nanoseconds, Nombre de broches 240, Dimensions de l article L x L x H ‎14.9 x 1.7 x 13.7 centimètres', 'images/RAM/1009.jpg', 49.15, 0),
(1010, 'HyperX - HX426C16FB2/8 - FURY DDR4 8Go, 2666MHz CL16 DIMM XMP - Noir ', 'HyperX', 'RAM', 'HyperX - HX426C16FB2/8 - FURY DDR4 8Go, 2666MHz CL16 DIMM XMP - Noir Tension 1.2 Volts Compatibilité du périphérique	Other Dimensions de l article L x L x H ‎13.3 x 7.1 x 3.4 centimètresPoids du produit ‎0.02 Kilogrammes ', 'images/RAM/10010.jpg', 59.99, 300);

INSERT INTO `produits` (`idproduit`, `nom`, `marque`, `categorie`, `description`, `photo`, `prix`, `stock`) VALUES
(4001, 'Razer Huntsman V2 Analog Optical Gaming Keyboard French Layout ', 'Razer', 'KB', ' Switchs optiques analogiques Razer: Définissez un point d’activation en fonction de votre style de jeu, ou utilisez l’entrée analogique pour un contrôle plus fluide et plus nuancé, en éliminant le mouvement WASD rigide à 8 directions pour un mouvement à 360 degrés Touches en PBT à double injection: Plus dures et plus durables que l’ABS, ces touches robustes ne s’useront pas et leurs caractères ne s’effaceront jamais grâce à leur processus de moulage à double injection Alimenté par Razer Chroma RGB: Avec 16,8 millions de couleurs et une suite d’effets, synchronisez ses touches et l’éclairage inférieur avec le reste de votre poste de combat, et profitez d’une plus grande immersion, car il réagit dynamiquement avec plus de 150 jeux intégrés ', '4001.jpg', 196.00, 40 ),
(4002, 'Logitech G213 Prodigy, Clavier Gaming, Eclairage RVB LIGHTSYNC, Résistant aux Éclaboussures, Personnalisable, Commandes Multimédia Dédiées, Clavier Français AZERTY - Noir ', 'Logitech', 'KB', ' LIGHTSYNC RVB : le clavier gaming G213 par Logitech offre cinq zones d éclairage individuelles, chacune étant personnalisable à partir d une palette de près de 16,8 millions de couleurs Résistant aux Eclaboussures et Durable : le clavier mécanique pour gamer G213 est conçu avec une résistance aux éclaboussures éprouvée avec 60 ml de liquide afin d’éviter les accidents Repose-Poignets Intégrés et Pieds Réglables : profitez d’un design confortable et ergonomique avec le clavier gaming Logitech G213, ses repose-poignets intégrés améliorent le confort Personnalisation avec l’Assistant pour Jeux Vidéo de Logitech : ce clavier est personnalisable grâce à l assistant pour jeux vidéo de Logitech,pour une commodité et une personnalisation sans égales ', '4002.jpg', 49.99, 5 ),
(4003, 'Logitech G PRO TKL Tenkeyless Clavier Gaming Mécanique, Conception Portable sans Pavé numérique, câble Micro-USB Détachable, Touches Rétroéclairées, LIGHTSYNC RVB, Clavier Français AZERTY - Noir ', 'Logitech', 'KB', ' Personnalisé pour les pros : conçu avec et pour les athlètes eSports recherchant des performances, une vitesse et une précision exceptionnelles. Force d actionnement : 50 g Switchs sonores GX Blue de qualité professionnelle : les switchs sonores GX Blue robustes offrent un clic audible et un retour de saisie tactile pour une pression solide et sécurisée sur la touche Conception compacte ultra-portable : la conception compacte sans pavé numérique libère de l espace sur la table pour déplacer la souris. Il est également facile à emballer et à transporter pour les tournois ', '4003.jpg', 129.00, 0 ),
(4004, 'Logitech K120 Clavier sans Fil Business Windows, Plug-and-Play USB, Taille Standard, Etanche, Barre d’Espacement Incurvée, Clavier QWERTY US - Noir ', 'Logitech', 'KB', ' Un Design Etanche : Le clavier K120 est étanche, ce qui le protègera des éclaboussures et autres accidents du quotidien qui peuvent nuire à votre matériel informatique Connexion USB Prête à l’Emploi : L installation est un jeu d enfant. Il suffit de le brancher sur un port USB de l ordinateur de bureau ou portable pour pouvoir l utiliser immédiatement Un Design Ultra-Fin et des Touches Durables : Son profil ultra-plat offre une position plus naturelle, et ses touches durables font de ce clavier un outil non seulement élégant mais aussi durable Frappe Confortable et Silencieuse : Vous bénéficiez d une expérience de frappe confortable et silencieuse grâce aux touches plates presque insonores ', '4004.jpg', 14.95, 25 ),
(4005, 'Logitech K800 Clavier sans Fil avec Rétro-Eclairage, 2.4GHz avec Récepteur USB Unifying, Touches Gravées au Laser, Système PerfectStroke, Rechargeable, PC/Portable, Clavier AZERTY français - Noir ', 'Logitech', 'KB', ' Rétroéclairage Ajustable et Détection des Mains : Le rétroéclairage de ce clavier sans fil s ajuste automatiquement aux conditions d éclairage et modifiez-le à votre goût, en appuyant sur un bouton Touches Gravées au Laser et Rétroéclairées : Ce clavier fonctionnel et lumineux sans fil pour PC possède des touches gravées au laser avec rétroéclairage brillant ajustable Système de Touches PerfectStroke : Ce clavier rétroéclairé sans fil est doté du système de touches Logitech PerfectStroke et touches Logitech Incurve pour une frappe confortable, fluide et silencieuse Installation sans Fil Simplifiée: Il vous suffit de brancher le récepteur sans fil sur un port USB de votre ordinateur de bureau ou portable pour une connexion rapide et fiable prête à l emploi ', '4005.jpg', 49.99, 70 ),
(4006, 'Razer™ BlackWidow V3 Mechanical Gaming Keyboard Green Switch French Layout ', 'Razer', 'KB', ' Switchs mécaniques verts Razer pour une exécution précise et une sensation tactile et sonore: Sentez et entendez ce retour agréable à chaque frappe grâce à sa conception classique centrée sur l’optimisation de l’activation et des points de réinitialisation afin de vous offrir plus de performances pendant vos sessions de jeu. Logement de switch transparent pour un éclairage Razer Chroma RGB plus vif: Sa conception totalement transparente souligne la luminosité et les capacités de Razer Chroma RGB, des personnalisations d’éclairage intense à une meilleure immersion, car il réagit dynamiquement avec plus de 150 jeux intégrés. ', '4006.jpg', 89.45, 100 ),
(4007, 'Logitech G915 LIGHTSPEED Clavier Gaming sans Fil Mécanique, Switch ultra-plat GL Clicky, RVB LIGHTSYNC, Design élégant et mince, 30+ heures de jeu, 2,4 GHz/Bluetooth, Clavier Français AZERTY - Noir ', 'Logitech', 'KB', ' LIGHTSPEED sans fil : cette solution sans fil de qualité professionnelle offre des performances ultra-rapides à un débit de 1 ms. LIGHTSPEED associe performances et une esthétique sobre et sans fil pour votre installation gaming LIGHTSYNC RVB : l éclairage RVB de nouvelle génération synchronise l éclairage avec le contenu de vos jeux et médias et personnalisez chaque touche ou créez des animations personnalisées Switchs Mécaniques Ultra-Plats : les nouveaux switchs gaming hautes performances offrent la vitesse, la précision et les performances d un Switch mécanique tout en étant deux fois plus petit ', '4007.jpg', 214.00, 0 ),
(4008, 'Logitech G213 Prodigy, Clavier Gaming, Eclairage RVB LIGHTSYNC, Résistant aux Éclaboussures, Personnalisable, Commandes Multimédia Dédiées, Clavier Français AZERTY - Noir ', 'Logitech', 'KB', ' LIGHTSYNC RVB : le clavier gaming G213 par Logitech offre cinq zones d éclairage individuelles, chacune étant personnalisable à partir d une palette de près de 16,8 millions de couleurs Résistant aux Eclaboussures et Durable : le clavier mécanique pour gamer G213 est conçu avec une résistance aux éclaboussures éprouvée avec 60 ml de liquide afin d’éviter les accidents Repose-Poignets Intégrés et Pieds Réglables : profitez d’un design confortable et ergonomique avec le clavier gaming Logitech G213, ses repose-poignets intégrés améliorent le confort ', '4008.jpg', 45.99, 14 ),
(4009, 'Razer Cynosa Lite - Clavier de Jeu Avec RGB Chroma (Clés à Membrane Conçues pour les Jeux, Éclairage RGB Chroma, Entièrement Programmable) - FR-Layout RZ03-02740900-R3F1 ', 'Razer', 'KB', 'Description du clavier 	AZERTY Marque 	Razer Couleur 	Eclairage (Lite) Style 	Cynosa Lite (Membrane) Dimensions de l article L x l x H 	48.3 x 48.3 x 4 centimètres', '4009.jpg', 49.93, 4 ),
(4010, 'Logitech G915 TKL Tenkeyless LIGHTSPEED Clavier Gaming Mécanique, Switch ultra-plat GL Tactile, RVB LIGHTSYNC, Design élégant et mince, 40+ heures de jeu, Clavier Français AZERTY - Noir ', 'Logitech', 'KB', ' LIGHTSPEED PRO-GRADE SANS FIL : une performance professionnelle et un taux de rapport de 1 ms. Créez une esthétique épurée et sans fil pour vos stations de combat avec une liberté de gaming ultime. Bluetooth: appareil compatible Bluetooth avec Windows 8 ou version ultérieure, macOS X 10.11 ou version ultérieure, Chrome OS ou Android 4.3 ou version ultérieure, iOS 10 ou version ultérieure LIGHTSYNC RVB : l éclairage RVB de nouvelle génération synchronise l éclairage avec le contenu de vos jeux et médias et personnalisez chaque touche ou créez des animations personnalisées ', '4010.jpg', 194.00, 2 );

INSERT INTO `produits` (`idproduit`, `nom`, `marque`, `categorie`, `description`, `photo`, `prix`, `stock`) VALUES
(5001, 'Logitech G502 HERO Souris Gamer Filaire Haute Performance, Capteur Gaming HERO 25K, 25 600 PPP, RVB, Poids Ajustable, 11 Boutons Programmables, Mémoire Intégrée, PC/Mac - Noire', 'Logitech', 'MOUSE', ' Capteur HERO 25K: la nouvelle génération du capteur optique HERO offre une précision nouvelle à votre souris allant jusqu’à 25 600 PPP tout en ne générant ni lissage, ni filtrage, ni accélération. Taux de rapport USB : 1000 Hz (1 ms) 11 Boutons Programmables et Roulette de Défilement Ultra-Rapide Double Mode: la souris filaire pour gamer Logitech G vous offre une personnalisation complète de vos paramètres de jeu', 'images/MOUSE/5001.jpg', 49.99, 20),
(5002, 'Razer DeathAdder Essential (2021) - Souris de Jeu Essentielle avec capteur Optique 6 400 DPI (Capteur Optique 6 400 DPI réels, boîtier Ergonomique, Extra-résistant) Noir', 'Razer', 'MOUSE', ' Véritable capteur optique de 6 400 DPI Pour des balayages rapides et précis: Gardez toujours le contrôle. La Razer DeathAdder Essential dispose d un véritable capteur optique de 6 400 DPI avec une solide réputation de haute performance éprouvée pour des balayages rapides et précis. Cela vous permet un contrôle fluide et facile malgré la complexité de la bataille. Forme ergonomique Pour profiter confortablement de longues heures de jeu: Soyez hautement performant pendant les marathons de jeu. Sa forme ergonomique s adapte facilement à vos mains, de sorte que vous soyez toujours d attaque au cœur de la bataille pendant de longues heures de jeu.', 'images/RAM/5002.jpg', 19.99 , 45 ),
(5003, 'Razer Naga Trinity - Souris de Jeu MOBA/Mmo (Souris Gamer avec 3 Plaques Latérales Interchangeables, Capteur optique 16 000 dpi 5G, RGB Chroma & Jusqu à 19 boutons Programmables) Noir/Vert', 'Razer', 'MOUSE', ' Capteur optique 16 000 DPI 5G: La Razer Naga Trinity est équipée du capteur optique 5G le plus avancé au monde avec un véritable 16 000 DPI et possède une précision et une vitesse optimales, favorisant la rapidité des mouvements, de cibler vos sorts et de vous sortir du chaud des batailles. 3 plaques latérales interchangeables: Chaque bouton est conçu pour se démarquer, vous garantissant de ne jamais rater vos frappes, fournissant des commentaires tactiles et audibles afin que vous soyez assuré de toutes les activations. Vitesse maximale (IPS) : 450.', 'images/MOUSE/5003.jpg', 70.40, 3 ),
(5004, 'Logitech G402 Hyperion Fury Souris Gamer Filaire, Suivi Optique 4 000 PPP, Ultra-Léger, Ultra-rapide, 8 Boutons Gaming Programmables, Idéale FPS, PC/Mac - Noire.', 'Logitech', 'MOUSE', ' Un Suivi Ultra-Rapide: le modèle G402 offre une vitesse de réaction et d’exécutionde niveau professionnel. Vous pourrez réagir plus vite que la normale pour contrer vos ennemis. Taux de rapport USB : 1000 Hz (1 ms) Huit Boutons Programmables: cette souris gamer est pensée pour le joueur et ses besoins. Avec ses huit boutons programmables, elle va parfaitement s’adapter à ses besoins.', 'images/MOUSE/5004.jpg', 23.99, 0 ),
(5005, 'Logitech G PRO Souris Gamer sans Fil, Capteur Gaming HERO 25K, 25 600 PPP, RVB, Ultra-Léger, 4 à 8 Boutons Programmables, Batterie Longue Durée, POWERPLAY-compatible, PC - Noire.', 'Logitech', 'MOUSE', ' Le Capteur Gamer HERO Nouvelle Génération: la souris gamer de Logitech possède la technologie de capteur optique HERO qui offre des performances optimales et jusqu à 10 fois plus de puissance. Pieds PTFE : > 250 kilomètres Technologie sans Fil LIGHTSPEED: souris gamer sans fil avec technologie wireless LIGHTSPEED offre un taux de rapport USB de 1000 Hz (1ms) et une durabilité: 50 millions de clics .Accélération maximale : > 40 G.', 'images/MOUSE/5005.jpg', 75.00, 20 ),
(5006, 'Logitech Logitech G600 MMO Gaming Mouse RGB Backlit 20 Programmable Buttons Bouchon d oreille 4 Centimeters Noir (Black).', 'Logitech', 'MOUSE', 'USB filaire interface, Comprend 20 boutons et une molette de défilement, Mise en page droite, 8200 DPI format, Soutenu par une garantie du fabricant 3 ans.', 'images/MOUSE/5006.jpg', 73.12, 45 ),
(5007, 'Razer Viper Ultimate - Souris de Jeu sans Fil Esports (Souris de Jeu sans Fil ambidextre 69 g, câble Speedflex, capteur Optique 5G) avec Station de Charge.', 'Razer', 'MOUSE', ' Technologie sans fil ultrarapide Razer HyperSpeed: La souris dispose d’une transmission à haute vitesse et d’une latence extrêmement basse. En outre, vous pourrez changer de fréquence sans aucune interruption dans les environnements les plus bruyants. Vous n’aurez même pas l’impression de jouer avec une souris sans fil Capteur optique 20 K Razer Focus+: Grâce au capteur de 20 000 DPI d’une précision de résolution de 99,6 %, même le mouvement le plus petit de votre souris sera suivi. Ainsi, vous profiterez d’un niveau de précision extrêmement précis pour vos tirs gagnants et les manœuvres d’esquives.', 'images/MOUSE/5007.jpg', 75.73, 9 ),
(5008, 'Razer Atheris Wireless Notebook Ergonomic Gaming Mouse Mercury White.', 'Razer', 'MOUSE', ' Un capteur optique de 7 200 DPI pour une précision de jeu extrême : pourvue d un capteur optique de 7 200 DPI, la Razer Atheris est la souris sans fil dont le nombre de DPI est le plus élevé. Elle vous octroie une précision extrême et un incroyable contrôle, que ce soit sur les feuilles de calcul ou pour les tirs de grande précision, la résolution supérieure fonctionne parfaitement avec plusieurs écrans, et même pour les écrans 4K et plus.', 'images/MOUSE/5008.jpg', 60.28, 0 ),
(5009, 'Logitech G303 Daedalus Apex Performance Edition Gaming Mouse (910–004380) (certifié reconditionné).', 'Logitech', 'MOUSE', 'Capteur optique avancée : technologie de capteur Delta Zero exclusive précisément traduit les mouvements de la main à l écran pour un ciblage plus précis. Conçu avec des commentaires de performance passionnés de jeu : obtenez une meilleure précision et réactivité dans un design ultra léger. Éclairage RVB personnalisables : personnalisez votre éclairage de couleurs pour s adapter à votre style, du système ou l environnement ', 'images/MOUSE/5009.jpg', 35.50, 32 ),
(5010, 'Logitech G502 Proteus Spectrum RGB accordable Gaming Mouse 910–004615 (reconditionné).', 'Logitech', 'MOUSE', 'Ce produit certifié reconditionné est testé et certifié pour chercher du travail et comme neuve. Le processus de rénovation comprend des tests de fonctionnalité, de base de nettoyage, d inspection, et le reconditionnement. Le produit est livré avec tous les accessoires appropriés, un minimum de garantie de 90 jours, et peut arriver dans une zone de génériques.', 'images/MOUSE/5010.jpg', 75.00, 10 );

INSERT INTO `produits` (`idproduit`, `nom`, `marque`, `categorie`, `description`, `photo`, `prix`, `stock`) VALUES
(3001, 'MSI RTX 3070 Gaming Z Trio 8G LHR Carte Graphique NVIDIA GeForce RTX 3070 8 Go GDDR6', 'Nvidia', 'GPU', 'GeForce RTX 3070 Gaming Z Trio 8G LHR. Numéro de pièce : V390-264R, Tuyau central : les tuyaux de chaleur usinés avec précision garantissent un contact maximal et répartissent la chaleur sur toute la longueur du dissipateur thermique, contrôle du flux d air : ne transpirez pas, le contrôle du flux d air guide l air exactement là où il doit être pour un refroidissement optimal.', 'images/GPU/3001.jpg', 1449.00, 20),
(3002, 'Gigabyte GV-N307TAORUS M-8GD Carte Graphique NVIDIA GeForce RTX 3070 Ti 8 Go GDDR6X', 'Nvidia', 'GPU', 'TBC, couleur: Noir, poids du colis: 2.68 kilograms. Dimensions de l emballage de l article: 13.6 L x 42.0 H x 26.5 W (centimeters)', 'images/GPU/3002.jpg', 1699.00, 19),
(3003, 'Asus CERBERUS-GTX1050TI-A4G', 'Nvidia', 'GPU', 'Couleur	‎Noir,Rouge, séries ‎ASUS CERBERUS-GTX1050TI-A4G, 1.44 GHz, ‎4 Go, 1455 MHz, GeForce GTX 1050 Ti; CUDA; Noyaux CUDA: 768; Version OpenGL: 4.5; HDCP, ‎0.72 Kilogrammes', 'images/GPU/3003.jpg', 350.00, 8),
(3004, 'Gigabyte GeForce RTX 3060 Eagle OC 12G (rev. 2.0) NVIDIA 12 Go GDDR6', 'Nvidia', 'GPU', 'Multiprocesseurs NVIDIA Ampere Streaming : les blocs de construction pour les GPU les plus rapides et les plus efficaces au monde, le tout nouvel Ampere SM apporte 2 fois le débit FP32 et une meilleure efficacité énergétique. 2ème génération RT Cores : faites l expérience de 2 fois le débit de 1ère génération RT Cores, plus le RT et l ombrage concurrents pour un tout nouveau niveau de performance de traçage de rayons. Tensor Core 3ème génération : obtenez jusqu à 2 fois plus de débit avec une sparsité structurelle et des algorithmes d IA avancés tels que DLSS. Ces noyaux offrent un énorme boost en matière de performance de jeu et de nouvelles capacités II. Core Clock : 1807 MHz WINDFORCE 2X Refroidisseur', 'images/GPU/3004.jpg', 994.99, 17),
(3005, 'Zotac Gaming GeForce GTX 1660 Super AMP ZT-T16620D-10M', 'Nvidia', 'GPU', 'Refroidissement IceStorm 2.0, design ultra compact, double ventilateur de 90 mm, plaque arrière en métal. 4K / HDR / VR Ready', 'images/GPU/3005.jpg', 888.00, 10),
(3006, 'XFX RX-67XTYPBDP Carte Graphique AMD Radeon RX 6700 XT 12 Go GDDR6 Noir', 'AMD', 'GPU', 'Chipset : AMD RX 6700 XT, mémoire : 12 Go GDDR6 AMD RDNA 2 architecture élève et unifie le jeu. Boost horloge : jusqu à 2622 MHz. Refroidissement : ventilateur triple XFX Speedster QICK319', 'images/GPU/3006.jpg', 979.00, 0),
(3007, 'Carte Graphique, Carte Graphique d ordinateur 4 Go 128 Bits, Carte Graphique PCI Express 3.0 650 MHz pour AMD, Accessoires de réseau Informatique de Bureau', 'AMD', 'GPU', 'Cette carte graphique est silencieuse et silencieuse, offrant un meilleur environnement pour les jeux et le multimédia. La carte graphique d ordinateur a une température de fonctionnement inférieure et une efficacité plus élevée, ce qui peut répondre efficacement à vos besoins. Cette carte graphique de bureau en matériaux ABS, solide et durable, a une longue durée de vie. Facile à utiliser et avec de bonnes performances, de petite taille, pratique à transporter et à ranger. La largeur de bits du cœur est de 128 bits, la capacité de stockage vidéo est de 4 Go et la fréquence centrale est de 650 MHz.', 'images/GPU/3007.jpg', 106.29, 2),
(3008, 'Cartes Graphiques 4K, Cartes Graphiques de Jeu 4G/128bit/GDDR5 pour AMD RX550, Emplacement pour Carte Graphique PCIe 3.0 avec Technologie D affichage AMD Radiateur Y15A', 'AMD', 'GPU', 'Carte graphique DDR5 4 Go 128 bits Avec interface VGA/multimédia haute définition/interface de sortie DV1, prise en charge Blu-ray HD, source audio vidéo de sortie fluide 4K à 60 Hz La consommation d énergie à pleine charge de l ensemble de la carte n est que de 40 W, compatible avec une alimentation de petite puissance, une faible consommation d énergie et une prise en charge plug and play.', 'images/GPU/3008.jpg', 175.00, 5),
(3009, 'Cartes De Remplacement des Cartes Graphiques AMD Radeon RX580 8GB GDDR5 Card GDDR5 Cartes Vidéo PC Gaming 256bit Fit for Ordinateur De Jeu Carte Graphique', 'AMD', 'GPU', 'Avec son design frais, la plaque arrière de protection sécurise les composants pendant le transport et l installation. Ces cœurs offrent une augmentation massive des performances de jeu et de toutes nouvelles capacités.', 'images/GPU/3009.jpg', 575.44, 25),
(3010, 'XFX Speedster MERC319 AMD Radeon RX 6800 XT Core Carte Graphique de Gaming avec GDDR6 HDMI 3xDP RX-68XTALFD9 16 Go', 'AMD', 'GPU', 'La série Speedster présente un style aérodynamique moderne avec un design épuré et élégant. Son design bien pensé permet d optimiser le flux d air pour améliorer le refroidissement et la performance. Une nouvelle architecture de mémoire révolutionnaire qui met en place des niveaux plus élevés de performance et d efficacité pour le jeu 4K. Larchitecture AMD RDNA 2 optimise et unifie le jeu. Larchitecture AMD RDNA 2 optimise et unifie l expérience de jeu, de la performance aux visuels, sur les consoles et PC.
Les puissants accélérateurs qui traitent les intersections des rayons permettent un raytracing accéléré.', 'images/GPU/3010.jpg', 1504.0, 15),
(3011, 'GeForce RTX 3080 Ti - GAMING OC 12 Go carte graphique Gaming', 'Nvidia', 'GPU', 'NIVIDIA Ampere Streaming Multiprocessors 2e génération RT Cores 3e génération Tensor Cores alimentés par GeForce RTX™ 3080 Ti Intégré avec 12 Go GDDR6X interface mémoire 384 bits Système de refroidissement WINDFORCE 3X avec ventilateurs rotatifs alternatifs Plaque arrière en métal de protection RGB Fusion 2.0 Garantie de 4 ans (inscription en ligne requise )La carte graphique utilise la meilleure conception de phase d alimentation pour permettre au MOSFET de fonctionner à basse température, et la conception de protection contre la surchauffe et l équilibrage de charge pour chaque MOSFET, ainsi que les selfs et condensateurs certifiés Ultra Durable, pour offrir d excellentes performances et une durée de vie plus longue du système.', 'images/GPU/3011.png', 1999.00, 20);

INSERT INTO `produits` (`idproduit`, `nom`, `marque`, `categorie`, `description`, `photo`, `prix`, `stock`) VALUES 
(2001, 'Intel BX80684I59600K Processeur Intel Core i59600K 3.7GHz Socket LG1151', 'Intel', 'CPU', 'Intel BX80684I59600K Processeur Intel Core i59600K 3.7GHz Socket LG1151, Processeur Intel i5-9600K LGA1151 3.7Ghz/9M BX80684I59600K. Prises en charge: FCLGA1151 Socket: LG1151. TJUNCTION: 100°C Cache L3: 9Mo. Lithographie: 14 nm Fréquence turbo maximale: 4.60 GHz Bande passante de mémoire maximale: 41.6 GB/s Résolution maximale (HDMI): 4096 x 2304 à 24 Hz | Résolution maximale: 4096 x 2304 à 60 Hz | Résolution maximale (eDP - Écran plat intégré): 4096 x 2304 à 60 Hz', 'images/CPU/2001.jpg', 185.00, 10),
(2002, 'AMD Ryzen 7 5700G processeur 3,8 GHz 16 Mo L3 Boite', 'AMD', 'CPU', 'AMD Ryzen 7 5700G processeur 3,8 GHz 16 Mo L3 Boîte, Cache de processeur: 16 Mo Fabricant de processeur: AMD Lithographie du processeur: 7 nm Modèle de processeur: 5700g', 'images/CPU/2002.jpg', 319.79, 140),
(2003, 'Intel Core i7-11700K processeur 3,6 GHz 16 Mo Smart Cache Boîte', 'Intel', 'CPU', 'Intel Core i7-11700K processeur 3,6 GHz 16 Mo Smart Cache Boîte, Fréquence d’exploitation 3.6GHz, Socket LGA1200 Série Rocket Lake . Lithographie : 14 nm sans ventirad Core i7-11700K avec cache 16Mo 8 cœurs /16 threads', 'images/CPU/2003.jpg', 377.48, 4),
(2004, 'Intel Core I3-10100F 3.60GHZ SKTLGA1200 6.00MB Cache Boxed Noir', 'Intel', 'CPU', 'Intel Core I3-10100F 3.60GHZ SKTLGA1200 6.00MB Cache Boxed Noir, BX8070110100F . Lithographie : 14 nm Fabriqué en Chine Poids du colis : 1.0 kg Dimensions de l emballage de l article : 20.0 x 20.0 x 11.0 cm', 'images/CPU/2004.jpg', 83.49, 75),
(2005, 'INTEL Core i5-10400F 2.9GHz LGA1200 12M Cache Boxed CPU', 'Intel', 'CPU', 'INTEL Core i5-10400F 2.9GHz LGA1200 12M Cache Boxed CPU, BX8070110400F Technologie Intel Turbo Boost 2.0 Fréquence 4,30 GHz. Sensibilité : 107 dB SPL/mW Type de mémoire: DDR4-2666', 'images/CPU/2005.jpg', 160.20, 25),
(2006, 'Processeur Intel Core i5-12600K 20 MB Smart Cache', 'Intel', 'CPU', 'Processeur Intel Core i5-12600K 20 MB Smart Cache Intel Core i5-12600K 6 Performance-Cores (3.6 GHz - 4.9 GHz) + 4 Efficient-Cores (2.8 GHz - 3.6 GHz) Processeur 10 Cores / 16 Threads', 'images/CPU/2006.jpg', 331.39, 46);