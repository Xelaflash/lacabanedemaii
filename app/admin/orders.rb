ActiveAdmin.register Order do
  permit_params :total_price, :order_status_id
 index do
    selectable_column
    column :id
    column :user_id
    column :order_status
    column :total_price
    column :prod_list
    column :customer
    column :client_name
    column :deliv_adress_nb
    column :deliv_adress
    column :deliv_adress_zip_code
    column :deliv_adress_city
    column :deliv_adress_pays
    column :deliv_adress_details
    column :subtotal
    column :shipping
    column :created_at
    actions
  end
end
