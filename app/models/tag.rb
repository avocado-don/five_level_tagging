class Tag < ApplicationRecord
  has_many :item_tags, dependent: :destroy
  has_many :items, through: :item_tags

  # tags_controller.rb (def index) ：タグを含むアイテムの最新更新日時1件ずつを取得する(N+1を回避)。
  has_one :latest_item_tag, -> {
    where(
      <<~SQL
        NOT EXISTS (
          SELECT 1 FROM item_tags AS i
            WHERE
              item_tags.updated_at < i.updated_at AND
              item_tags.tag_id = i.tag_id
        )
      SQL
    )
  }, class_name: "ItemTag"

  validates :tag_name, uniqueness: { case_sensitive: true }

  def self.ransackable_attributes(auth_object = nil)
    []
  end

  def self.ransortable_attributes(auth_object = nil)
    ["tag_name"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["item_tags", "latest_item_tag"]
  end

  # application_controller.rb (def branch_of_search) ：List, Item, Tagモデルのキーワード検索。params[:model]の値により条件分岐。
  def self.search_records(keyword)
    where("tags.tag_name LIKE?", "%#{keyword}%")
  end
end
