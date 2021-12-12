FactoryBot.define do

  factory :user do
    email { Faker::Internet.unique.email }
    password { Faker::Alphanumeric.alpha(number: 10) }
    name  { Faker::Name.name() }
  end

  factory :dumb_user, class: User do
    email { "user@example.com" }
    password { "useruser" }
    name  { "user" }
  end
end
