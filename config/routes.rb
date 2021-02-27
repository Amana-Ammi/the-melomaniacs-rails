Rails.application.routes.draw do
  
  get '/' => 'application#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/auth/facebook/callback' => 'fbs#create'
  get '/songs' => 'reviews#song'

  
  resources :fbs
  resources :users
  resources :reactions
  
  resources :reviews do 
    resources :reactions, only: [:new, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
