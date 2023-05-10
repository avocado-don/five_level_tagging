class ItemTag < ApplicationRecord
  belongs_to :item
  belongs_to :tag

  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_blank: true
end
