Rails.application.routes.draw do
  # RECIPES
  resources :recipes do
    # NESTED SORTABLE INSTRUCTIONS
    resources :instructions do
      resource :instruction_position, only: :update
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
