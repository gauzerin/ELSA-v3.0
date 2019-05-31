Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  resources :hostels do
    resources :beds, only: [:new, :create]
    resources :bookings, only: [:index]
  end

  resources :beds, only: [:edit, :update, :destroy]

  resources :bookings, except: [:index]

  resources :reviews, only: [:index, :new, :create]
  # only create, show, and display all reviews

  get 'user_dashboard', to: 'pages#user_dashboard'
  get 'partner_dashboard', to: 'pages#partner_dashboard'
  get 'trips', to: 'users#trips'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
