class Page < ActiveRecord::Base
  
  validates_presence_of :title
  validates_format_of :url, :with => /\s*/, :if => Proc.new { |p| !p.url.blank? }
  
  before_validation :set_url
  
  def robots
    out = []
    out << 'noindex' if noindex?
    out << 'nofollow' if nofollow?
    out.join(', ')
  end
  
  def to_param
    url
  end
  
  def clean_url
    title.to_s.downcase.gsub(/[^a-z0-9\s]/, '').gsub(/\s/,'-')
  end
  
  def set_url
    self.url ||= clean_url
  end

end