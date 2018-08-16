class AddCustomerToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :customer, :string
  end
end
