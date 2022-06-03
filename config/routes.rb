Rails.application.routes.draw do
  
  resources :currencies
  resources :users
  resources :exchanges
  resources :checkings
  resources :savings
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
  post "/signup", to: "user#create"
  post "/", to: "sessions#create"
end
