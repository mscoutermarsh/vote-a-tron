require 'spec_helper'

describe "api/contestants/edit" do
  before(:each) do
    @api_contestant = assign(:api_contestant, stub_model(Api::Contestant))
  end

  it "renders the edit api_contestant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", api_contestant_path(@api_contestant), "post" do
    end
  end
end
