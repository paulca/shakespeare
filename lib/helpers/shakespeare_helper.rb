module ShakespeareHelper
  
  def page_content
    @page_content = Page.find_by_url("#{controller_name}/#{action_name}")
  end
  
end