class RemoveAvailabilityFromBeds < ActiveRecord::Migration[5.2]
  def change
    remove_column :beds, :availability
  end
end
