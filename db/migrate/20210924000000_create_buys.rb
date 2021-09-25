class CreateBuys < ActiveRecord::Migration[6.0]
  def change
    create_table :buys do |t|
      t.integer :giver_id
      t.integer :taker_id
      t.references :wallet, foreign_key: true
      t.references :statement, foreign_key: true
      t.integer :quantity, null: false
      t.integer :unit_price, null: false

      t.timestamps
    end
  end
end
