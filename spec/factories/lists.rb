FactoryBot.define do
  factory :list do
    Faker::Config.locale = :ja

    association :user

    title { Faker::Commerce.department }
    concept { Faker::Lorem.sentence }
    rule { Faker::Lorem.paragraph }
  end
end
