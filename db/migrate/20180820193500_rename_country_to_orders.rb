class RenameCountryToOrders < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :deliv_adress_country, :deliv_adress_pays
  end
end
