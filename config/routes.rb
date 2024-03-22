Rails.application.routes.draw do
  resources :nba_rosters
  root 'nba_rosters#index'
  resources :nba_players
end

