FactoryGirl.define do
  factory :user do
    id 1
    name Faker::Name.name
    email Faker::Internet.email
    password 'pass123'
    admin false
  end
  factory :user2, class: User do
    id 2
    name Faker::Name.name
    email Faker::Internet.email
    password 'pass123'
    admin false
  end
end