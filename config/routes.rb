Rails.application.routes.draw do
  root 'home#index'
  
  resources :types, except: :show
  resources :cars
  resources :reservations

  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create, :destroy]
  end

end
