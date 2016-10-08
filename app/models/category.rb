class Category < ApplicationRecord
  has_many :products
  has_many :brands
  belongs_to :product_type
end
