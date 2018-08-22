class GammesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @gamme = Gamme.friendly.find(params[:id])
    @produits = Produit.where(gamme_id: @gamme.id).where(active: true)
    @order_item = current_order.order_items.new
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "#{@gamme.name}", gamme_path
  end
end
