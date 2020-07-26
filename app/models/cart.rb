class Cart < ApplicationRecord
  belongs_to :product
  belongs_to :buyer, class_name: 'User', optional: false
end
