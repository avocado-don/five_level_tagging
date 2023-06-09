class Item < ApplicationRecord
  has_many_attached :images

  belongs_to :list

  has_many :item_tags, dependent: :destroy
  has_many :tags, through: :item_tags
end
