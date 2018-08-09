class RemoveTotalPriceCentsCentsToOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :total_price_cents_cents
  end
end
