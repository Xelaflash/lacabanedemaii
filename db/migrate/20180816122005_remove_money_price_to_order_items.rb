class RemoveMoneyPriceToOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_monetize :order_items, :unit_price, currency: { present: false }
  end
end
