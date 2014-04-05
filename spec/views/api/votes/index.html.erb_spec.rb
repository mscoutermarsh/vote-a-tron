require 'spec_helper'

describe "api/votes/index" do
  before(:each) do
    assign(:api_votes, [
      stub_model(Api::Vote),
      stub_model(Api::Vote)
    ])
  end

  it "renders a list of api/votes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
