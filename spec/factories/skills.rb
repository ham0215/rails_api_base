FactoryBot.define do
  factory :skill do
    association :profile
    name { 'プログラミング' }
  end
end
