ActiveAdmin.register Product do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
  permit_params :title, :description, :image, :price, :category_id
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end



  index do
    column :id
    column 'image' do |product|
      image_tag product.image_url(:small) if product.image?
    end
    column 'Название', :title
    column 'description', :description
    column 'price', :price
    column 'category_id', :category_id
    actions
  end


end
