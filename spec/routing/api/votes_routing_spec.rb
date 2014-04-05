require "spec_helper"

describe Api::VotesController do
  describe "routing" do

    it "routes to #index" do
      get("/api/votes").should route_to("api/votes#index")
    end

    it "routes to #new" do
      get("/api/votes/new").should route_to("api/votes#new")
    end

    it "routes to #show" do
      get("/api/votes/1").should route_to("api/votes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/api/votes/1/edit").should route_to("api/votes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/api/votes").should route_to("api/votes#create")
    end

    it "routes to #update" do
      put("/api/votes/1").should route_to("api/votes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/api/votes/1").should route_to("api/votes#destroy", :id => "1")
    end

  end
end
