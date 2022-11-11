
class CreateWatchedCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :watched_coins do |t|
      t.string :initial_price
      t.belongs_to :user, foreign_key: true
      t.belongs_to :coin, foreign_key: true

      t.timestamps
    end
  end
end