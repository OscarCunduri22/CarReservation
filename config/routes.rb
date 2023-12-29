Rails.application.routes.draw do
  resources :types, except: :show
  resources :cars
  root 'home#index'
end
