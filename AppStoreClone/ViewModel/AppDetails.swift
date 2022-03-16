//
//  AppModel.swift
//  AppStoreClone
//
//  Created by Maxime Point on 09/03/2022.
//

import Foundation

struct AppDetails : Identifiable {
    
    let id = UUID().uuidString
    let name: String
    let subtitle: String
    let category: String
    let description: String
    let logo: String
    let coverImage: String
    var numberOfNotes: String
    var note: Float
    let age: Int
    var ranking: Int
    let developer: String
    let language: String
    let size: Float
    var purchased: Bool
    
}

extension AppDetails {
    static var games : [AppDetails] {
        return [
            AppDetails(name: "Super Mario Run",
                     subtitle: "Guidez Mario d'un seul geste",
                     category: "Action",
                     description: "Un nouveau jeu Mario à maîtriser d'une seule main ! \n Dans ce jeu, Mario avance constamment et il vous suffit de toucher l'écran pour le contrôler. Agissez au bon moment pour sauter avec style, effectuer des vrilles aériennes ou des sauts muraux, récupérer des pièces et atteindre l'arrivée ! \n Super Mario Run peut être téléchargé gratuitement, et une fois que vous achetez le jeu complet, vous pouvez accéder à l'ensemble des modes de jeu. Aucun paiement supplémentaire ne vous sera demandé. Avant d'acheter le jeu, vous pouvez essayer gratuitement chacun des quatre modes : le tour des mondes, les défis Toad, Remix 10 et l'éditeur de royaume. \n ■Tour des mondes \n Courez et sautez avec style pour sauver la princesse Peach des griffes de Bowser ! Traversez des plaines, explorez des souterrains, des manoirs hantés, des forteresses volantes, des châteaux, etc. \n Terminez les 24 stages pour atteindre le château de Bowser et secourir la princesse Peach. Des défis supplémentaires vous attendent également, par exemple trouver toutes les pièces colorées (il y en a de trois couleurs différentes) ou affronter vos amis pour tenter d'obtenir le meilleur score. Les mondes 1-1 à 1-4 sont disponibles gratuitement. \n Secourir la princesse Peach débloque l'accès au monde étoile, un monde spécial comptant neuf stages. \n ■Remix 10 \n Les stages les plus courts de toute l'histoire des jeux Mario ! Des petites bouchées à déguster sans retenue. Parcourez des zones contenant 10 extraits de stages choisis au hasard et tentez de retrouver Daisy qui s'est perdue sur la carte. Il vous faudra sûrement multiplier les tentatives pour y parvenir ! \n ■Défis Toad \n Affichez votre style, jouez contre vos amis et défiez des joueurs du monde entier ! \n Dans ce mode de jeu compétitif, un défi différent vous attend à chaque partie. \n Comparez votre style avec celui d'autres joueurs, récupérez des pièces et impressionnez les Toads pour obtenir le meilleur score. Toujours grâce à votre style, remplissez la jauge de pièces en folie. Une fois cette jauge pleine, à vous les bonus de pièces ! Si vous remportez le défi, les Toads qui vous encouragent s'installeront dans votre royaume, qui pourra ainsi prospérer ! \n ■Éditeur de royaume \n Récupérez des pièces et impressionnez des Toads pour construire votre propre royaume. \n Placez des bâtiments et des ornements variés dans votre royaume pour le personnaliser. Plus de 100 éléments différents vous attendent dans l'éditeur de royaume ! Plus vous recrutez de Toads dans les défis Toad, plus vous aurez d'éléments à votre disposition. Avec le soutien des Toads, votre royaume se développera petit à petit ! \n ■Contenu disponible après l'achat des mondes \n・ Tous les stages du tour des mondes \n Saurez-vous triompher des épreuves les plus corsées ? \n・ Des tickets de défi Toad plus faciles à obtenir \n Il est plus facile d'obtenir les tickets de défi Toad utilisés dans le mode Remix 10 et les défis Toad. Ces tickets s'obtiennent via l'éditeur de royaume dans les maisons du jeu bonus et les blocs ?, ou encore durant le tour des mondes, entre autres. \n・ Personnages jouables supplémentaires \n Si vous sauvez Peach à l'issue du monde 6-4 ou si vous placez les maisons de Luigi, Yoshi ou Toadette dans votre royaume, les personnages correspondants se joindront à vous, et vous pourrez les incarner. Ils n'ont pas les mêmes aptitudes que Mario, alors n'hésitez pas à employer leurs talents uniques à bon escient dans le tour des mondes et les défis Toad ! \n・ Plus de stages dans les défis Toad \n Les défis Toad gagneront en profondeur : sept types de défis différents vous seront proposés. Dans les nouveaux défis, vous pourrez notamment recruter des Toads jaunes et des Toads violets. \n ・ Pas d'attente dans Remix 10 \n Vous pourrez enchaîner les parties de Remix 10 en continu, sans aucun délai. \n *Une connexion à Internet est nécessaire pour jouer. Les éventuels coûts relatifs à cette connexion sont entièrement à votre charge. \n *Peut contenir de la publicité.",
                     logo: "SuperMarioRun",
                     coverImage: "couv_SuperMarioRun",
                     numberOfNotes: "7,5 K",
                     note: 3.4,
                     age: 4,
                     ranking: 25,
                     developer: "Nintendo Co., Ltd.",
                     language: "FR",
                     size: 207.5,
                     purchased: true),
            AppDetails(name: "Cut The Rope Remastered",
                     subtitle: "L'histoire continue",
                     category: "Casse-tête",
                     description: "Om Nom est de retour dans une superbe version remastérisée en 3D de Cut the Rope, le jeu de réflexion légendaire !\n Coupe des cordes, évite les obstacles et utilise les boosts pour donner les bonbons à Om Nom, le petit monstre vert friand de sucreries. Découvre un jeu amusant et addictif utilisant la physique, un protagoniste adorable et des aventures palpitantes. Plus d'un milliard de joueurs ont déjà été conquis par la version originale. Rejoins-les ! Et si tu es un vétéran de la série, prépare-toi à des nouveautés incroyables !\n GAMEPLAY PRIMÉ : Gagnant des Apple Design, BAFTA, et GDC awards.\n DES NIVEAUX ÉPOUSTOUFLANTS : Des obstacles diaboliques et des bonus démentiels, des chapeaux magiques aux coussins péteurs.\n UN PROTAGONISTE ENCHANTEUR : Ce petit gourmand de Om Nom est mignon à croquer !\n DES GRAPHISMES ENTIÈREMENT REPENSÉS : Un menu principal somptueux, des niveaux en 3D hauts en couleur et de nouvelles animations adorables pour Om Nom.\n DÉCOUVRE NIBBLE NOM : C'est l'enfant de Om Nom, aussi mignon qu'il est espiègle. Son appétit est bien plus grand que sa taille ne laisse le croire.",
                     logo: "CutTheRope",
                     coverImage: "couv_CutTheRope",
                     numberOfNotes: "21",
                     note: 4.9,
                     age: 4,
                     ranking: 75,
                     developer: "Paladin Studios",
                     language: "FR",
                     size: 492.8,
                    purchased: false)
        ]
    }
    
    
    static var secondApp : AppDetails {
        AppDetails(name: "Yuka - Scan de produits",
                 subtitle: "Analyse de produit",
                 category: "Forme et santé",
                 description: "◆ TOP 10 DES APPLICATIONS GRATUITES ◆ \nYuka scanne le code-barres des produits alimentaires & cosmétiques et décrypte leur composition. L'application évalue l'impact des produits sur la santé via un code couleur allant du vert au rouge. Additifs, ingrédients, valeurs nutritionnelles : une fiche détaillée vous permet ensuite de comprendre l'évaluation de chaque produit. \nFace à des étiquettes indéchiffrables, Yuka apporte plus de transparence en un simple scan et vous permet de manger mieux et de consommer de façon plus éclairée. ◆ RECOMMANDATIONS DE MEILLEURS PRODUITS ◆ \nPour tous les produits ayant une évaluation négative, Yuka recommande des alternatives de produits similaires meilleurs pour la santé, en toute indépendance. \nLe produit scanné contient trop de sucre et est bourré d'additifs ? Yuka recommande en toute indépendance des produits moins sucrés et sans ingrédients controversés.",
                 logo: "Yuka",
                 coverImage: "couv_Yuka",
                 numberOfNotes: "7,4 K",
                 note: 4.7,
                 age: 4,
                 ranking: 6,
                 developer: "Yuca",
                 language: "FR",
                   size: 173.1,
                purchased: true)
    }
    
    static var appOfTheDay : AppDetails {
        AppDetails(name: "BetterSleep : Dormezmieux",
                 subtitle: "Musique et Méditation",
                 category: "Forme et santé",
                 description: "Relax Melodies change de nom et devient BetterSleep.\nReprenez le contrôle de votre sommeil avec BetterSleep et rejoignez notre communauté de millions de personnes qui dorment mieux chaque nuit.\n Présenté dans People Magazine, Mashable, et bien d’autres.Commencez dès maintenant à dormir et à profiter de nuits de sommeil complètes comme vous ne l’avez pas fait depuis longtemps.\nSélectionnez des sons et des mélodies que vous aimez, combinez-les et réglez le volume de chaque son pour créer un paysage sonore. Ajoutez l’une de nos méditations spécifiquement conçues pour le sommeil, allongez-vous, écoutez et prenez plaisir à vous endormir. C’est simple et ça fonctionne. Créez des mix de sons nouveaux et différents à chaque fois!",
                 logo: "BetterSleep",
                 coverImage: "couv_BetterSleep",
                 numberOfNotes: "7,4 K",
                 note: 4.5,
                 age: 4,
                 ranking: 118,
                 developer: "Ipnos Software Inc.",
                 language: "FR",
                 size: 325.9,
                purchased: false)
    }
}
    
    
