Rails.application.routes.draw do
  devise_for :users
  root to: "lists#index"
  resources :lists do
    resources :items, except: [:index, :show]
  end
  resources :users, only: :show
end
