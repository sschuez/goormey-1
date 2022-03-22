Rails.application.routes.draw do
  # RECIPES
  resources :recipes do
    # NESTED SORTABLE INSTRUCTIONS
    resources :instructions do
      resource :instruction_position, only: :update
    end
    
    # NESTED SORTABLE INGREDIENTS
    resources :ingredients do  
      resource :ingredient_position, only: :update
    end

    # FORM WIZARD
    resources :steps, only: [:show, :update], controller: 'steps_controllers/recipe_steps'

    # LIKEABLE
    post 'likes', to: "likes#create"
    delete 'likes', to: "likes#destroy"

    # COMMENTS
    resources :comments do
      member do
        post :edit
      end
    end
  end

  # USERS
  devise_for :users
  resources :users, only: [:index, :show] do
    member do
      get 'user_recipes'
    end
  end
  
  # CONTACTS
  resources :contacts, only: [:new, :create]

  # LAYOUTS
  root to: 'recipes#index'

  # SURVEYS
  # namespace :surveys do
  resources :surveys, only: [:index, :create, :show, :destroy] do  
    resources :submissions, only: [ :index, :create, :show, :destroy ] do
      resources :questions, only: [ :index, :show ] do
        resources :answers, only: [ :create, :update ]
      end
    end
    resources :questions, only: [ :index, :create, :edit, :update, :destroy ]
    resources :survey_users
  end
  
  resources :survey_users
  resources :questions, only: [ :index, :create, :edit, :update, :destroy ]
  # end

end
