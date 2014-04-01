require 'spec_helper'

describe Item do
  it "is valid" do
    item = FactoryGirl.build(:item)
    expect(item).to be_valid
  end

  it "is invalid without description" do
    item = FactoryGirl.build(:item, description: nil)
    expect(item).to be_invalid
  end

  it "is invalid with empty description" do
    item = FactoryGirl.build(:item, description: '')
    expect(item).to be_invalid
  end

  it "is invalid without price" do
    item = FactoryGirl.build(:item, price: nil)
    expect(item).to be_invalid
  end

end
