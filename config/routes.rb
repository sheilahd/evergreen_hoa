Rails.application.routes.draw do
  resources :posts
  get 'home/index'
  root 'home#index'
  resources :orders
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end