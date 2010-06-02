class Admin::PagesController < ApplicationController
  
  
  Shakespeare::Settings.before_filters.each do |filter|
    before_filter filter
  end
  before_filter :protect_in_production if Shakespeare::Settings.before_filters.empty?
  
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
  
  def edit
    @page = Page.find(params[:id])
  end
  
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(params[:page])
      redirect_to admin_pages_path
    else
      render :edit
    end
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to admin_pages_path
  end

end