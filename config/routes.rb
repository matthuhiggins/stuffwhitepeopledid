StuffWhitePeopleDid::Application.routes.draw do
  root :to => "home#index"
  resources :accomplishments, :only => [:create, :destroy]

  resources :users, :only => [:index, :show]
  resources :posts, :only => [:index, :show]
end
