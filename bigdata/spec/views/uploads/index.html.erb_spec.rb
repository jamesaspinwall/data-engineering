require 'spec_helper'

describe "uploads/index" do
  before(:each) do
    assign(:uploads, [
      stub_model(Upload,
        :filename => "Filename",
        :content => "MyText"
      ),
      stub_model(Upload,
        :filename => "Filename",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of uploads" do
    render
    assert_select "tr>td", :text => "Filename".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
