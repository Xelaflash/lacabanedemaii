ActiveAdmin.register Order do
  permit_params :total_price, :order_status_id

index do
    selectable_column
    column :id
    column :user
    column :order_status
    column :subtotal
    column :shipping
    column :total_price
    column :created_at
    column :active
    actions
  end
end
