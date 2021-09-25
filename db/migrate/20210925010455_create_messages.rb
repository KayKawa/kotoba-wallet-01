class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :buy, foreign_key: true
      t.references :giver, foreign_key: { to_table: :users }
      t.references :taker, foreign_key: { to_table: :users }
      t.text :message, null: false

      t.timestamps
    end
  end
end
