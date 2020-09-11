Rails.application.routes.draw do
  get '/' => 'application#home'
  get '/signup' => 'users#new'
  # get '/login' => 
  # post '/login' =>


  resources :musics
  resources :reactions
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
