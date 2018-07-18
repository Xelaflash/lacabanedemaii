ActiveAdmin.register Produit do
  permit_params  :marque, :nom, :reference, :photo, :quantite, :prix, :frais_de_port, :poids, :unit, :description, :composition, :utilisation, :gamme_id, :active
end
