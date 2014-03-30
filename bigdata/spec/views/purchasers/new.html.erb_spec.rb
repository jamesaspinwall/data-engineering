require 'spec_helper'

describe "purchasers/new" do
  before(:each) do
    assign(:purchaser, stub_model(Purchaser,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new purchaser form" do
    render

    assert_select "form[action=?][method=?]", purchasers_path, "post" do
      assert_select "input#purchaser_name[name=?]", "purchaser[name]"
    end
  end
end
