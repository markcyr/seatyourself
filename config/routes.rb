Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'home/index'
  resources :users, only: [:new, :create]
  resources :reservations
  resources :restaurants
  resources :sessions, only: [:new, :create, :destroy]

end
