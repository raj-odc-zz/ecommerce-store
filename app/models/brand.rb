class Brand < ApplicationRecord
  has_many :products, through: :categories
  belongs_to :category
end
