Rails.application.routes.draw do
  # Mount Rswag UI and API engines for documentation
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  # Authentication routes for Users 
  devise_for :users
  
  root to: "users#index"
  
  # Blog App routes
  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index, :show, :new, :create, :destroy] do 
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:create]
    end
  end
  
  # API routes
  namespace :api do
    namespace :v1 do
      resources :users do 
        resources :posts do 
          resources :comments
          resources :likes
        end
      end
    end
  end
end
