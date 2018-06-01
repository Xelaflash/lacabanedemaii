puts "destroy all"

User.destroy_all
Produit.destroy_all

puts "start seed"

User.create!(email: "toto@toto.com", password: "azerty", admin: true, prenom: "toto", nom: "toto", adresse: "21 rue des champs 75005 paris", telephone: "0600000000")

maison = Gamme.create!(name: "Maison")
bien = Gamme.create!(name: "Bien-être")
mer = Gamme.create!(name: "Bord de Mer")
enfant = Gamme.create!(name: "Enfant")


Produit.create!(marque:"Aleppo", nom: "Savon Alep 20%", reference: "alep 20", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1527004932/savon-alep-20.jpg", quantite:3, prix: 7, frais_de_port: 5, poids: 200, description: "Véritable “or vert” des aleppins, ce célèbre cube mordoré au cœur vert et moelleux puise sa richesse dans les
vertus inégalées de l’huile d’olive et de la noble et salutaire huile de laurier. Remarquablement riche en huile
de laurier (20% à la cuisson), il est particulièrement recommandé pour les peaux réactives, à problèmes, dont
il aide à maintenir la bonne hydratation. Estampillé d’origine, Aleppo Soap Co. vous garantit son authenticité,
sa provenance et sa traçabilité.", composition: "olea europaea (olive) fruit oil*, laurus nobilis (laurel) fruit oil *, aqua*, sodium hydroxide.
*Origine végétale/Plant based : 99,9%.", utilisation: "Usage quotidien, corps et visage.", gamme: bien )

Produit.create!(marque:"Aleppo", nom: "Savon de rasage", reference: "savon de rasage", photo:"http://res.cloudinary.com/drzibyjvb/image/upload/v1527003389/recharge-savon-de-rasage.jpg", quantite:3, prix: 15.5, frais_de_port: 4.95, poids: 100, description: "Véritable savon du barbier, cuit au chaudron en Alep, avant d'être broyé, bonifié, moulé et conditionné en Provence; spécial peau délicate, intolérante. Pur végétal, sans conservateur, naturel à 99%, aux huiles d’olive et de laurier. Qualité supérieure : surgras, riche en acides gras indispensables, vitamines, oligoéléments, antioxydants, insaponifiables.  Apprête la peau, la préserve du feu du rasoir, satine l’épiderme fragile ; apprivoise et dompte le poil. Durable, économique.", composition: "Sodium olivate*, aqua (water), sodium laurate*, laurus nobilis (laurel) fruit oil*, olea europaea (olive) fruit oil*, decyl glucoside, glycerin*, sodium hydroxide. *origine naturelle/natural based: 99%", utilisation: "Bien mouiller à l’eau chaude visage (2 min) et blaireau, avec lequel enduire le visage d’un peu de savon, jusqu’à obtenir une belle mousse neigeuse, onctueuse, à l'aide d'un blaireau ou d'une brosse a barbe. D’une main légère, raser dans le sens de la pousse, puis à rebrousse-poil. Se rincer à l’eau froide.", gamme: bien )


Produit.create!(marque:"Aleppo", nom: "blaireau", reference: "blaireau", photo:"http://res.cloudinary.com/drzibyjvb/image/upload/v1527003389/blaireau.jpg", quantite:8, prix: 10, frais_de_port: 4.95, poids: 100, description: "Pour toute barbe, de la plus dure à la plus douce, du junior au vétéran. Pour toute peau. Blaireau pures soies de sanglier, sur manche de hêtre ergonomique. Abondants, fermes, très hydrophiles pour faire bien mousser le savon, ils apprêtent  parfaitement la barbe et la peau, même sensible, à l’action du rasoir.", composition: "acier inoxydable", utilisation: "Faire mousser sur le visage humidifié le savon à barbe recueilli dans les soies humides. Se raser, rincer et secouer la brosse. ", gamme: bien )

Produit.create!(marque:"Aleppo", nom: "Savon liquide 12%", reference: "savon liquide 12%", photo:"http://res.cloudinary.com/drzibyjvb/image/upload/v1527003390/savon-dalep-liquide-12-laurier.jpg", quantite:4, prix: 12, frais_de_port: 6.15, poids: 500, description: "Savon liquide, authentique surgras végétal d’Alep aux vertus cosmétiques éprouvées. Pur végétal, produit par saponification au chaudron en discontinu d’huile d’olive, enrichie de 12% d’huile de laurier noble. Riche en acides gras indispensables, vitamines, antioxydants, insaponifiables, il nettoie efficacement sans assécher la peau. Particulièrement recommandé aux épidermes sensibles à l’équilibre fragile. Usage familial quotidien de pied en cap, avec la volupté que procure l'extrême douceur de ce rare et précieux savon. Sans parabène, ni colorant, ni laureth sulfate", composition: "Aqua* (water), potassium olivate*, potassium laurate*, glycerin*, sodium chloride*, olea europaea (olive) fruit oil*, tetrasodium glutamate diacetate, potassium benzoate, potassium sorbate, laurus nobilis (laurel) fruit oil*, tocopherol. *origine naturelle/natural origin : 99%
", utilisation: "Mains, visage et corps en savon douche. Utiliser à faible dose. Mouiller pour faire mousser. Très économique et pratique grâce à la pompe.", gamme: bien )




puts "end seed"





