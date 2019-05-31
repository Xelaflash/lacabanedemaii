ActiveAdmin.register Review do
  menu label: "Commentaires"
  permit_params :content, :rating, :recommend, :author, :user_id, :produit_id
end
