class RemoveOrderStatusFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :order_statuses, index: true
  end
end
