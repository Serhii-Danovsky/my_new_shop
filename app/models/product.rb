class Product < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, ProductUploader
end