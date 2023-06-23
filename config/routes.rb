Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'houses/index'
      post 'houses/create', to: 'houses#create'
      get 'houses/:id', to: 'houses#show'
      delete 'houses/delete/:id', to: 'houses#destroy'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
