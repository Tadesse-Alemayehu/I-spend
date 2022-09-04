class CreateCategorySpends < ActiveRecord::Migration[7.0]
  def change
    create_table :category_spends do |t|
      t.references :categorys, null: false, foreign_key: true
      t.references :spends, null: false, foreign_key: true

      t.timestamps
    end
    add_foreign_key :category_spends, :categories
    add_foreign_key :category_spends, :spends
  end
end
