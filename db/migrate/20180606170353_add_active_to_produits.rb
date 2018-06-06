class AddActiveToProduits < ActiveRecord::Migration[5.2]
  def change
    add_column :produits, :active, :boolean
  end
end
