Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'

  resources :users, only: [:index, :show, :update, :edit]

  resources :fishs do
  	resource :fish_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  end

  resources :inquiries, only: [:index, :create]

  post '/homes/guest_sign_in', to: 'homes#new_guest'
end