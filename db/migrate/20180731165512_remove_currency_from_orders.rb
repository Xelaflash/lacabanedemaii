class RemoveCurrencyFromOrders < ActiveRecord::Migration[5.2]
  def change
    change_table :orders do |t|
      t.monetize :total_price_cents, currency: { present: false }
    end
  end
end
