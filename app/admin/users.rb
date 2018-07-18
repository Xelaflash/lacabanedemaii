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

  form do |f|
    f.inputs "Identity" do
      f.input :nom
      f.input :prenom
      f.input :email
      f.input :adresse
      f.input :telephone
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :nom, :prenom, :email, :adresse, :telephone, :admin

end
