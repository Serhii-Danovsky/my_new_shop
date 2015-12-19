class Category < ActiveRecord::Base
  has_many :products
  mount_uploader :image, CategoryUploader
end
