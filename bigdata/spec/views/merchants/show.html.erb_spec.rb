require 'spec_helper'

describe "merchants/show" do
  before(:each) do
    @merchant = assign(:merchant, stub_model(Merchant,
      :name => "Name",
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
  end
end
