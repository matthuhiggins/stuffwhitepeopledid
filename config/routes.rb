StuffWhitePeopleDid::Application.routes.draw do
  root :to => "home#index"
  match 'me/:action' => 'home'
  resources :accomplishments, :only => [:update, :destroy]

  resources :users, :only => [:index, :show]
  resources :posts, :only => [:index, :show]
end
