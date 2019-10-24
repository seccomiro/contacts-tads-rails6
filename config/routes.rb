Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :kinds
    end
  end
  resources :contacts do
    get "search", on: :collection
    # collection do
    #   get 'search'
    # end
    # get 'search', on: :member
  end
  resources :companies
  devise_for :users
  resources :kinds
  get "home/index"
  root to: "contacts#index"
end
