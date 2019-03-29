class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
      @best_products = Produit.where(active: true)
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
end
