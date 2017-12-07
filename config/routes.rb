Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations'}
  root :to => 'home#index'

  resources :products
  resources :order_items
  resource :cart, only: [:show]
  resources :charges, only: [:new, :create]

end
