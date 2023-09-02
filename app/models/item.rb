class Item < ApplicationRecord
  has_many_attached :images

  belongs_to :list

  has_many :item_tags, dependent: :destroy
  has_many :tags, through: :item_tags

  def self.ransackable_attributes(auth_object = nil)
    []
  end

  def self.ransortable_attributes(auth_object = nil)
    ["item_name", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  # searches_controller.rb (def branch_of_search) ：ListモデルとItemモデルのキーワード検索。params[:model]の値により条件分岐。
  def self.search_records(keyword)
    joins(:tags).where(
      "item_name LIKE? or description LIKE? or tags.tag_name LIKE?",
      "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"
    )
  end
end
