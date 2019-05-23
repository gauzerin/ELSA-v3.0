class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_ad
      t.date :end_at
      t.float :total_cost
      t.references :user, foreign_key: true
      t.references :bed, foreign_key: true
      t.timestamps
    end
  end
end
