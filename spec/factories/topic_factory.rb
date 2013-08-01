FactoryGirl.define do
  factory :topic, class: Topic do
    name Faker::Name.name
  end
  factory :topic2, class: Topic do
    name Faker::Name.name
  end
end