Rails.application.routes.draw do
  root to: 'kittens#index'
  
   get '/signup' => 'users#new'
   post '/users' => 'users#create'
  
   get '/signin' => 'sessions#new'
   post '/signin' => 'sessions#create'
   get '/signout' => 'sessions#destroy'
  end
