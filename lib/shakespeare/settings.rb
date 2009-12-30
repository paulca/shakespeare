module Shakespeare
  class Settings
    class << self      
      def layout
        @layout ||= 'admin'
      end
      
      def layout=(layout_choice)
        @layout = layout_choice
      end
      
      def before_filters
        @before_filters ||= ['protect_in_production']
      end
      
      def before_filters=(filters)
        @before_filters ||= filters
      end
      
      def allow_anonymous
        @allow_anonymous ||= false
      end
      
      def allow_anonymous=(boolean)
        @allow_anonymous = boolean
      end
    end
  end
  
end