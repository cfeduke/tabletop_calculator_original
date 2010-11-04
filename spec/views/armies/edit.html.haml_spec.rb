require 'spec_helper'

describe "armies/edit.html.haml" do
  before(:each) do
    @army = assign(:army, stub_model(Army,
      :new_record? => false,
      :name => "MyString",
      :description => "MyText",
      :point_total => ""
    ))
  end

  it "renders the edit army form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => army_path(@army), :method => "post" do
      assert_select "input#army_name", :name => "army[name]"
      assert_select "textarea#army_description", :name => "army[description]"
      assert_select "input#army_point_total", :name => "army[point_total]"
    end
  end
end
