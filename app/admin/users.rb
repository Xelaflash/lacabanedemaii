ActiveAdmin.register User do

  index do
  selectable_column
  column :id
  column :email
  column :nom
  column :prenom
  column :adresse
  column :telephone
  column :admin
  column :created_at
  actions
end

end
