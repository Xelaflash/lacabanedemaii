class OrderItemsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @order = current_order
    @item = @order.order_items.new(order_item_params)
    existing_order = @order.order_items.where(produit_id: params[:order_item][:produit_id])
    if existing_order.count >= 1
      flash[:alert] = "Ce produit est déjà présent dans le panier"
      redirect_to produits_path
    else
      @order.validate_deliv_details = false
      @order.save
      session[:order_id] = @order.id
      flash[:notice] = "Le produit a été ajouté au panier"
      redirect_to produits_path
    end
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end

private

  def order_item_params
    params.require(:order_item).permit(:quantity, :produit_id)
  end

end
