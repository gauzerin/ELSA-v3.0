Rails.application.routes.draw do

  get 'hostels/new'
  get 'hostels/create'
  get 'hostels/update'
  get 'hostels/edit'
  get 'hostels/destroy'
  get 'hostels/index'
  get 'hostels/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/update'
  get 'bookings/edit'
  get 'bookings/destroy'
  get 'bookings/index'
  get 'bookings/show'
  devise_for :users
  root to: 'pages#home'

  resources :beds, only: [:new, :create, :delete] do
    resources :bookings
  end

  resources :rooms, only: [:new, :index, :delete, :create]
  resources :hostels

  get 'user_dashboard', to: 'pages#user_dashboard'
  get 'partner_dashboard', to: 'pages#partner_dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
