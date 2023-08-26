Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :categories, only: :index
  # get 'services/:id', to: 'services#show'
  resources :services, only: [:show, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
