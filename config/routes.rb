ActionController::Routing::Routes.draw do |map|
  
  map.resources :pages
  
  map.namespace :admin do |admin|
    admin.resources :pages
  end
end