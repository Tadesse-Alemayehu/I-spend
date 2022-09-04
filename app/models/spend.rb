class Spend < ApplicationRecord
  belongs_to :author, class_name: :user, foreign_key: :author
  has_many :categories, through: :category_spends

  validates :name, presence: true, null: false
  validates :amount, presence: true, comparison: { greater_than: 0 }
end
