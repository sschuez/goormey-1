class Recipes::ServesController < ApplicationController
  before_action :set_recipe

  def edit
    authorize @recipe, policy_class: RecipePolicy
  end

  def update
    authorize @recipe, policy_class: RecipePolicy

    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to recipe_path(@recipe), notice: "Recipe was successfully updated." }
        format.turbo_stream { flash.now[:notice] = "Recipe was successfully updated." }
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
  
  def recipe_params
    params.require(:recipe).permit(:serves)
  end
end