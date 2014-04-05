require 'spec_helper'

describe "api/votes/edit" do
  before(:each) do
    @api_vote = assign(:api_vote, stub_model(Api::Vote))
  end

  it "renders the edit api_vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", api_vote_path(@api_vote), "post" do
    end
  end
end
