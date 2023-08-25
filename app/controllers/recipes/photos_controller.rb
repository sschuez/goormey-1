class Recipes::PhotosController < ApplicationController
  before_action :set_recipe

  def edit
  end

  def update
    recipe_params_with_photo = recipe_params[:photo] == "" ? recipe_params.except(:photo) : recipe_params

    if @recipe.update(recipe_params_with_photo)
      redirect_to recipe_path(@recipe)
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  private
  
  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe, policy_class: RecipePolicy
  end
  
  def recipe_params
    params.require(:recipe).permit(
      :photo
    )
  end
end