class ItemTag < ApplicationRecord
  belongs_to :item, touch: true
  belongs_to :tag

  def self.ransackable_attributes(auth_object = nil)
    []
  end

  def self.ransortable_attributes(auth_object = nil)
    ["updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
