ActionController::Routing::Routes.draw do |map|
  map.resources :categories
  map.resources :articles
  map.root :controller => :categories
  map.login "login",:controller => :sessions , :action => :new
  map.log "loggin_in",:controller => :sessions , :action => :create
  map.logout "logout" , :controller => :sessions , :action => :destroy
end
