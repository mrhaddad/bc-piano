Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  namespace :api do
    resources :masterclasses, only: [:index] do
      resources :performances, only: [:create]
    end
  end
end
