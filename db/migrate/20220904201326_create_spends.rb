class CreateSpends < ActiveRecord::Migration[7.0]
  def change
    create_table :spends do |t|
      t.references :author, references: :users, null: false, foreign_key: true
      t.string :name
      t.integer :amount

      t.timestamps
    end
    add_foreign_key :spends, :users, column: :author_id
  end
end
