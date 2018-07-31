class OrdersController < ApplicationController

  def create
    order =  current_order
    order_item = order.order_items

    redirect_to new_order_payment_path(order)
  end

  # def show
  #   @order = current_user.orders.where(order_status_id: 2).find(params[:id])
  # end

end
