Rails.application.routes.draw do

  resources :news
  devise_for :users
  get 'home/index'
  root 'home#index'
resources :orders
resources :customers
resources :payments
resources :posts


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
