FactoryBot.define do
  factory :list do
    Faker::Config.locale = :ja

    association :user

    title { Faker::Commerce.department.tr("&", "＆") } #rspec(response.body)のテストを阻害する特殊文字を置換。
    concept { Faker::Lorem.sentence }
    rule { Faker::Lorem.paragraph }
  end
end
