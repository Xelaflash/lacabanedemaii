ActiveAdmin.register User do
  permit_params :email, :nom, :prenom, :adresse, :telephone, :admin
end
