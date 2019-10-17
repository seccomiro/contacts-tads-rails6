Rails.application.routes.draw do
  resources :contacts do
    get 'search', on: :collection
    # collection do
    #   get 'search'
    # end
    # get 'search', on: :member
  end
  resources :companies
  devise_for :users
  resources :kinds
  get 'home/index'
  root to: "contacts#index"
end
