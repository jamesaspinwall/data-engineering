require 'spec_helper'

describe Purchaser do
  it "has a valid factory" do
    expect(FactoryGirl.build(:purchaser)).to be_valid
  end
end
