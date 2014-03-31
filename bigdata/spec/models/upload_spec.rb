require 'spec_helper'

describe Upload do
  it "is valid" do
    upload = FactoryGirl.build(:upload)
    expect(upload).to be_valid
  end

  it "is invalid without filename" do
    upload = FactoryGirl.build(:upload, filename: nil)
    expect(upload).to be_invalid
  end


  it "is invalid duplicate filename" do
    upload_first = FactoryGirl.create(:upload)
    upload = Upload.new(filename: upload_first.filename)
    expect(upload).to have(1).error_on(:filename)
  end
end
