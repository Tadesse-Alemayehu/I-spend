class CreateCategorySpends < ActiveRecord::Migration[7.0]
  def change
    create_table :category_spends do |t|
      t.references :category, null: false, foreign_key: true
      t.references :spends, null: false, foreign_key: true

      t.timestamps
    end
  end
end
