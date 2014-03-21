require "spec_helper"

describe InformationConesController do
  describe "routing" do

    it "routes to #index" do
      get("/information_cones").should route_to("information_cones#index")
    end

    it "routes to #new" do
      get("/information_cones/new").should route_to("information_cones#new")
    end

    it "routes to #show" do
      get("/information_cones/1").should route_to("information_cones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/information_cones/1/edit").should route_to("information_cones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/information_cones").should route_to("information_cones#create")
    end

    it "routes to #update" do
      put("/information_cones/1").should route_to("information_cones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/information_cones/1").should route_to("information_cones#destroy", :id => "1")
    end

  end
end
