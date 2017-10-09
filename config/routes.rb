Rails.application.routes.draw do

  # get '/albums', to: 'albums#index', as: :albums
  # post '/albums', to: 'albums#create', as: nil
  # get '/albums/new', to: 'albums#new', as: :new_album
  
  # get '/albums/:id/photos/new', to: 'albums#new', as: :new_album
  # post '/photos', to: 'photos#create', as: :photos

  get '/home', to: 'homes#index', as: :home

  delete '/albums/:id1/:id2', to: 'photos#destroy', as: nil
  
  get '/albums/:id1/:id2', to: 'photos#show', as: :photo
  post '/albums/:id/', to: 'photos#create', as: :photos

  get '/albums', to: 'albums#index', as: :albums
  post '/albums', to: 'albums#create', as: nil
  get '/albums/new', to: 'albums#new', as: :new_album
  get '/albums/:id', to: 'albums#show', as: :album

  # resources :albums, only: [:new, :create]

  resources :users, only: [:new, :create]

  get '/sessions/login', to: 'sessions#new', as: :login
  post '/sessions/login', to: 'sessions#create', as: nil
  delete '/sessions/logout', to: 'sessions#destroy', as: :logout

  #get '/articles', to: 'articles#index'
  resources :articles, only: [:index, :show, :edit, :update, :destroy] do
  	resources :comments, only: [:index]	
  end

  resources :photos, only: [:index]
  resources :abouts, only: [:index]
end
