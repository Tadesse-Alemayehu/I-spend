class Spend < ApplicationRecord
  belongs_to :spender, class_name: :User, foreign_key: :spender_id
  has_many :categories, through: :category_spends

  # validates :name, presence: true, null: false
  # validates :amount, presence: true, comparison: { greater_than: 0 }
end
