ActiveAdmin.register User do

  menu priority: 1

  permit_params :phone, :name, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :phone
    column :name
    column :created_at
    column :updated_at
    actions
  end

  filter :phone
  filter :name
  filter :created_at

  form do |f|
    f.inputs do
      f.input :phone
      f.input :name
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do
    attributes_table do
     # row :avatar do |user|
   #     image_tag user.avatar
   #   end
      row :phone
      row :name
      row :password_digest
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
