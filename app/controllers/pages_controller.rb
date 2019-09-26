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
    binding.pry
    flash[:notice] = "Votre paiement a été accepté. Vous allez recevoir un mail de confirmation."
    update_stock
    OrderMailer.order_confirmation_user(@order_pay).deliver_now
    OrderShopMailer.order_confirmation_shop(@order_pay).deliver_now
    @order_pay.update(active: false)
    @order_last = current_user.orders.last.id
    redirect_to order_path(@order_last)
  end

  def payment_cancel
    flash[:alert] = "Votre paiement a été annulé. Merci de réessayer."
    @order_last = current_user.orders.last.id
    redirect_to new_order_payment_path(@order_last)
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
