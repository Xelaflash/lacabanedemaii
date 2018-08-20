class AddDelivDetailsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :deliv_adress_nb, :integer
    add_column :orders, :deliv_adress_zip_code, :integer
    add_column :orders, :deliv_adress_city, :string
    add_column :orders, :deliv_adress_details, :string
  end
end
