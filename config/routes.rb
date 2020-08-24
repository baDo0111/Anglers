Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations', passwords: 'users/passwords'}
  resources :users, only: [:index, :show, :update, :edit]
  root 'homes#index'
  post '/homes/guest_sign_in', to: 'homes#new_guest'

  resources :fishs do
  	resource :fish_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  end
end