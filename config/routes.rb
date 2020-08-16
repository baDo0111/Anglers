Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :update, :edit]
  root 'homes#index'

  resources :fishs do
  	resource :fish_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  end
end