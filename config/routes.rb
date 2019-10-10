Rails.application.routes.draw do
  resources :phones
  resources :addresses
  resources :contacts
  resources :companies
  devise_for :users
  resources :kinds
  get 'home/index'
  root to: "contacts#index"
end
