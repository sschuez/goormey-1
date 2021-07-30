Rails.application.routes.draw do
  # RECIPES
  resources :recipes
  
  # USERS
  devise_for :users
  resources :users, only: [:index, :show]
  
  # LAYOUTS
  root to: 'pages#home'
end
