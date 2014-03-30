require 'spec_helper'

describe "uploads/show" do
  before(:each) do
    @upload = assign(:upload, stub_model(Upload,
      :filename => "Filename",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Filename/)
    expect(rendered).to match(/MyText/)
  end
end
