Rails.application.routes.draw do
  resources :stadium_teams
  resources :capacities
  resources :stadium_names
  resources :team_cities
  resources :teams
  resources :stadia
  resources :cities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
