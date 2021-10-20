Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # All restaurants
  # get 'restaurants', to: 'restaurants#index'

  # # Creating new restaurant
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  # # Details of a especific restaurant
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # # Creating new review
  # get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_review
  # post 'restaurants/:id/reviews', to: 'reviews#create'

  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
end
