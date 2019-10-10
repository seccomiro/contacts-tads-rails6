Rails.application.routes.draw do
  resources :contacts
  resources :companies
  devise_for :users
  resources :kinds
  get 'home/index'
  root to: "contacts#index"
end
