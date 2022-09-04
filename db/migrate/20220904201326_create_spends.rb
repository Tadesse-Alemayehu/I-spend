class CreateSpends < ActiveRecord::Migration[7.0]
  def change
    create_table :spends do |t|
      t.references :spender, references: :users, null: false
      t.string :name
      t.integer :amount

      t.timestamps
    end
    add_foreign_key :spends, :users, column: :spender_id
  end
end
