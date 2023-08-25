class Recipes::DescriptionsController < ApplicationController
  before_action :set_recipe

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      respond_to do |format|
        format.turbo_stream { flash.now[:notice] = "Recipe was successfully updated." }
        format.html { redirect_to recipe_path(@recipe), notice: "Recipe was successfully updated." }
      end
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
      :description,
      :name
    )
  end
end