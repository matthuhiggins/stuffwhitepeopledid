ActionController::Routing::Routes.draw do |map|
  map.root :controller => "landing"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
