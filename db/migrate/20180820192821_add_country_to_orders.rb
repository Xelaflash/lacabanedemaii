class AddCountryToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :deliv_adress_country, :string
  end
end
