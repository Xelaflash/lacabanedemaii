class ProduitsController < ApplicationController

  def index
    @produits = Produit.all
  end

  def show
    @produit = Produit.find(params[:id])
  end


end


