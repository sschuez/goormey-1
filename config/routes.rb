Rails.application.routes.draw do
  require "sidekiq/web"
  
  # LAYOUTS
  root to: 'recipes/recipes#index'
  
  scope module: :recipes do
    # RECIPES
    resources :recipes do  
      patch :publish, on: :member
      # RECIPE ATTRIBUTES
      resource :description, only: [:edit, :update]
      resource :serve, only: [:edit, :update]
      
      # INGREDIENTS
      resources :ingredients, only: [:new, :create, :edit, :update, :destroy]
      # INSTRUCTIONS
      resources :instructions, only: [:new, :create, :edit, :update, :destroy]
      
      # COMMENTS
      resources :comments do
        post :edit, on: :member
      end
    end
  end

  # POSITION
  resource :position, only: [:update]
  
  # LIKEABLE
  post 'likes', to: "likes#create"
  delete 'likes', to: "likes#destroy"
  
  # resources :recipes do
    # get :edit_description, on: :member
    # patch :update_description, on: :member
    # get :edit_serves, on: :member
    # patch :update_serves, on: :member
    
    # NESTED SORTABLE INGREDIENTS
    # resources :ingredients, only: [:new, :create, :edit, :update] do  
      # resource :ingredient_position, only: :update
    # end

    # NESTED SORTABLE INSTRUCTIONS
    # resources :instructions do
      # resource :instruction_position, only: :update
    # end
    
    # FORM WIZARD
    # resources :steps, only: [:show, :update], controller: 'steps_controllers/recipe_steps'
    
  # end
  
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
