Rails.application.routes.draw do
  # resources :messages
  devise_for :users
  
  # Nesting "resources :messages" into "resources ;rooms"
  resources :rooms do
    resources :messages
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "rooms#index"
end
