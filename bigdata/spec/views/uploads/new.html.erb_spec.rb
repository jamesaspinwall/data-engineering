require 'spec_helper'

describe "uploads/new" do
  before(:each) do
    assign(:upload, stub_model(Upload,
      :filename => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new upload form" do
    render

    assert_select "form[action=?][method=?]", uploads_path, "post" do
      assert_select "input#upload_filename[name=?]", "upload[filename]"
      assert_select "textarea#upload_content[name=?]", "upload[content]"
    end
  end
end
