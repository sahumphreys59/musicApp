FactoryBot.define do
  factory :like do
    song_id { 1 }
    user_id { nil }
  end



  

  

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