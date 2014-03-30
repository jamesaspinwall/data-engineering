require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :merchant_id => 1,
      :description => "MyString",
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do
      assert_select "input#item_merchant_id[name=?]", "item[merchant_id]"
      assert_select "input#item_description[name=?]", "item[description]"
      assert_select "input#item_price[name=?]", "item[price]"
    end
  end
end
