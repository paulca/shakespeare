require 'spec/spec_helper'

describe Page do

  describe "#robots" do
  
    before do
      @page = Page.make_unsaved
    end
  
    it "should have no robots" do
      @page.robots.should be_blank
    end
  
    it "should have nofollow by itself" do
      @page.nofollow = true
      @page.robots.should == 'nofollow'
    end
  
    it "should have both nofollow and noindex" do
      @page.nofollow = true
      @page.noindex = true
      @page.robots.should == 'noindex, nofollow'
    end
  
  end
  
  describe "#set_url" do
    before do
      @page = Page.new(:title => "Harry B")
    end
    
    it "should set the URL" do
      @page.clean_url.should == "harry-b"
    end
    
    it "should save the URL" do
      @page.save!
      @page.url.should == 'harry-b'
    end
    
  end

end