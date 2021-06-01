FactoryBot.define do
  factory :portfolio do
    association :user
    url { Faker::Internet.url(host: 'example.com') }
  end
end
