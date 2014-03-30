require 'spec_helper'

describe "purchasers/edit" do
  before(:each) do
    @purchaser = assign(:purchaser, stub_model(Purchaser,
      :name => "MyString"
    ))
  end

  it "renders the edit purchaser form" do
    render

    assert_select "form[action=?][method=?]", purchaser_path(@purchaser), "post" do
      assert_select "input#purchaser_name[name=?]", "purchaser[name]"
    end
  end
end
