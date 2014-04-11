Rails.application.routes.draw do


  resources :users
  resources :sessions
  resources :products
  root :to => 'products#show'
end
