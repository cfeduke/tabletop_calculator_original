require 'spec_helper'

describe Unit do
  pending "add some examples to (or delete) #{__FILE__}"
end

describe Unit, "when first created" do
  it "should have a total_points value of zero" do
    unit = Unit.new();
    unit.total_points.should eql(0)
  end
end

describe Unit, "when some unit options are specified" do
  it "should have a total_points value equal to the sum of all unit_options" do
    unit = Unit.new();
    unit.unit_options << UnitOption.new(:points => 50) << UnitOption.new(:points => 100)
    unit.total_points.should eql(150)
  end
  
  it "should have a total_points value equal to the sum of all unit_options excepting unit_options with nil points values" do
    unit = Unit.new();
    unit.unit_options << UnitOption.new(:points => 50) << UnitOption.new(:points => 100) << UnitOption.new()
    unit.total_points.should eql(150)
  end
end