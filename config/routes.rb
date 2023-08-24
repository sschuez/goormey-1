Rails.application.routes.draw do
  require "sidekiq/web"

  
  # RECIPES
  resources :recipes do
    get :edit_description, on: :member
    patch :update_description, on: :member
    
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
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
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
  resources :surveys do 
    resources :submissions do
      resources :questions, only: [ :index, :show ] do
        resources :answers, only: [ :create, :update ]
      end
    end
    resources :questions, only: [ :index, :create, :edit, :update, :destroy ] do
      resource :question_position, only: :update
    end
  end
  # end

end
