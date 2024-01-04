Rails.application.routes.draw do
  root 'home#index'

  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create], path: 'register', path_names: { new: '/' }
    resources :sessions, only: [:new, :create, :destroy], path: 'login', path_names: { new: '/' }
  end
  
  resources :types, except: :show
  resources :cars
  resources :reservations
 

end
