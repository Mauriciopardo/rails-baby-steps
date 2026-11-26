Rails.application.routes.draw do
  # All the pages for goals: list, new, edit, show, delete
  resources :goals

  # Health check used by hosting services
  get "up" => "rails/health#show", as: :rails_health_check

  # Home page: show the list of goals
  root "goals#index"
end