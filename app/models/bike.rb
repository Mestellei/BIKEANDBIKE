class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :category, :address, :price_per_day, presence: true

  mount_uploader :picture, PhotoUploader
end
