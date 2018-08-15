class OrdersController < ApplicationController

  def create
    @order =  current_order
    @order.user_id = current_user.id
    order_item = @order.order_items
    @order.save
    redirect_to new_order_payment_path(@order)
  end

  def index
    @orders = current_user.orders.all
    add_breadcrumb "accueil", :root_path
    add_breadcrumb "produits", produits_path
    add_breadcrumb "panier", cart_path
  end

  def show
    @order =  current_order
    @order.user_id = current_user.id
    @order_items = @order.order_items
  end

  def destroy
    @order =  current_order
    @order.destroy
  end

end
