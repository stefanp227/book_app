Rails.application.routes.draw do
  get 'sessions/new'

  resources :books
  resources :users

  root 'books#new'

  get '/signup', to: 'users#new' 
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
