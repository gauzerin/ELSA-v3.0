class ChangeDefoultStateToPending < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :state, :string, default: "pending", :null => false
  end
end
