Rails.application.routes.draw do
  get 'dashboard/index'

  get 'login', to: 'sessions#index'
  get "logout", to: "sessions#destroy"
  get 'signup', to: 'users#new'
  resources :users, only: [:create, :update, :destroy]
  resources :sessions, only: [:new]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "dashboard#index"
end
