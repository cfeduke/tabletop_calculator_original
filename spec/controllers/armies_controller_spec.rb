require 'spec_helper'

describe ArmiesController do

  def mock_army(stubs={})
    (@mock_army ||= mock_model(Army).as_null_object).tap do |army|
      army.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all armies as @armies" do
      Army.stub(:all) { [mock_army] }
      get :index
      assigns(:armies).should eq([mock_army])
    end
  end

  describe "GET show" do
    it "assigns the requested army as @army" do
      Army.stub(:find).with("37") { mock_army }
      get :show, :id => "37"
      assigns(:army).should be(mock_army)
    end
  end

  describe "GET new" do
    it "assigns a new army as @army" do
      Army.stub(:new) { mock_army }
      get :new
      assigns(:army).should be(mock_army)
    end
  end

  describe "GET edit" do
    it "assigns the requested army as @army" do
      Army.stub(:find).with("37") { mock_army }
      get :edit, :id => "37"
      assigns(:army).should be(mock_army)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created army as @army" do
        Army.stub(:new).with({'these' => 'params'}) { mock_army(:save => true) }
        post :create, :army => {'these' => 'params'}
        assigns(:army).should be(mock_army)
      end

      it "redirects to the created army" do
        Army.stub(:new) { mock_army(:save => true) }
        post :create, :army => {}
        response.should redirect_to(army_url(mock_army))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved army as @army" do
        Army.stub(:new).with({'these' => 'params'}) { mock_army(:save => false) }
        post :create, :army => {'these' => 'params'}
        assigns(:army).should be(mock_army)
      end

      it "re-renders the 'new' template" do
        Army.stub(:new) { mock_army(:save => false) }
        post :create, :army => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested army" do
        Army.should_receive(:find).with("37") { mock_army }
        mock_army.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :army => {'these' => 'params'}
      end

      it "assigns the requested army as @army" do
        Army.stub(:find) { mock_army(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:army).should be(mock_army)
      end

      it "redirects to the army" do
        Army.stub(:find) { mock_army(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(army_url(mock_army))
      end
    end

    describe "with invalid params" do
      it "assigns the army as @army" do
        Army.stub(:find) { mock_army(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:army).should be(mock_army)
      end

      it "re-renders the 'edit' template" do
        Army.stub(:find) { mock_army(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested army" do
      Army.should_receive(:find).with("37") { mock_army }
      mock_army.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the armies list" do
      Army.stub(:find) { mock_army }
      delete :destroy, :id => "1"
      response.should redirect_to(armies_url)
    end
  end

end
