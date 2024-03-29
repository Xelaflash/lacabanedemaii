class ProduitsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:search].present?
      sql_query = "nom ILIKE :search OR marque ILIKE :search"
      @produits = Produit.where([sql_query, search: "%#{params[:search]}%"]).where(active: true)
    else
      @produits = Produit.where(active: true)
    end
    @order_item = current_order.order_items.new
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
  end

  def show
    @produit = Produit.friendly.find(params[:id])
    @review = Review.new
    @order_item = current_order.order_items.new
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "#{@produit.nom}", produit_path
  end

end
