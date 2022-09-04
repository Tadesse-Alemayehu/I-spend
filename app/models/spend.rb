class Spend < ApplicationRecord
  belongs_to :spender, class_name: :user, foreign_key: :spender
  has_many :categories, through: :category_spends

  validates :name, presence: true, null: false
  validates :amount, presence: true, comparison: { greater_than: 0 }
end
