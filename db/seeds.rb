puts "destroy all"

puts "start seed"

u = User.create!(email: "toto@toto.com", password: "azerty", admin: true, prenom: "toto", nom: "toto", adresse: "21 rue des champs 75005 paris", telephone: "0600000000" )


puts "end seed"
