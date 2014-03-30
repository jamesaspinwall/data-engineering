require 'spec_helper'

describe "merchants/new" do
  before(:each) do
    assign(:merchant, stub_model(Merchant,
      :name => "MyString",
      :address => "MyString"
    ).as_new_record)
  end

  it "renders new merchant form" do
    render

    assert_select "form[action=?][method=?]", merchants_path, "post" do
      assert_select "input#merchant_name[name=?]", "merchant[name]"
      assert_select "input#merchant_address[name=?]", "merchant[address]"
    end
  end
end
