class AddDelivAddressToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :deliv_adress, :string
  end
end
