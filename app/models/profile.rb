class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :suburb, presence: true
  validates :postcode, presence: true
  validates :mobile_number, presence: true
  validates :picture, presence: true
end
