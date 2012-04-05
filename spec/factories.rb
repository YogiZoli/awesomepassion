FactoryGirl.define do
  factory :user do
    name "Mike Hartmann"
    email "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end