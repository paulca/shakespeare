module Shakespeare
  module Helpers
    def self.included(base)
      base.send :helper_method, :page_content
    end
  
    def page_content
      @page_content = Page.find_by_url("#{controller_name}/#{action_name}")
    end
    
    def protect_in_production
      return true unless Shakespeare.env == 'production'
      render :text => 'Unauthorized' unless Shakespeare::Settings.allow_anonymous
    end
  end
end