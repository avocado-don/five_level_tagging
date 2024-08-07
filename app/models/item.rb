class Item < ApplicationRecord
  has_many_attached :images

  belongs_to :list, touch: true

  has_many :item_tags, dependent: :destroy
  has_many :tags, through: :item_tags

  include RankedModel
  ranks :row_order, with_same: :list_id

  def self.ransackable_attributes(auth_object = nil)
    []
  end

  def self.ransortable_attributes(auth_object = nil)
    ["item_name", "updated_at", "row_order"]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  # application_controller.rb (def keyword_search) ：List, Item, Tagモデルのキーワード検索。params[:model]の値により条件分岐。
  def self.search_records(keyword)
    joins(:tags).where(
      "item_name LIKE? or description LIKE? or tags.tag_name LIKE?",
      "%#{keyword}%", "%#{keyword}%", "%#{keyword}%"
    )
  end

  # tags/show.html.erb (sort_link(@q, :item_tag_score, "並び替え（タグスコア）")) ：1つのタグに紐づくスコアで、アイテムを並び替え。
  scope :sort_by_item_tag_score_asc, -> { order("item_tags.score ASC") }
  scope :sort_by_item_tag_score_desc, -> { order("item_tags.score DESC") }
end
