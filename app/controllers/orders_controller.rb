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
  end

  def show
    @order =  current_order
    @order.user_id = current_user.id
    @order_items = @order.order_items
  end

end
