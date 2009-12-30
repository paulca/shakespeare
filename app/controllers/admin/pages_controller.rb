class Admin::PagesController < ApplicationController
  
  
  Shakespeare::Settings.before_filters.each do |filter|
    before_filter filter
  end
  
  layout Shakespeare::Settings.layout
  
  def index
    @pages = Page.all
  end
  
  def new
    @page = Page.new
  end
  
  def create
    @page = Page.new(params[:page])
    if @page.save
      redirect_to admin_pages_path
    else
      render :new
    end
  end

end