class Bed < ApplicationRecord
  belongs_to :hostel
  has_many :bookings
end
