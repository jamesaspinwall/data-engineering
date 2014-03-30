require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :merchant_id => 1,
        :description => "Description",
        :price => "9.99"
      ),
      stub_model(Item,
        :merchant_id => 1,
        :description => "Description",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
