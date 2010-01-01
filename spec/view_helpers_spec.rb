require 'spec/spec_helper'

describe Shakespeare::ViewHelpers do
  include Shakespeare::Helpers
  include Shakespeare::ViewHelpers
  
  def controller_name; end
  
  def action_name; end
  
  before(:all) do
    @page = Page.make_unsaved(
      :title => "Made Up",
      :description => "A description",
      :keywords => "awesome, code"
      )
  end
  
  context "no page" do
    
    describe "#page_title" do
      it "should be nil" do
        page_title.should be_nil
      end
    end
    
    
    describe  "#description_meta_tag" do
      it "should be nil" do
        description_meta_tag.should be_nil
      end
    end

    describe  "#keywords_meta_tag" do
      it "should be nil" do
        keywords_meta_tag.should be_nil
      end
    end
  end

    
  context "with a page" do
    
    before(:all) do
      Page.stub!(:find_by_url).and_return(@page)
    end
    
    describe "#page_title" do
      it "should be the page title" do  
        page_title.should == "Made Up"
      end
    end
    
    describe "#description_meta_tag" do
      it "should generate the tag" do
        description_meta_tag.should == %Q[<meta name="description" content="A description">]
      end
    end
    
    describe "#keywords_meta_tag" do
      it "should generate the tag" do
        keywords_meta_tag.should == %Q[<meta name="keywords" content="awesome, code">]
      end
    end
    
  end

end