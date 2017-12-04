Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root :to => 'home#index'

  resources :products
  resources :order_items
  resource :cart, only: [:show]
end
