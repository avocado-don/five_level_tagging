class ItemForm
  include ActiveModel::Model

  attr_accessor(
    :id, :created_at, :updated_at,
    :item_name, :description, :list_id,
    :images
  )

  validates :item_name, presence: true
  validates :images, length: { maximum: 4 }

  def save
    Item.create(item_name: item_name, description: description, list_id: list_id, images: images)
  end

  def update(params, item)
    item.update(params)
  end
end
