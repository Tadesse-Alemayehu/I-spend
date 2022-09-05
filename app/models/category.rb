class Category < ApplicationRecord
  belongs_to :user
  has_many :category_spends
  has_many :spends, through: :category_spends

  validates :name, presence: true

  def total_spend
     self.spends.reduce(0) {|sum, spend| sum+spend.amount}
  end
end
