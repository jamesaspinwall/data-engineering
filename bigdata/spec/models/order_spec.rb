require 'spec_helper'

describe Order do
  it "is valid" do
    order = FactoryGirl.build(:order)
    expect(order).to be_valid
  end

  it "is invalid without quantity" do
    order = FactoryGirl.build(:order, quantity: nil)
    expect(order).to be_invalid
  end

  it "is invalid with empty description" do
    order = FactoryGirl.build(:order, quantity: '')
    expect(order).to be_invalid
  end

  it "is invalid with alphabetic quantity" do
    order = FactoryGirl.build(:order, quantity: 'abc')
    expect(order).to be_invalid
  end

end
