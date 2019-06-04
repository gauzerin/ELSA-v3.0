class AddReferenceToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :hostel, foreign_key: true
  end
end
