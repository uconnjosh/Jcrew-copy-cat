Rails.application.routes.draw do
  resources :carts
  resources :users
  resources :sessions
  resources :products
  resources :session_items
  root :to => 'products#index'
end
