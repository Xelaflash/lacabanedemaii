puts "destroy all"

User.destroy_all
OrderItem.destroy_all
Produit.destroy_all


puts "start seed"

User.create!(email: "toto@toto.com", password: "azerty", admin: true, prenom: "toto", nom: "toto", adresse: "21 rue des champs 75005 paris", telephone: "0600000000")

maison = Gamme.create!(name: "Maison")
bien = Gamme.create!(name: "Bien-être")
mer = Gamme.create!(name: "Bord de Mer")
enfant = Gamme.create!(name: "Enfant")


Produit.create!(marque:"Aleppo", nom: "Savon Alep 20%", reference: "alep 20", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1527004932/savon-alep-20.jpg", quantite:3, prix: 7.00, frais_de_port: 5.00, poids: 200, unit: "G", description: "Véritable “or vert” des aleppins, ce célèbre cube mordoré au cœur vert et moelleux puise sa richesse dans les
vertus inégalées de l’huile d’olive et de la noble et salutaire huile de laurier. Remarquablement riche en huile
de laurier (20% à la cuisson), il est particulièrement recommandé pour les peaux réactives, à problèmes, dont
il aide à maintenir la bonne hydratation. Estampillé d’origine, Aleppo Soap Co. vous garantit son authenticité,
sa provenance et sa traçabilité.", composition: "olea europaea (olive) fruit oil*, laurus nobilis (laurel) fruit oil *, aqua*, sodium hydroxide.
*Origine végétale/Plant based : 99,9%.", utilisation: "Usage quotidien, corps et visage.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon Alep Laurier 12%", reference: "alep 12%", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215022/savon-alep-laurier-12.jpg", quantite:3, prix: 5.00, frais_de_port: 4.95, poids: 200, unit: "G", description: "Réputé depuis la plus haute Antiquité, ce savon cuit au chaudron, enrichi en huile de laurier, se gorge de grand air durant 9 mois pour révéler à maturité sa fermeté, sa teinte caractéristique, garants de ses hautes qualités cosmétiques. Commercialisé dans le respect des intérêts des agriculteurs locaux, du Maître-savonnier et de ses ouvriers, cette précieuse gemme d’Alep, prototype de tous les savons, nettoie parfaitement et respecte l’équilibre des peaux les plus fragiles.", composition: "olea europaea (olive) fruit oil*, laurus nobilis (laurel) fruit oil*, aqua*, sodium hydroxide.
  *Origine végétale/Plant based: 99,9%.", utilisation: "Usage quotidien, corps et visage.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon Alep 30%", reference: "alep 30%", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1527003390/savon-alep-30.jpg", quantite: 12, prix: 8.50, frais_de_port: 4.95, poids: 200, unit: "G", description: "Savon de très haute qualité. Sa très forte teneur en huile de laurier (30% à la cuisson) rend parfumée, douce et veloutée la peau normale, fait le bonheur des peaux frêles, fragiles, difficiles, car il respecte l’équilibre de l’eau à leur surface et les protège. Légèrement antiseptique, cette huile le magnifie en outre, de la profusion de ses composants actifs, antioxydants, insaponifiables, vitamines, acides gras indispensables. D’une exceptionnelle douceur, pur végétal, durable, donc économique, il est souverain pour votre peau et l'environnement.", composition: "olea europaea (olive) fruit oil*, laurus nobilis (laurel) fruit oil*, aqua*, sodium hydroxide.
  *Origine végétale/Plant based: 99,9%.", utilisation: "Usage quotidien, corps et visage.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon fleur de rose", reference: "savon fleur de rose", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215021/savon-dalep-fleur-de-rose.jpg", quantite: 6, prix: 4.00, frais_de_port: 4.95, poids: 100, unit: "G", description: "Savonnette artisanale d'Alep pure huile d’olive, enrichie d’huile de laurier et délicatement parfumée à l'exquise fleur de rose.  Elle nettoie aussi les peaux matures sans les irriter, respecte leur hydratation.
  Ce savon se décline également sous deux autres senteur : fleur d'oranger et Jasmin.",
   composition: "Sodium olivate*, aqua (water), parfum (fragrance), olea europaea (olive) fruit oil*, sodium laurate*, sodium hydroxide, citronellol, geraniol.
  *origine végétale/*plant based: 97%
", utilisation: "Matin et soir pour la toilette. Format réduit, léger, très pratique et confortable. Aussi sèche qu'un authentique pain d'Alep, elle est durable, économique.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon olive laurier", reference: "savon olive laurier", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1527003390/savon-dalep-olive-laurier-100g.jpg", quantite: 3, prix: 4.00, frais_de_port: 4.95, poids: 100, unit: "G", description: "Savonnette d'Alep, moulée à partir de l'authentique pain savon, cuit au chaudron en Alep. À base d’huile d’olive additionnée en cours de saponification, d’huile de laurier noble, riche en acides gras, antioxydants et insaponifiables, délicieusement parfumée au sublime laurier d'Apollon. Pour toilette de la peau normale, fragile ou réactive, grasse, mixte ou sèche ; toilette intime.", composition: "Sodium olivate*, aqua (water), sodium laurate*, laurus nobilis (laurel) oil*, olea europaea (olive) fruit oil*, sodium chloride,  sodium hydroxide.
  * origine végétale/*plant based: 99,9
", utilisation: "Petit format pour la chambre d’amis ou la trousse de voyage.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon exfoliant argan", reference: "Savon exfoliant argan", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215021/savon-dalep-exfoliant-argan-bio.jpg", quantite: 6, prix: 5.00, frais_de_port: 4.95, poids: 100, unit: "G", description: "Dans ce savon, trois huiles, précieuse d’olive, remarquable de laurier noble, exceptionnelle d’argan, conjuguent leurs propriétés anti-inflammatoires, antiseptiques, anti-vieillissement cellulaire. Elles sont en effet, très riches en composants actifs sur les téguments : acides gras indispensables, antioxydants, insponifiables, vitamines. Saponifiées en discontinu au chaudron, selon la méthode ancestrale d’Alep, elles sont enrichies de poudre de noyaux d’olive, délicatement abrasifs. Avec ce savon, grain de peau affiné, teint éclatant, fraîcheur épanouie. Senteur fruitée, miellée, gourmande de la fleur d'argan.", composition: "Sodium olivate*, aqua (water), parfum (fragrance), sodium laurate*, olea europaea (olive) fruit oil*, argania spinosa kernel oil*, triticum vulgare (wheat) bran*, prunus armeniaca (apricot) seed powder*, olea europaea (olive) seed powder*, sodium hydroxide, coumarin.
*origine végétale/*plant based: 97,3%.", utilisation: "Un gommage du corps par semaine en moyenne sur peau normale, une fois par mois pour les peaux sèches, sensibles et réactives et pour le visage (avec un gant de crêpe de préférence).", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon surgras argile gommante", reference: "Savon surgras argile gommante", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1527003390/savon-dalep-surgras-argile-gommante.jpg", quantite: 2, prix: 8.00, frais_de_port: 4.95, poids: 150, unit: "G", description: "Prestigieux savon-laurier artisanal du Massif calcaire aleppin, au rassoul et aux huiles d’olive et de baie de laurier saponifiées à froid, riche d’oligo-éléments et d’acides gras indispensables. Doux mais efficace pour exfolier la peau normale, grasse ou mixte.", composition: "Olea europaea (olive) fruit oil*, gossypium herbaceum (cotton) seed oil*, laurus nobilis (laurel) fruit oil*, helianthus annuus (sunflower) seed oil*, soybean (glycine soja) oil*, argilla extract (minerals clay)*, cocos nucifera (coconut) oil*, aqua*, sodium hydroxide.
  *Origine naturelle/Natural origin: 99,9%.", utilisation: "Usage corps et visage.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon surgras laurier noble", reference: "Savon surgras laurier noble", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215021/savon-dalep-surgras-laurier-noble-35.jpg", quantite: 4, prix: 8.00, frais_de_port: 4.95, poids: 150, unit: "G", description: "Ce savon surgras, conçu pour peaux très sèches et intolérantes, est cuit au chaudron à partir d’huiles végétales d’olive et de laurier de première qualité. Souveraine de la cosmétique levantine pour ses précieuses vertus médicinales, l’huile de laurier noble, rétablit efficacement le film hydrolipidique, protecteur naturel de la peau. Grâce à cette très forte teneur en laurier, 'l’Alep surgras' purifie à merveille et favorise la fraîcheur du teint.", composition: "Olea europaea (olive) fruit oil*, laurus nobilis (laurel) fruit oil*, gossypium herbaceum (cotton) seed oil*, helianthus annuus (sunflower) seed oil*, glycine soja (soybean) oil*, cocos nucifera (coconut) oil*, aqua, sodium hydroxide.
*Origine végétale/Plant based : 99.9%.", utilisation: "Usage quotidien corps et visage.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon surgras thé réparateur", reference: "Savon surgras thé réparateur", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215021/savon-dalep-surgras-the-reparateur.jpg", quantite: 3, prix: 8.00, frais_de_port: 4.95, poids: 150, unit: "G", description: "Panacée des peaux délicates à l’équilibre fragile, c’est un savon cuit au chaudron à partir de feuilles de thé, d’huiles vierges d’olive et de laurier, riche en tanin, vitamines, antioxydants.
  Utilisées depuis toujours en cosmétologie, les feuilles de thé ont le bienfaisant avantage de garder sa fermeté à la peau et de l’aider à lutter contre le vieillissement.", composition: "Olea europaea (olive) fruit oil*, gossypium herbaceum (cotton) seed oil*, laurus nobilis (laurel) fruit oil*, helianthus annuus (sunflower) seed oil*, glycine soja (soybean) oil*, camellia sinensis (tea) leaf extract, cocos nucifera (coconut) oil*, aqua, sodium hydroxide.
*Origine naturelle/Natural origin : 99,9%.", utilisation: "Usage quotidien corps et visage, sur peau mouillée avec ou sans gant.", gamme: bien, active: true )



Produit.create!(marque:"Aleppo", nom: "Savon liquide 12%", reference: "savon liquide 12%", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/q_100/v1527003390/savon-dalep-liquide-12-laurier.jpg", quantite:4, prix: 12.00, frais_de_port: 6.15, poids: 500, unit: "ML", description: "Savon liquide, authentique surgras végétal d’Alep aux vertus cosmétiques éprouvées. Pur végétal, produit par saponification au chaudron en discontinu d’huile d’olive, enrichie de 12% d’huile de laurier noble. Riche en acides gras indispensables, vitamines, antioxydants, insaponifiables, il nettoie efficacement sans assécher la peau. Particulièrement recommandé aux épidermes sensibles à l’équilibre fragile. Usage familial quotidien de pied en cap, avec la volupté que procure l'extrême douceur de ce rare et précieux savon. Sans parabène, ni colorant, ni laureth sulfate.", composition: "Aqua* (water), potassium olivate*, potassium laurate*, glycerin*, sodium chloride*, olea europaea (olive) fruit oil*, tetrasodium glutamate diacetate, potassium benzoate, potassium sorbate, laurus nobilis (laurel) fruit oil*, tocopherol. *origine naturelle/natural origin : 99%.
", utilisation: "Mains, visage et corps en savon douche. Utiliser à faible dose. Mouiller pour faire mousser. Très économique et pratique grâce à la pompe.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Eau de beauté rose", reference: "Eau de beauté rose", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215022/eau-de-beaute-rose-dalep-240ml.jpg", quantite:6, prix: 3.50, frais_de_port: 4.95, poids: 240, unit: "ML", description: "Un parfum séduisant, une senteur d’Orient délicate et légère, un soin d'exception en friction au réveil, sur visage, cou, décolleté, aisselles, poignets ; en lotion pour le démaquillage du soir. Raffinement dans la toilette, elle nettoie, rafraîchit, raffermit la peau. Exquise senteur de rose, suave et légère.
  Ce produit se décline en deux autres parfums (fleur d'oranger et jasmin).", composition: "Aqua, parfum (fragrance), potassium sorbate, sodium benzoate, citric acid, benzyl alcohol, geraniol, citronellol, CI 14720, CI 73015.", utilisation: "Soin du visage : sur un tampon d’ouate, le matin pour tonifier, le soir pour peaufiner le démaquillage ou même démaquiller. Dans le bain: verser l’équivalent d’un verre à thé. Quelques gouttes sur l’oreiller ou dans l’armoire pour parfumer.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Masque rassoul", reference: "Masque rassoul", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215022/masque-rassoul-laurier-surgras.jpg", quantite:10, prix: 14.00, frais_de_port: 4.95, poids: 140, unit: "G", description: "Avec de l’eau tiède, le rassoul à l’huile de laurier forme une pâte onctueuse. Masque naturel à plus de 99,9%, sans tensio-actifs ni sulfates. L’utiliser en masque facial et corporel : s’enduire le corps sur peau sèche. Laisser en place environ 3 min, puis gommer avec un gant du hammam. Bien rincer. C’est aussi l’allié du cuir chevelu et des cheveux qu’il protège et auxquels il donne tenue, gonflant, attrait. Le garder 5 à 10 min en masque capillaire. Rincer. Faire un shampoing.", composition: "Aqua*, Kaolin*, Moroccan Lava Clay*, Illite*, Bentonite*, Laurus Nobilis Fruit Oil*, Benzyl Alcohol.
* Origine naturelle / Natural origin.", utilisation: "En masque sur le corps ou en shampoing. Utilisation régulière.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon noir", reference: "Savon noir", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215022/savon-noir-rassoul-laurier.jpg", quantite:9, prix: 11.5, frais_de_port: 4.95, poids: 140, unit: "G", description: "Pâte de savon artisanal surgras pur huiles d’olive et laurier riches en acides gras indispensables et antioxydants, saponifiées en discontinu à la potasse et additionnées de rassoul (argile rouge) : une triade naturelle à plus de 99,9%.", composition: "Aqua*, potassium olivate*, laurus nobilis fruit oil* (potassium salt), sodium carbonate, glycerin*, moroccan lava clay*, caramel, potassium hydroxide.
* origine naturelle/natural origin: 99%.", utilisation: "Lors d’un bain chaud et prolongé, gommez votre corps à l’aide d’un gant du hammam puis enduisez-le de savon noir et massez de la tête aux pieds. Un rinçage à l’eau vous laissera une peau de satin.
Utilisation régulière, avec un gant de crêpe (kessa) de préférence.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Savon de rasage", reference: "savon de rasage", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215022/savon-de-rasage-laurier-surgras.jpg", quantite:3, prix: 15.50, frais_de_port: 4.95, poids: 100, unit: "G", description: "Véritable savon du barbier, cuit au chaudron en Alep, avant d'être broyé, bonifié, moulé et conditionné en Provence; spécial peau délicate, intolérante. Pur végétal, sans conservateur, naturel à 99%, aux huiles d’olive et de laurier. Qualité supérieure : surgras, riche en acides gras indispensables, vitamines, oligoéléments, antioxydants, insaponifiables.  Apprête la peau, la préserve du feu du rasoir, satine l’épiderme fragile ; apprivoise et dompte le poil. Durable, économique.", composition: "Sodium olivate*, aqua (water), sodium laurate*, laurus nobilis (laurel) fruit oil*, olea europaea (olive) fruit oil*, decyl glucoside, glycerin*, sodium hydroxide. *origine naturelle/natural based: 99%", utilisation: "Bien mouiller à l’eau chaude visage (2 min) et blaireau, avec lequel enduire le visage d’un peu de savon, jusqu’à obtenir une belle mousse neigeuse, onctueuse, à l'aide d'un blaireau ou d'une brosse a barbe. D’une main légère, raser dans le sens de la pousse, puis à rebrousse-poil. Se rincer à l’eau froide.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Recharge Savon de rasage", reference: "Recharge Savon de rasage", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1527003389/recharge-savon-de-rasage.jpg", quantite:3, prix: 10.50, frais_de_port: 4.95, poids: 100, unit: "G", description: "Véritable savon du barbier, cuit au chaudron en Alep, avant d'être broyé, bonifié, moulé et conditionné en Provence; spécial peau délicate, intolérante. Pur végétal, sans conservateur, naturel à 99%, aux huiles d’olive et de laurier. Qualité supérieure : surgras, riche en acides gras indispensables, vitamines, oligoéléments, antioxydants, insaponifiables.  Apprête la peau, la préserve du feu du rasoir, satine l’épiderme fragile ; apprivoise et dompte le poil. Durable, économique.", composition: "Sodium olivate*, aqua (water), sodium laurate*, laurus nobilis (laurel) fruit oil*, olea europaea (olive) fruit oil*, decyl glucoside, glycerin*, sodium hydroxide. *origine naturelle/natural based: 99%", utilisation: "Bien mouiller à l’eau chaude visage (2 min) et blaireau, avec lequel enduire le visage d’un peu de savon, jusqu’à obtenir une belle mousse neigeuse, onctueuse, à l'aide d'un blaireau ou d'une brosse a barbe. D’une main légère, raser dans le sens de la pousse, puis à rebrousse-poil. Se rincer à l’eau froide.", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Porte savon", reference: "Porte savon", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215022/porte-savon-dalep.jpg", quantite:1, prix: 6.50, frais_de_port: 4.95, poids: 100, unit: "G", description: "Porte-savon rectangulaire, de style rétro, cannelé pour maintenir le savon au sec, gage essentiel de sa durabilité. Fabrication artisanale. Format standard pour savon de 100 à 400g.", composition: "acier inoxydable", utilisation: "HAUTEUR: 2,5 cm, LARGEUR: 11 cm, PROFONDEUR: 10 cm", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Boite a savon", reference: "Boite a savon", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215022/boite-a-savon-aleppo-soap.jpg", quantite:5, prix: 11.50, frais_de_port: 4.95, poids: 100, unit: "G", description: "Boîte au style rétro, au toucher velouté, très pratique en voyage. Son porte-savon à canelures pour maintenir le savon au sec, gage essentiel de sa durabilité. Fabrication artisanale, griffée Aleppo Soap Co.", composition: "aluminium", utilisation: "HAUTEUR: 6 cm, LARGEUR: 9 cm, PROFONDEUR: 7,5 cm", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "Porte blaireau", reference: "Porte blaireau", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1528215021/porte-blaireau.jpg", quantite:6, prix: 4.00, frais_de_port: 4.95, poids: 100, unit: "G", description: "Robuste fil d’acier inoxydable, très résistant à la corrosion. Il se dresse en porte-blaireau à l’élégant dessin original en 'clef de fa', celle de la voix grave des mâles. Avec le blaireau, le savon à barbe et l’alun, c’est l’un des essentiels du rituel de rasage quotidien. Hygiénique, il est aussi utile en voyage que chez soi car il maintient après usage, le  blaireau sec et en prolonge nettement la durabilité.", composition: "acier inoxydable", utilisation: "HAUTEUR: 10 cm, LARGEUR: 8 cm", gamme: bien, active: true )

Produit.create!(marque:"Aleppo", nom: "blaireau", reference: "blaireau", photo:"http://res.cloudinary.com/drzibyjvb/image/upload/v1527003389/blaireau.jpg", quantite:8, prix: 10.00, frais_de_port: 4.95, poids: 100, unit: "G", description: "Pour toute barbe, de la plus dure à la plus douce, du junior au vétéran. Pour toute peau. Blaireau pures soies de sanglier, sur manche de hêtre ergonomique. Abondants, fermes, très hydrophiles pour faire bien mousser le savon, ils apprêtent  parfaitement la barbe et la peau, même sensible, à l’action du rasoir.", composition: "acier inoxydable", utilisation: "Faire mousser sur le visage humidifié le savon à barbe recueilli dans les soies humides. Se raser, rincer et secouer la brosse. ", gamme: bien, active: true )



OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"


puts "end seed"





