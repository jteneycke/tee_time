Rails.application.routes.draw do
  devise_for :users

  root "clubs#index"

  resources :bookings, :clubs
end
