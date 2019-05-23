class CreateHostels < ActiveRecord::Migration[5.2]
  def change
    create_table :hostels do |t|
      t.string :name
      t.string :address
      t.string :city_name
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
