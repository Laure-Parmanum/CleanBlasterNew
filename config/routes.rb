Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :categories, only: [:show, :index]
  # get 'services/:id', to: 'services#show'
  resources :services, only: [:show, :index] do
    resources :bookings, only: [:new, :create, :show]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:destroy, :index] do
    member do
      patch "confirm"
      patch "decline"
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
