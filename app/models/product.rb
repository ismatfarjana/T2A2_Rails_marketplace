class Product < ApplicationRecord
  belongs_to :seller, class_name: 'User', optional: false
  has_one_attached :image
end
