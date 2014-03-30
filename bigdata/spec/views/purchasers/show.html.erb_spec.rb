require 'spec_helper'

describe "purchasers/show" do
  before(:each) do
    @purchaser = assign(:purchaser, stub_model(Purchaser,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
