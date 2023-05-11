FactoryBot.define do
  factory :item_form do
    Faker::Config.locale = :ja

    item_name { Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph }

    tag_name { Faker::Adjective.positive }
    score { Faker::Number.between(from: 1, to: 5) }
  end
end
