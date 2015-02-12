Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  namespace :api do
    resources :masterclasses, only: [:index]
  end
end
