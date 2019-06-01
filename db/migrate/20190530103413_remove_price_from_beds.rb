class RemovePriceFromBeds < ActiveRecord::Migration[5.2]
  def change
    remove_column :beds, :price
  end
end
