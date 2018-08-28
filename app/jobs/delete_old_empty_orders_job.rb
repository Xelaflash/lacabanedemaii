class DeleteOldEmptyOrdersJob < ApplicationJob
  queue_as :empty_orders

  def perform(order_id)
    order_to_kill_list = Order.where(prod_list: nil, user_id: nil).map
    Order.where(id: order_to_kill_list.map(&:id)).destroy_all
  end
end


