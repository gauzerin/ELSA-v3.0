class AddPriceToBeds < ActiveRecord::Migration[5.2]
  def change
    add_monetize :beds, :price, currency: { present: false }
  end
end
