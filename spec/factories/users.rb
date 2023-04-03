FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    nickname { Faker::Name.name }

    trait :with_profile do
      after(:create) do |user|
        create(:profile, user:)
      end
    end

    trait :with_books do
      after(:create) do |user|
        create_list(:user_book, 2, user:)
      end
    end

    trait :with_portfolios do
      after(:create) do |user|
        create_list(:portfolio, 2, user:)
      end
    end
  end
end
