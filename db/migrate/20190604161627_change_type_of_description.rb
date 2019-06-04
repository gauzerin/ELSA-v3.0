class ChangeTypeOfDescription < ActiveRecord::Migration[5.2]
  def change
    change_column :hostels, :description, :text
  end
end
