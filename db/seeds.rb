puts "destroy all"

User.destroy_all

puts "start seed"

User.create!(email: "toto@toto.com", password: "azerty", admin: true, prenom: "toto", nom: "toto", adresse: "21 rue des champs 75005 paris", telephone: "0600000000")

maison = Gamme.create!(name: "Maison")
bien = Gamme.create!(name: "Bien-être")
mer = Gamme.create!(name: "Bord de Mer")
enfant = Gamme.create!(name: "Enfant")


Produit.create!(marque:"Alep", nom: "Savon Alep 20%", reference: "alep 20", photo:"https://res.cloudinary.com/drzibyjvb/image/upload/v1527004932/savon-alep-20.jpg", quantite:3, prix: 7, frais_de_port: 5, poids: 200, description: "Véritable “or vert” des aleppins, ce célèbre cube mordoré au cœur vert et moelleux puise sa richesse dans les
vertus inégalées de l’huile d’olive et de la noble et salutaire huile de laurier. Remarquablement riche en huile
de laurier (20% à la cuisson), il est particulièrement recommandé pour les peaux réactives, à problèmes, dont
il aide à maintenir la bonne hydratation. Estampillé d’origine, Aleppo Soap Co. vous garantit son authenticité,
sa provenance et sa traçabilité.", composition: "olea europaea (olive) fruit oil*, laurus nobilis (laurel) fruit oil *, aqua*, sodium hydroxide.
*Origine végétale/Plant based : 99,9%.", utilisation: "Usage quotidien, corps et visage.", gamme: bien )




puts "end seed"





