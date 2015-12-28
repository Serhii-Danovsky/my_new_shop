class Product < ActiveRecord::Base
  belongs_to :category
  mount_uploader :image, ProductUploader
  has_many :line_items, dependent: :destroy
end