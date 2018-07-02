class ProduitsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @produits = Produit.all
    @produits_search = @produits.search_by_marque_and_nom(params[:search])
    @order_item = current_order.order_items.new
  end

  def show
    @produit = Produit.find(params[:id])
    @review = Review.new
    @order_item = current_order.order_items.new
  end


end
