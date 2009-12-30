require 'spec/spec_helper'

describe Shakespeare::ViewHelpers do
  include Shakespeare::ViewHelpers
  
  describe "#page_title" do
    context "no page" do
      it "should just be nil" do
        page_title.should be_nil
      end
    end
    
    context "with a page" do
      it "should be the page title" do
        @page_content = Page.make_unsaved(:title => "Made Up")
        page_title.should == "Made Up"
      end
    end
  end
end