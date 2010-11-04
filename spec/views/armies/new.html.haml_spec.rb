require 'spec_helper'

describe "armies/new.html.haml" do
  before(:each) do
    assign(:army, stub_model(Army,
      :name => "MyString",
      :description => "MyText",
      :point_total => ""
    ).as_new_record)
  end

  it "renders new army form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => armies_path, :method => "post" do
      assert_select "input#army_name", :name => "army[name]"
      assert_select "textarea#army_description", :name => "army[description]"
      assert_select "input#army_point_total", :name => "army[point_total]"
    end
  end
end
