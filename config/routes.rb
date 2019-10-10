Rails.application.routes.draw do
  devise_for :users
  resources :kinds
  get 'home/index'
  root to: "contacts#index"
end
