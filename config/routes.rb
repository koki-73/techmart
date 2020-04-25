Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :users, only: :show
  resources :my_pages, only: :index
end
