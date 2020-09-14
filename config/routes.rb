Rails.application.routes.draw do
  get '/' => 'application#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  # resources :musics
  resources :reactions
  resources :reviews do 
    resources :reactions, only: [:new, :index]
  end

  namespace :api do
    resources :musics do
      collection do
        get :top_100
        get :random
        get :search
      end
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
