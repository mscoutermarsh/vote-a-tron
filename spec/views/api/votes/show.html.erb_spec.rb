require 'spec_helper'

describe "api/votes/show" do
  before(:each) do
    @api_vote = assign(:api_vote, stub_model(Api::Vote))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
