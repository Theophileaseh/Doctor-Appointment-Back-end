Rails.application.routes.draw do
  devise_for :users
  resources :appointments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/login', to: 'authentication#login'
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :appointments
      resources :doctors
    end
  end
end
