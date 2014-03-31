require 'faker'

FactoryGirl.define do
  factory :order do
    quantity { Faker::Number.number(3) }
  end
end
