Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  resources :appointments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/login', to: 'authentication#login'
  
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index show create destroy]
      resources :appointments, only: %i[index create destroy]
      resources :doctors, only: %i[index show create]
    end
  end
end
