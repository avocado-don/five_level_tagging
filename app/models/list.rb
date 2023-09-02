class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :title, presence: true

  def self.ransackable_attributes(auth_object = nil)
    []
  end

  def self.ransortable_attributes(auth_object = nil)
    ["title", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["user"]
  end

  # searches_controller.rb (def branch_of_search) ：ListモデルとItemモデルのキーワード検索。params[:model]の値により条件分岐。
  def self.search_records(keyword)
    joins(items: [:tags]).where(
      "title LIKE? or concept LIKE? or rule LIKE? or items.item_name LIKE? or items.description LIKE? or tags.tag_name LIKE?",
      "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"
    )
  end
end
