# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show] do
    resources :categories, only: %i[index new create] do
      resources :spends, only: [:index] # as the requirement transaction are list for a given category
    end
    resources :spends, only: %i[new create] # as the requirement there is no show for a single transaction
  end
  # Defines the root path route ("/")
  root 'users#index'
end
