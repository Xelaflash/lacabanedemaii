class ProduitsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @produits = Produit.all
    @order_item = current_order.order_items.new
  end
end


