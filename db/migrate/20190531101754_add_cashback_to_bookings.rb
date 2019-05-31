class AddCashbackToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :cashback, :float
  end
end
