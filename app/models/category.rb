class Category < ApplicationRecord
  belongs_to :creator, class_name: :user, foreign_key: :creator
  has_many :spends, through: :category_spends

  validates :name, presence: true, null: false
end
