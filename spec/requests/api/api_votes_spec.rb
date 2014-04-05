require 'spec_helper'

describe "Api::Votes" do
  describe "GET /api_votes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get api_votes_path
      response.status.should be(200)
    end
  end
end
