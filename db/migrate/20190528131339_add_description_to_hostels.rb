class AddDescriptionToHostels < ActiveRecord::Migration[5.2]
  def change
    add_column :hostels, :description, :string
  end
end
