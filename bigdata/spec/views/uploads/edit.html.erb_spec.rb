require 'spec_helper'

describe "uploads/edit" do
  before(:each) do
    @upload = assign(:upload, stub_model(Upload,
      :filename => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit upload form" do
    render

    assert_select "form[action=?][method=?]", upload_path(@upload), "post" do
      assert_select "input#upload_filename[name=?]", "upload[filename]"
      assert_select "textarea#upload_content[name=?]", "upload[content]"
    end
  end
end
