FactoryBot.define do
  factory :list do
    Faker::Config.locale = :ja

    association :user

    title { Faker::Commerce.department }
    concept { Faker::Lorem.sentence }
    score_rule { Faker::Lorem.paragraph }
  end
end
