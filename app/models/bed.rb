class Bed < ApplicationRecord
  belongs_to :room
  has_many :bookings
end
