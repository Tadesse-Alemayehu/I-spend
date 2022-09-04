class CategorySpend < ApplicationRecord
  belongs_to :category, class_name: :Category, foreign_key: :category_id
  belongs_to :spend, class_name: :Spend, foreign_key: :spend_id
end
