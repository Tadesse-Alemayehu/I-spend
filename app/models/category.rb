class Category < ApplicationRecord
  belongs_to :user
  has_many :spends, through: :category_spends

  validates :name, presence: true
end
