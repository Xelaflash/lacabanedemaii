ActiveAdmin.register Review do
  permit_params :content, :rating, :recommend, :author, :user_id, :produit_id
end
