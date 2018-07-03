class ProduitsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:search].present?
      sql_query = "nom ILIKE :search OR marque ILIKE :search"
      @produits = Produit.where(sql_query, search: "%#{params[:search]}%")
    else
      @produits = Produit.all
    end
    @order_item = current_order.order_items.new
  end

  def show
    @produit = Produit.find(params[:id])
    @review = Review.new
    @order_item = current_order.order_items.new
  end


end
