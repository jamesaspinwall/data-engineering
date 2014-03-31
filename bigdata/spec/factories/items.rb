require 'faker'

FactoryGirl.define do
  factory :item do
    description { Faker::Commerce.product_name }
    price {Faker::Commerce.price}
  end
end
