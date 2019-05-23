class CreateBeds < ActiveRecord::Migration[5.2]
  def change
    create_table :beds do |t|
      t.boolean :availability
      t.float :price
      t.references :room, foreign_key: true
      t.timestamps
    end
  end
end
