class Spend < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :category_spends

  validates :name, presence: true
  validates :amount, presence: true, comparison: { greater_than: 0 }
end
