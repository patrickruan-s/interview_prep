Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :users
  resources :nba_rosters
  resources :nba_players
end

