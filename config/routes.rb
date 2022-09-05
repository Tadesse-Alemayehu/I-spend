Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only:[:index, :show] do
    resources :categories, only: [:index, :show, :new, :create, :destroy]
  end
  # Defines the root path route ("/")
  root "users#index"
end
