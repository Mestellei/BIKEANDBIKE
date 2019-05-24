class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :name, :category, :address, :price_per_day, presence: true
end
