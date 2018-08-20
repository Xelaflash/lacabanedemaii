class AddMoneyPriceToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_monetize :order_items, :unit_price, currency: { present: false }
  end
end
