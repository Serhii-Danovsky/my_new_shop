class Category < ActiveRecord::Base
  mount_uploader :image, CategoryUploader
end
