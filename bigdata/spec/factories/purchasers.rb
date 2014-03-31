require 'faker'

FactoryGirl.define do
  factory :purchaser do
    name { Faker::Name.name }
  end
end
