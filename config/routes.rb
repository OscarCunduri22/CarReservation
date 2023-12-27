Rails.application.routes.draw do
  get '/cars/new' => 'cars#new', as: :new_car
  get "cars" => "cars#index", as: :cars
  get 'cars/:id' => 'cars#show', as: :car
  
  post '/cars' => 'cars#create'
end
