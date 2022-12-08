Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :quotes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/me', to: 'users#show'

  post '/login', to: 'sessions#create'
  post '/login', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
end
