Rails.application.routes.draw do
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # get '/restaurant/new', to: 'restaurants#new', as: 'new_restaurant'
  # post '/restaurants/create', to: 'restaurants#create', as: 'create_restaurant'
  # get '/restaurants', to: 'restaurants#index', as: 'all_restaurants'
  # post '/restaurant/:restaurant_id/review', to: 'reviews#create'
  # get '/restaurant/:restaurant_id/review/new', to: 'reviews#new'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
