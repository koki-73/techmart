Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :users, only: :show
  resources :my_pages, only: :index
  resources :items, only: [:show, :index, :new, :create]
  resources :categories, only: :show
  resources :brands, only: :index

end
