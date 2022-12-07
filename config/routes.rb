Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :quotes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#index'

  get '*path', to: 'pages#index',via: :all
  
  get '/me', to: 'users#show'

  post '/login', to: 'sessions#create'
  post '/login', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
end
