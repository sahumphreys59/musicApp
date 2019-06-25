FactoryBot.define do
  factory :post do
    title { "MyString" }
    description { "MyString" }
  end

  factory :user do
    sequence :email do |n|
       "dummyEmail#{n}@gmail.com" 
    end
    password { "secretPassword" }
    password_confirmation { "secretPassword" }
  end
end