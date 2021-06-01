FactoryBot.define do
  factory :portfolio do
    association :user
    name { Faker::Book.title }
    url { Faker::Internet.url(host: 'example.com') }
  end
end
