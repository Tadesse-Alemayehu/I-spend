class CategorySpend < ApplicationRecord
  belongs_to :category
  belongs_to :spends
end
