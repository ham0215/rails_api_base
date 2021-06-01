FactoryBot.define do
  factory :user_book do
    association :user
    association :book
  end
end
