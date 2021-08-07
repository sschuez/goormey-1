Rails.application.routes.draw do
  # RECIPES
  resources :recipes do
    # FORM WIZARD
    resources :steps, only: [:show, :update], controller: 'steps_controllers/recipe_steps' do
      member do 
        patch :move
      end
    end
    
  end
  
  # USERS
  devise_for :users
  resources :users, only: [:index, :show]
  
  # LAYOUTS
  root to: 'pages#home'

end
