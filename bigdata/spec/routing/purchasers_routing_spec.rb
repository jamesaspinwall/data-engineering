require "spec_helper"

describe PurchasersController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/purchasers").to route_to("purchasers#index")
    end

    it "routes to #new" do
      expect(:get => "/purchasers/new").to route_to("purchasers#new")
    end

    it "routes to #show" do
      expect(:get => "/purchasers/1").to route_to("purchasers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/purchasers/1/edit").to route_to("purchasers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/purchasers").to route_to("purchasers#create")
    end

    it "routes to #update" do
      expect(:put => "/purchasers/1").to route_to("purchasers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/purchasers/1").to route_to("purchasers#destroy", :id => "1")
    end

  end
end
