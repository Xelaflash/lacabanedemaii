class CartsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
    @order = current_order
    @order_items = current_order.order_items
    @order_items.each  do |order_item|
      if order_item.produit.active == false
        order_item.destroy
        flash[:alert] = "Le produit #{order_item.produit.nom} est indisponible. Il a été retiré du panier"
        redirect_to cart_path
      end
    end
  end
end
