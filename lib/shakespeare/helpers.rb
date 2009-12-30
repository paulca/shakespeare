module Shakespeare
  module Helpers
    def self.included(base)
      base.send :helper_method, :page_content
    end
  
    def page_content
      @page_content = Page.find_by_url("#{controller_name}/#{action_name}")
    end
  end
end