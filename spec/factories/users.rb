FactoryGirl.define do
  factory :user do
    email 'test1@test.com'
    password '123456'
    password_confirmation '123456'
  end
end
