Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  root 'pages#homepage'
  get '/showcase', to: 'pages#showcase'
  get '/podcast', to: 'pages#podcast'

  # Require Sign In
  resources :directory, only: [:index]
  resources :users, except: [:destroy] # Except, new & create

end
