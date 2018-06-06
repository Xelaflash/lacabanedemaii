class Cart < ApplicationRecord
  has_many :order_items

  # def add_product(produit_params)
  #   current_item = order_items.find_by(produit_id: produit_params[:produit][:produit_id])

  #   if current_item
  #     current_item.quantity += produit_params[:produit][:quantity].total_price
  #     current_item.save
  #   else
  #     new_item = order_items.create(produit_id: produit_params[:produit][:quantity], quantity: produit_params[:produit][:quantity], cart_id: self.id )
  #   end
  #     new_item
  # end
end
