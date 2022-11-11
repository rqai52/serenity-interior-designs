
class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.integer :cmc_id
      t.string :name
      t.string :symbol
      t.string :price
      t.datetime :last_fetched

      t.timestamps
    end
  end
end