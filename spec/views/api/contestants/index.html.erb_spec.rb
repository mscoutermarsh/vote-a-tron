require 'spec_helper'

describe "api/contestants/index" do
  before(:each) do
    assign(:api_contestants, [
      stub_model(Api::Contestant),
      stub_model(Api::Contestant)
    ])
  end

  it "renders a list of api/contestants" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
