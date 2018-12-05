Rails.application.routes.draw do
  resources :records
  resources :programs
  resources :facilities
  resources :shelter_orgs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
