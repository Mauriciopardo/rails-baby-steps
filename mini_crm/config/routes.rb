Rails.application.routes.draw do
  # All the pages for leads: list, new, edit, show, delete
  resources :leads

  # Health check used by hosting services
  get "up" => "rails/health#show", as: :rails_health_check

  # Home page: show the list of leads
  root "leads#index"
end