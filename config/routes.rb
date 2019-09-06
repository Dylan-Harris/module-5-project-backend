Rails.application.routes.draw do
  root 'static#index'
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update, :index]
      resources :reviews, only: [:create, :destroy]
      resources :wishlists, only: [:create, :destroy, :index]
      resources :forums, only: [:create, :show, :index]
      resources :comments, only: [:create, :show]
      resources :relationships, only: [:create, :destroy, :index]
      resources :games
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/users', to: 'users#index'
      get '/games', to: 'games#index'
      # post '/review', to: 'reviews#create'
      # delete '/review', to: 'reviews#destroy'
      # post '/wishlist', to: 'wishlists#create'
      # delete '/wishlist', to: 'wishlists#destroy'
    end
  end
end