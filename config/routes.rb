Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}

  root 'home#index'

  namespace :api do
    resources :masterclasses, only: [:index] do
      resources :performances, only: [:create, :destroy]
    end
  end
end
