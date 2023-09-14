class Tag < ApplicationRecord
  has_many :item_tags, dependent: :destroy
  has_many :items, through: :item_tags

  validates :tag_name, uniqueness: { case_sensitive: true }

  def self.ransackable_attributes(auth_object = nil)
    []
  end

  def self.ransortable_attributes(auth_object = nil)
    []
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
