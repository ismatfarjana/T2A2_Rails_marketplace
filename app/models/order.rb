class Order < ApplicationRecord
  belongs_to :buyer, class_name: 'User', optional: false
  has_many :carts
  has_many :order_items


  validates :buyer, presence: true
  validates :paid, presence: true
  validates :amount, presence: true
end
