require 'spec/spec_helper.rb'

describe Shakespeare::Helpers do
  
  class TestController < ApplicationController
  end
  
  describe "#page_content" do
    before do
      @page = mock_model(Page)
      Page.stub!(:find_by_url).and_return(@page)
    end
    
    it "should pull the page" do
      @controller = TestController.new
      @controller.page_content.should == @page
    end
  end
end
