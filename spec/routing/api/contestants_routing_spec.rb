require "spec_helper"

describe Api::ContestantsController do
  describe "routing" do

    it "routes to #index" do
      get("/api/contestants").should route_to("api/contestants#index")
    end

    it "routes to #new" do
      get("/api/contestants/new").should route_to("api/contestants#new")
    end

    it "routes to #show" do
      get("/api/contestants/1").should route_to("api/contestants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/api/contestants/1/edit").should route_to("api/contestants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/api/contestants").should route_to("api/contestants#create")
    end

    it "routes to #update" do
      put("/api/contestants/1").should route_to("api/contestants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/api/contestants/1").should route_to("api/contestants#destroy", :id => "1")
    end

  end
end
