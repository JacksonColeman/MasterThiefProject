Rails.application.routes.draw do
  resources :comments
  resources :masterpieces
  resources :levels
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/login', to: 'sessions#login'

  post '/signup', to: "users#create"

  get '/me', to: "users#show"

  delete '/logout', to: "sessions#destroy"

  get '*path',
      to: 'fallback#index',
      constraints: ->(req) { !req.xhr? && req.format.html? }
end
