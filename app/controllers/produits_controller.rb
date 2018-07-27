class ProduitsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:search].present?
      sql_query = "nom ILIKE :search OR marque ILIKE :search"
      @produits = Produit.where(sql_query, search: "%#{params[:search]}%").where(active: true)
    else
      @produits = Produit.where(active: true)
    end
    @order_item = current_order.order_items.new
    @gammes = Gamme.all
  end

  def show
    @produit = Produit.find(params[:id])
    @review = Review.new
    @gammes = Gamme.all
    @order_item = current_order.order_items.new
  end


end
