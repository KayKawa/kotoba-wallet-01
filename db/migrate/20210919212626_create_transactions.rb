class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :wallet, foreign_key: true
      t.integer :plus
      t.integer :minus

      t.timestamps
    end
  end
end
