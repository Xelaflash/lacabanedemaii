class CreateProduits < ActiveRecord::Migration[5.2]
  def change
    create_table :produits do |t|
      t.string :marque
      t.string :nom
      t.string :reference
      t.text :photo
      t.integer :quantite
      t.string :prix
      t.integer :frais_de_port
      t.integer :poids
      t.text :description
      t.text :composition
      t.text :utilisation
      t.references :gamme, foreign_key: true

      t.timestamps
    end
  end
end
