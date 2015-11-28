Rails.application.routes.draw do

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  root 'pages#homepage'

  resources :directory, only: [:index]

  resources :users, except: [:destroy]

end
