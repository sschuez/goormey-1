Rails.application.routes.draw do
  # RECIPES
  resources :recipes do
    member do
      patch :move
    end
    # FORM WIZARD
    resources :steps, only: [:show, :update], controller: 'steps_controllers/recipe_steps'
    
  end
  

  # USERS
  devise_for :users
  resources :users, only: [:index, :show]
  
  # LAYOUTS
  root to: 'pages#home'

end
