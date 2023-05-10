class Tag < ApplicationRecord
  has_many :item_tags, dependent: :destroy
  has_many :items, through: :item_tags

  validates :tag_name, uniqueness: true, length: { maximum: 25 }
end
