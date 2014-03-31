require 'faker'

FactoryGirl.define do
  factory :upload do
    filename { Faker::Lorem.characters(20) }
    content { Faker::Lorem.sentences.join("\n") }
  end
end
