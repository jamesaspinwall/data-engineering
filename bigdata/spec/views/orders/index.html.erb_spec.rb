require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :upload_id => 1,
        :purchaser_id => 2,
        :item_id => 3,
        :quantity => 4
      ),
      stub_model(Order,
        :upload_id => 1,
        :purchaser_id => 2,
        :item_id => 3,
        :quantity => 4
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
