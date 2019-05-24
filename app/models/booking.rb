class Booking < ApplicationRecord
  belongs_to :bike
  belongs_to :user
  has_many :review
  validates :begining_date, :end_date, presence: true
end
