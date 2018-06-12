class AddOrderStatusToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :order_status, index: true
  end
end
