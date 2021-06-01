FactoryBot.define do
  factory :profile do
    association :user
    address { Faker::Address.full_address }
  end
end
