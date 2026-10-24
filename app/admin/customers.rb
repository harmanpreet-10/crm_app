ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :province, :notes, :image

  index do
    selectable_column
    id_column
    column :full_name
    column :phone_number
    column :email_address
    column :province
    actions
  end

  filter :full_name
  filter :email_address
  filter :province

  form do |f|
    f.inputs 'Customer Details' do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :province
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :full_name
      row :phone_number
      row :email_address
      row :province
      row :notes
      row(:image) { |customer| image_tag(url_for(customer.image), width: 180) if customer.image.attached? }
    end
  end
end
