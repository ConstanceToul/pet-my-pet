Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home', to: 'pages#home'

  resources :pets, only: [:index, :show] do
    resources :bookings, only: [:create]
  end

  namespace :owner do
    resources :pets
    resources :bookings, only: [:index]
  end


  namespace :renter do
    resources :bookings, only: [:index, :edit, :destroy]
  end


  get '/profile' => "pages#profile"
end
