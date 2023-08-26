class Recipes::IngredientsController < ApplicationController
  before_action :set_ingredient, except: [:new, :create]
  skip_after_action :verify_authorized
  
  def new
    @ingredient = Ingredient.new
    @ingredient.recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @ingredient.recipe = Recipe.find(params[:recipe_id])
    
    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to recipe_path(@ingredient.recipe), notice: "Ingredient created." }
        format.turbo_stream {}
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to recipe_path(@ingredient.recipe), notice: "Ingredient updated." }
        format.turbo_stream { flash.now[:notice] = "Ingredient updated." }
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @ingredient.destroy
    
    respond_to do |format|
      format.html { redirect_to recipe_path(@ingredient.recipe), notice: "Ingredient was successfully deleted." }
      format.turbo_stream {}
    end
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:description)
  end
end