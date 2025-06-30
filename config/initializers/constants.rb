module Max
  # items/_form.html.erb, item_form.rb ：アイテム1つあたりの画像／タグ投稿上限。
  IMAGES_PER_ITEM = 4.freeze
  TAGS_PER_ITEM = 4.freeze
  # _item_table.html.erb, tags_controller.rb (def index) ：1行あたりのタグ表示上限。
  TAGS_IN_ROW = 4.freeze
end

Max.freeze
