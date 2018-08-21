class AddCustomerNameToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :client_name, :string
  end
end
