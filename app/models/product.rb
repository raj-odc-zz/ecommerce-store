class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :image, PdImageUploader
end
