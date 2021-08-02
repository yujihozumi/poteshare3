Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get 'users/account'
  get 'users/profile'
  get 'rooms/search'
  post 'users/profile' => 'users#profile'
  resources :users, only: [:index, :profile, :update] do
    
  end
  resources :rooms
  resources :reservations
end
