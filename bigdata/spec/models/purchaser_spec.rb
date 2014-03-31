require 'spec_helper'

describe Purchaser do

  it "is valid with name" do
    purchaser = FactoryGirl.build(:purcharser)
    expect(purchaser).to be_valid
  end

  it "is invalid without name" do
    purchaser = FactoryGirl.build(:purchaser, name: nil)
    expect(purchaser).to be_invalid
  end


  it "is invalid duplicate names" do
    purchaser = Merchant.create(name: 'John')
    purchaser = Merchant.new(name: 'John')
    expect(purchaser).to have(1).error_on(:name)
  end
end
