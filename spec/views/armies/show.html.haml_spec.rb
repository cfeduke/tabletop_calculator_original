require 'spec_helper'

describe "armies/show.html.haml" do
  before(:each) do
    @army = assign(:army, stub_model(Army,
      :name => "Name",
      :description => "MyText",
      :point_total => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
