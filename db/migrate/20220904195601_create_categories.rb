class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.references :creator, references: :users, index: true
      t.timestamps
    end
    add_foreign_key :categories, :users, column: :creator_id
  end
end
