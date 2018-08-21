class CartsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @order_items = current_order.order_items
    @order = current_order
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
  end
end
