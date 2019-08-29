Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :update]
      resources :reviews, only: [:create, :destroy]
      resources :wishlists, only: [:create, :destroy]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/users', to: 'users#index'
      # post '/review', to: 'reviews#create'
      # delete '/review', to: 'reviews#destroy'
      post '/wishlist', to: 'wishlists#create'
      # delete '/wishlist', to: 'wishlists#destroy'
    end
  end
end