require 'spec_helper'

describe "api/contestants/show" do
  before(:each) do
    @api_contestant = assign(:api_contestant, stub_model(Api::Contestant))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
