class Cart < ApplicationRecord
  belongs_to :product
  belongs_to :buyer, class_name: 'User', optional: false
  validates :price, presence: true
  validates :image, presence: true
  validates :title, presence: true
end
