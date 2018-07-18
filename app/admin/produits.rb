ActiveAdmin.register Produit do
  permit_params  :marque, :nom, :reference, :photo, :quantite, :prix, :frais_de_port, :poids, :unit, :description, :composition, :utilisation, :gamme_id, :active

  index do
    selectable_column
    column :reference
    column :gamme
    column :nom
    column :marque
    column :active
    column :quantite
    column :prix
    column :frais_de_port
    column :poids
    column :unit
    column :description
    column :composition
    column :utilisation
    column :created_at
    column :updated_at
    column :id
    actions
  end
end
