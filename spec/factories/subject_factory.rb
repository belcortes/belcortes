FactoryGirl.define do
  factory :subject, class: Subject do
    name Faker::Name.name
  end
  factory :subject2, class: Subject do
    name Faker::Name.name
  end
end