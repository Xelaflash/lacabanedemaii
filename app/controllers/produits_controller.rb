class ProduitsController < ApplicationController

  def index
    @produits = Produit.all
  end


end


