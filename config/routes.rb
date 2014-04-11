Rails.application.routes.draw do
  resources :products
  root :to => 'products#show'
end
