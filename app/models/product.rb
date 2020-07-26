class Product < ApplicationRecord
  belongs_to :seller, class_name: 'User', optional: false
  has_one_attached :image
  has_many :carts
  validates :title, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :image, presence: true
end
