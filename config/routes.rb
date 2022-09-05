Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only:[:index] do
    resources :categories, only: [:index, :new, :create, :destroy] do
      resources :spends, only: [:index] # as the requirement transaction are list for a given category
    end
      resources :spends, only: [:new, :create, :destroy] # as the requirement there is no show for a single transaction
  end
  # Defines the root path route ("/")
  root "users#index"
end
