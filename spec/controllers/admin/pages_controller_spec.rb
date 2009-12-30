require 'spec/spec_helper'

describe Admin::PagesController do
  
  describe "#protect_in_production" do
    
    
    context "not in production" do
      
      it "shouldn't do anything" do
        @controller = Admin::PagesController.new
        @controller.protect_in_production.should be_true
      end
      
    end
    
    context "in production" do
      
      it "shouldn't allow proceeding by default" do
        Shakespeare.stub!(:env).and_return('production')
        get :index
        response.body.should == 'Unauthorized'
      end
      
      it "should allow proceeding if allow_anonymous is set" do
        Shakespeare.stub!(:env).and_return('production')
        Shakespeare::Settings.stub!(:allow_anonymous).and_return(true)
        get :index
        response.body.should_not == 'Unauthorized'
      end
      
    end
  end
  
end