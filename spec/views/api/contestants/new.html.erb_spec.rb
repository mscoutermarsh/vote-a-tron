require 'spec_helper'

describe "api/contestants/new" do
  before(:each) do
    assign(:api_contestant, stub_model(Api::Contestant).as_new_record)
  end

  it "renders new api_contestant form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", api_contestants_path, "post" do
    end
  end
end
