class RemoveTotalFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :total_cost
  end
end
