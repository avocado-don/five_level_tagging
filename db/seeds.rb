require "csv"

CSV.foreach('db/seeds/csv/users.csv', headers: true) do |row|
  User.create!(email: row['email'], password: row['password'], real_name: row['real_name'], user_name: row['user_name'], contact: row['contact'], profile: row['profile'])
end

users = User.order("id DESC").to_a
users.each_with_index do |user, i|
  user.update_attributes(created_at: (i+1).month.ago, updated_at: (i+1).month.ago)
end

CSV.foreach('db/seeds/csv/lists.csv', headers: true) do |row|
  List.create!(user_id: row['user_id'], title: row['title'], concept: row['concept'], rule: row['rule'])
end

# seedで作成したサンプルデータ群は、更新日時の時差が1000分の1秒単位になる。その時差を拡大して上書き。→ブラウザ上で更新日時を表示・ソートする際、時差が分かりやすく見える。
lists = List.order("id DESC").to_a
lists.each_with_index do |list, i|
  list.update_attributes(created_at: (i+1).days.ago, updated_at: (i+1).days.ago)
end

CSV.foreach('db/seeds/csv/items.csv', headers: true) do |row|
  item = Item.create!(list_id: row['list_id'], item_name: row['item_name'], description: row['description'])
  4.times do |i|
    item.images.attach(io: File.open(Rails.root.join("db/seeds/images/#{row["image#{i+1}"]}")), filename: row["image#{i+1}"].to_s) if row["image#{i+1}"].present?
  end
end

items = Item.order("id DESC").to_a
items.each_with_index do |item, i|
  item.update_attributes(created_at: (i+1).hour.ago, updated_at: (i+1).hour.ago)
end

CSV.foreach('db/seeds/csv/tags.csv', headers: true) do |row|
  Tag.create!(tag_name: row['tag_name'])
end

tags = Tag.order("id DESC").to_a
tags.each_with_index do |tag, i|
  tag.update_attributes(created_at: (i+1).hour.ago, updated_at: (i+1).hour.ago)
end

CSV.foreach('db/seeds/csv/item_tags.csv', headers: true) do |row|
  ItemTag.create!(item_id: row['item_id'], tag_id: row['tag_id'], score: row['score'])
end
