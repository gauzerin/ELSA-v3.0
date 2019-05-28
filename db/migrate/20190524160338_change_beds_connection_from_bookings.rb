class ChangeBedsConnectionFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bookings, :bed
    add_column :bookings, :beds, :string, array: true, default: []
  end
end
