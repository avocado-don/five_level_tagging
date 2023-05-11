class ItemForm
  include ActiveModel::Model

  attr_accessor(
    :id, :created_at, :updated_at,
    :item_name, :description, :list_id,
    :images,
    :tag_names, :tag_name,
    :scores, :score, :item_id, :tag_id
  )

  validates :item_name, presence: true
  validates :images, :tag_names, :scores, length: { maximum: 4 }
  validates :tag_name, length: { maximum: 25 }
  validates :score, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }, allow_blank: true

  def save
    item = Item.create(item_name: item_name, description: description, list_id: list_id, images: images)

    tag_names.each_with_index do |tag_name, i|
      if tag_name.present?
        tag = Tag.where(tag_name: tag_name).first_or_initialize
        tag.save
        if scores[i].present?
          ItemTag.create(item_id: item.id, tag_id: tag.id, score: scores[i])
        else
          ItemTag.create(item_id: item.id, tag_id: tag.id)
        end
      end
    end
  end

  def update(params, item)
    item.item_tags.destroy_all
    tag_names = params.delete(:tag_names)
    scores = params.delete(:scores)
    item.update(params)

    tag_names.each_with_index do |tag_name, i|
      if tag_name.present?
        tag = Tag.where(tag_name: tag_name).first_or_initialize
        tag.save
        if scores[i].present?
          ItemTag.create(item_id: item.id, tag_id: tag.id, score: scores[i])
        else
          ItemTag.create(item_id: item.id, tag_id: tag.id)
        end
      end
    end
  end
end
