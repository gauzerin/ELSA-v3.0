class ChangeHostelsTypeToHostelType < ActiveRecord::Migration[5.2]
  def change
    rename_column :hostels, :type, :hostel_type
  end
end
