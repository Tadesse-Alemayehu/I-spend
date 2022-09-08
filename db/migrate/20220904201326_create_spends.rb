# frozen_string_literal: true

class CreateSpends < ActiveRecord::Migration[7.0]
  def change
    create_table :spends do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
