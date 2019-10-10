Rails.application.routes.draw do
  devise_for :users
  resources :contacts
  resources :kinds
  get 'home/index'
  root to: "contacts#index"
end
