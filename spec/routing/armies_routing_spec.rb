require "spec_helper"

describe ArmiesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/armies" }.should route_to(:controller => "armies", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/armies/new" }.should route_to(:controller => "armies", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/armies/1" }.should route_to(:controller => "armies", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/armies/1/edit" }.should route_to(:controller => "armies", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/armies" }.should route_to(:controller => "armies", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/armies/1" }.should route_to(:controller => "armies", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/armies/1" }.should route_to(:controller => "armies", :action => "destroy", :id => "1")
    end

  end
end
