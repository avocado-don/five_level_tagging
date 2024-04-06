class ItemForm
  include ActiveModel::Model

  attr_accessor(
    :id, :created_at, :updated_at,
    :item_name, :description, :row_order, :list_id,
    :images,
    :tag_names, :tag_name,
    :scores, :score, :item_id, :tag_id
  )

  validates :item_name, presence: true
  validates :images, :tag_names, :scores, length: { maximum: 4 }
  validates :tag_name, length: { maximum: 25 }
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_blank: true

  def save_item_form
    item = Item.create(item_name: item_name, description: description, list_id: list_id, images: images)
    4.times do |i|
      if tag_names[i].present?
        tag = Tag.where(tag_name: tag_names[i]).first_or_create
        Item.no_touching do
          ItemTag.create(item_id: item.id, tag_id: tag.id, score: scores[i])
        end
      end
    end
  end

  def update_item_form(params, item)
    item_tags = item.item_tags
    tag_names = params.delete(:tag_names)
    scores = params.delete(:scores)
    item.update(params)

    4.times do |i|
      if tag_names[i].present?
        tag = Tag.where(tag_name: tag_names[i]).first_or_create
        if item_tags[i].present?
          item_tags[i].update(item_id: item.id, tag_id: tag.id, score: scores[i])
        else
          ItemTag.create(item_id: item.id, tag_id: tag.id, score: scores[i])
        end
      elsif item_tags[i].present?
        item_tags[i].destroy
      end
    end
  end
end
