require 'spec_helper'

describe "armies/index.html.haml" do
  before(:each) do
    assign(:armies, [
      stub_model(Army,
        :name => "Name",
        :description => "MyText",
        :point_total => ""
      ),
      stub_model(Army,
        :name => "Name",
        :description => "MyText",
        :point_total => ""
      )
    ])
  end

  it "renders a list of armies" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
