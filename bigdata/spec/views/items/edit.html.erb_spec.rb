require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :merchant_id => 1,
      :description => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do
      assert_select "input#item_merchant_id[name=?]", "item[merchant_id]"
      assert_select "input#item_description[name=?]", "item[description]"
      assert_select "input#item_price[name=?]", "item[price]"
    end
  end
end
