class AddProdListToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :prod_list, :string
  end
end
