class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @order = current_order
    @order = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to produits_path
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :produit_id)
  end

end
