FactoryBot.define do
  factory :user do
    id { 1 }
    email { "test@user.com" }
    password { "qwerty" }
    name { "Testy McTesterson" }
    expertise { "All The Things" }
  end
end