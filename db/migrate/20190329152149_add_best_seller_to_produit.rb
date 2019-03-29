class AddBestSellerToProduit < ActiveRecord::Migration[5.2]
  def change
    add_column :produits, :best_seller, :boolean
  end
end
