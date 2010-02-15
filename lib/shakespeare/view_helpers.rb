module Shakespeare
  module ViewHelpers
    def page_title
      return if page_content.nil? or page_content.title.blank?
      page_content.title
    end
    
    def description_meta_tag
      return if page_content.nil? or page_content.description.blank?
      %Q[<meta name="description" content="#{page_content.description}">]
    end
    
    def keywords_meta_tag
      return if page_content.nil? or page_content.keywords.blank?
      %Q[<meta name="keywords" content="#{page_content.keywords}">]
    end
    
    def robots_meta_tag
      return if page_content.nil? or page_content.robots.blank?
      %Q[<meta name="robots" content="#{page_content.robots}">]
    end
    
    def canonical_link_tag
      return if page_content.nil? or page_content.canonical.blank?
      return unless page_content.enable_canonical?
      %Q[<link href="#{page_content.canonical}" rel="canonical" />]
    end
  end
end