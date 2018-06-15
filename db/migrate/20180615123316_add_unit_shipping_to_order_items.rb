class AddUnitShippingToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :unit_shipping, :decimal
  end
end
