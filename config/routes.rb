Rails.application.routes.draw do

  get '/', to: "application#hello", as: "meals_hello"

  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'

  resources :ingredients, :meals
  resources :users, only: [:edit, :update]


end
