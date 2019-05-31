class Bed < ApplicationRecord
  belongs_to :hostel
  has_many :bookings
  monetize :price_cents

  def bookings
    Booking.where(":number = ANY(beds)", number: "#{self.id}")
  end
end
