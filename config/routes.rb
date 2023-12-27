Rails.application.routes.draw do
=begin
  get '/cars/new' => 'cars#new', as: :new_car
  get "cars" => "cars#index", as: :cars
  get 'cars/:id' => 'cars#show', as: :car
  get 'cars/:id/edit' => 'cars#edit', as: :edit_car
  post '/cars' => 'cars#create'
  patch '/cars/:id' => 'cars#update'
  delete '/cars/:id' => 'cars#destroy'
=end

  #Se reemplaza todas las rutas anteriores con el comando siguiente
  resources :cars, path: '/'

end
