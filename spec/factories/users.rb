FactoryBot.define do
  factory :user do
    Faker::Config.locale = :ja

    email { Faker::Internet.safe_email }
    password { Faker::Lorem.characters(number: 8, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }

    real_name { Faker::Name.name }
    user_name { Faker::Internet.username }
    contact { Faker::Lorem.sentence }
    profile { Faker::Lorem.paragraph }
  end
end
