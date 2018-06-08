class RemoveOrderStatusFromOrders < ActiveRecord::Migration[5.2]
  def change
     remove_column :orders, :status
     add_reference :orders, :order_statuses, index: true
  end
end
