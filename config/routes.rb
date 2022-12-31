Rails.application.routes.draw do
  # => This is commented out because we are using devise_for :users in the scope :api do block below 
  # => and we cant use the default devise_for :users for the web app and the api at the same time
  # => because they both use the same routes
  #devise_for :users 
  
  root to: "users#index"
  
  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index, :show, :new, :create, :destroy] do 
      resources :comments, only: [:new, :create, :destroy]
      resources :likes, only: [:create]
    end
  end

  scope :api, defaults: { format: :json } do
    scope :v1 do 
      devise_for :users, # => this is the devise_for :users that is used for the api
      controllers: { 
        registrations: 'api/v1/users/registrations', 
        sessions: 'api/v1/users/sessions' 
      },
      path: '',
      path_names: { 
        sign_in: 'login',
        sign_out: 'logout',
        registration: 'register'
      }
    end
  end
  
  # API routes
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show] do 
        resources :posts, only: [:index, :show] do 
          resources :comments, only: [:index, :show, :create]
        end
      end
    end
  end
end
