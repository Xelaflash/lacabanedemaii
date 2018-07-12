class GammesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @gammes = Gamme.all
    @gamme = Gamme.find(params[:id])
    @produits = Produit.where(gamme_id: @gamme.id)
    @order_item = current_order.order_items.new
  end
end
