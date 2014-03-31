require 'spec_helper'

describe Purchaser do

  it "is valid with name" do
    purchaser = FactoryGirl.build(:purchaser)
    expect(purchaser).to be_valid
  end

  it "is invalid without name" do
    purchaser = FactoryGirl.build(:purchaser, name: nil)
    expect(purchaser).to be_invalid
  end

  it "is invalid duplicate names" do
    purchaser_first = FactoryGirl.create(:purchaser)
    purchaser = Purchaser.new(name: purchaser_first.name)
    expect(purchaser).to have(1).error_on(:name)
  end
end
