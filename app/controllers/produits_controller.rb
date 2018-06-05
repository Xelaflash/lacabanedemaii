class ProduitsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @produits = Produit.all
  end

  def show
    @produit = Produit.find(params[:id])
  end


end


