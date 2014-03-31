require 'spec_helper'

describe Merchant do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with name and adress fields" do
    merchant = FactoryGirl.build(:merchant)
    expect(merchant).to be_valid
  end

  it "is invalid without name" do
    merchant = FactoryGirl.build(:merchant, name: nil)
    expect(merchant).to be_invalid
  end

  it "is invalid without address" do
    merchant = FactoryGirl.build(:merchant, address: nil)
    expect(merchant).to be_invalid
  end

  it "is invalid duplicate names" do
    merchant = Merchant.create(name: 'Sears', address: 'Main Street')
    merchant = Merchant.new(name: 'Sears', address: 'Main Street')
    expect(merchant).to have(1).error_on(:name)
  end
end
