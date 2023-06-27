Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }
  namespace :api do
    namespace :v1 do
      # resources :users, only: [:index, :show, :create]
      # get 'houses/index'
      # post 'houses/create', to: 'houses#create'
      # get 'houses/:id', to: 'houses#show'
      # delete 'houses/delete/:id', to: 'houses#destroy'
      resources :houses, only: [:index, :create, :show, :destroy]
      resources :reservations, only: [:index, :create, :destroy]
    end
  end
end
