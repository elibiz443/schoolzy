Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  get 'users/index'
  get 'users/new'
  get 'sessions/index'
  get 'sessions/new'
  get 'dashboard/index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "dashboard#index"
end
