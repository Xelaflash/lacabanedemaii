class RemovePrixToProduits < ActiveRecord::Migration[5.2]
  def change
    remove_column :produits, :prix
      add_column :produits, :prix, :decimal

  end
end
