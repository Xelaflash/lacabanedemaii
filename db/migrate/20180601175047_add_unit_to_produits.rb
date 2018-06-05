class AddUnitToProduits < ActiveRecord::Migration[5.2]
  def change
    add_column :produits, :unit, :string
  end
end
