class Recipes::DescriptionsController < ApplicationController
  before_action :set_recipe

  def edit
  end

  def update
    respond_to do |format|
      if recipe_params[:description].length > 0 &&
          recipe_params[:description].length < 750 &&
            recipe_params[:name].length > 0 &&
              recipe_params[:name].length < 100 &&
        @recipe.update(recipe_params)
        format.turbo_stream { flash.now[:notice] = "Recipe updated." }
        format.html { redirect_to recipe_path(@recipe), notice: "Recipe updated." }
      else
        format.turbo_stream { flash.now[:notice] = "Please make sure name and description are present." }
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
    params.require(:recipe).permit(
      :description,
      :name
    )
  end
end