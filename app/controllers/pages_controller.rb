class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_order

  def home
    @best_products = Produit.where(best_seller: true, active: true)
    @order_item = current_order.order_items.new
  end

  def qui_sommes_nous
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "qui-sommes-nous", qui_sommes_nous_path
  end

  def livraison
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "livraison", livraison_path
  end

  def aide
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "FAQ", aide_path
  end

  def mentions_legales
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "mentions légales", mentions_legales_path
  end

  def CGV
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "cgv", cgv_path
  end

  def payment_success
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "paiement accepté", payment_success_path
    @order_pay.update(payment: session.to_json, order_status_id: 2, active: false)
    flash[:notice] = "Votre paiement a été accepté. Vous allez recevoir un mail de confirmation."
    update_stock
    OrderMailer.order_confirmation_user(@order_pay).deliver_now
    OrderShopMailer.order_confirmation_shop(@order_pay).deliver_now

    @order_last = current_user.orders.last.id
    redirect_to order_path(@order_last)
  end

  def payment_cancel
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "paiement annulé", payment_cancel_path
    redirect_to new_payments_path(@order)
  end

  private

  def update_stock
    @order_total.each do |cart_item|
      product_to_update = Produit.find(cart_item.produit_id)
      product_to_update.quantite = cart_item.produit.quantite - cart_item.quantity
      product_to_update.save
    end
  end
end
