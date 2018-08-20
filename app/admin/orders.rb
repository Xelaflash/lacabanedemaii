ActiveAdmin.register Order do
  permit_params :total_price, :order_status_id
 index do
    selectable_column
    column :id
    column :customer
    column :deliv_adress
    column :prod_list
    column :order_status
    column :subtotal
    column :shipping
    column :created_at
    actions
  end
end
