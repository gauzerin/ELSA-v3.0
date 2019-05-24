class AddColumnsToHostels < ActiveRecord::Migration[5.2]
  def change
    add_column :hostels, :photo1, :string
    add_column :hostels, :photo2, :string
    add_column :hostels, :photo3, :string
  end
end
