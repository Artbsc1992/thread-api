Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "daily#index", as: "/"

  resources :users do 
    resources :friendships do 
      resources :notifications 
    end
    resources :dailies do
      resources :notifications 
      resources :comments do 
        resources :notifications 
      end
    end
  end

end
