ActionController::Routing::Routes.draw do |map|
  
  map.resources :pages, :requirements => {:id => /.*/}
  
  map.namespace :admin do |admin|
    admin.resources :pages, :requirements => {:id => /.*/}
  end
end