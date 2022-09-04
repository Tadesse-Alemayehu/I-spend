class Category < ApplicationRecord
  belongs_to :creator, class_name: :User, foreign_key: :creator_id
  has_many :spends, through: :category_spends

  # validates :name, presence: true, null: false
end
