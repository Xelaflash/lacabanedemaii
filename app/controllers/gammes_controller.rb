class GammesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @gammes = Gamme.all
    @gamme = Gamme.friendly.find(params[:id])
    @produits = Produit.where(gamme_id: @gamme.id).where(active: true)
    @order_item = current_order.order_items.new
  end
end
