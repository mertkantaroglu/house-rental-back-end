Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }
  namespace :api do
    namespace :v1 do
      resources :houses, only: [:index, :create, :show, :destroy]
      resources :reservations, only: [:index, :create, :show, :destroy]
    end
  end
end
