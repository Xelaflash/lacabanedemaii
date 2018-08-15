class CartsController < ApplicationController
  # skip_before_action :authenticate_user!

  def show
    # @cart = current_order
    @order_items = current_order.order_items
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
  end
end
