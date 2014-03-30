require 'spec_helper'

describe "merchants/index" do
  before(:each) do
    assign(:merchants, [
      stub_model(Merchant,
        :name => "Name",
        :address => "Address"
      ),
      stub_model(Merchant,
        :name => "Name",
        :address => "Address"
      )
    ])
  end

  it "renders a list of merchants" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
