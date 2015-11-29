Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  root 'pages#homepage'
  get '/showcase', to: 'pages#showcase'
  get '/podcast', to: 'pages#podcast'

  # Require Sign In
  resources :directory, only: [:index]
  resources :users, except: [:destroy], path: "members" # Except, new & create
  resources :projects

  namespace :admin do
    resources :users, only: [:index] do
      member do
        get :accept_invite
      end
    end
  end

end
