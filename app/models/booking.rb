class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  has_many :reviews, uniqueness: true
end
