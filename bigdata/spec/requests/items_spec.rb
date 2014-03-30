require 'spec_helper'

describe "Items" do
  describe "GET /items" do
    it "works! (now write some real specs)" do
      get items_path
      expect(response.status).to be(200)
    end
  end
end
