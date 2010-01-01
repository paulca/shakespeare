class Page < ActiveRecord::Base
  
  def robots
    out = []
    out << 'noindex' if noindex?
    out << 'nofollow' if nofollow?
    out.join(', ')
  end

end