class User < ApplicationRecord
  has_many :spends
  has_many :categories

  # validates :name, presence: true, null: false
end
