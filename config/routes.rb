Rails.application.routes.draw do
  root "home#index"
  get 'home/index'


  resources :bookings
end
