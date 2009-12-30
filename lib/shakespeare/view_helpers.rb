module Shakespeare
  module ViewHelpers
    def page_title
      @page_content.title if @page_content and @page_content.title.present?
    end
  end
end