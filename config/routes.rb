Rails.application.routes.draw do
  resources :types, except: :show
  resources :cars
  root 'home#index'

  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create]
    resources :sessions, only: [:new, :create, :destroy]
  end

end
