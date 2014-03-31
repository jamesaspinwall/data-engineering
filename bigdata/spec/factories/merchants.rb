FactoryGirl.define do
  factory :merchant do
    name { Faker::Name.name }
    address {"#{Faker::Address.street_address} #{Faker::Address.city}, #{Faker::Address.state_abbr} #{Faker::Address.zip}"}
  end
end
