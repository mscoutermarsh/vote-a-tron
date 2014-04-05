require 'spec_helper'

describe "api/votes/new" do
  before(:each) do
    assign(:api_vote, stub_model(Api::Vote).as_new_record)
  end

  it "renders new api_vote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", api_votes_path, "post" do
    end
  end
end
