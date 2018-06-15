class ModifyFraisDePortToProduits < ActiveRecord::Migration[5.2]
  def change
    change_column :produits, :frais_de_port, :decimal
  end
end
