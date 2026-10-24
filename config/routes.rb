Rails.application.routes.draw do
  # Active Admin login and dashboard
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Customer pages
  root "customers#index"

  get "customers/alphabetized", to: "customers#alphabetized"
  get "customers/missing_email", to: "customers#missing_email"

  # Rails health check
  get "up" => "rails/health#show", as: :rails_health_check
end