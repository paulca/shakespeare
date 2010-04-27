require 'shakespeare/settings'
require 'shakespeare/shakespeare'
require 'shakespeare/helpers'
require 'shakespeare/view_helpers'

ActionController::Base.send(:include, Shakespeare::Helpers)
ActionView::Base.send(:include, Shakespeare::Helpers)
ActionView::Base.send(:include, Shakespeare::ViewHelpers)