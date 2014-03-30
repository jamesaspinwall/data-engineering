require 'spec_helper'

describe "merchants/edit" do
  before(:each) do
    @merchant = assign(:merchant, stub_model(Merchant,
      :name => "MyString",
      :address => "MyString"
    ))
  end

  it "renders the edit merchant form" do
    render

    assert_select "form[action=?][method=?]", merchant_path(@merchant), "post" do
      assert_select "input#merchant_name[name=?]", "merchant[name]"
      assert_select "input#merchant_address[name=?]", "merchant[address]"
    end
  end
end
