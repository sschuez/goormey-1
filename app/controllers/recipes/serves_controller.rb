class Recipes::ServesController < ApplicationController
  before_action :set_recipe

  def edit
  end

  def update
    respond_to do |format|
      if recipe_params[:serves].to_i > 0 && recipe_params[:serves].to_i < 50
        @recipe.update(recipe_params)
        format.turbo_stream { flash.now[:notice] = "Recipe was successfully updated." }
        format.html { redirect_to recipe_path(@recipe), notice: "Recipe was successfully updated." }
      else
        format.turbo_stream { flash.now[:notice] = "Please make sure serves is neither smaller than 0, nor greater than 50" }
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end
  
  private
  
  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
    authorize @recipe, policy_class: RecipePolicy
  end
  
  def recipe_params
    params.require(:recipe).permit(:serves)
  end
end