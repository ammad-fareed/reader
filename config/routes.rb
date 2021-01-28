Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :folders
  end
  # Root / Home
  root 'home#index'

  # Ignore this (Conflict with the gem installation)
  get '/serviceworker.js', :to => redirect('serviceworker.js')
end
