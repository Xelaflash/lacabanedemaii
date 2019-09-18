class PaymentsController < ApplicationController
    before_action :set_order

  def new
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
    add_breadcrumb "Paiement", new_order_payment_path
    @order = current_user.orders.where(order_status_id: 1).find(params[:order_id])
  end
end
