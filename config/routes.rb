Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "lists#index"
  resources :lists do
    resources :items, except: [:index, :show]
  end
  resources :tags, only: [:show]
  resources :users, only: [:index, :show]
  get :search, to: "searches#search"
end
