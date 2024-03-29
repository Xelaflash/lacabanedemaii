class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :user, foreign_key: true
      t.decimal :total_price

      t.timestamps
    end
  end
end
