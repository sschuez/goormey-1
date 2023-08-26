class Recipes::RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_recipe, only: %i[ show edit update destroy ]

  # GET /recipes or /recipes.json
  def index
    @recipes = Recipe.search(params[:query])
      .published
      .order(created_at: :desc)
      .page(params[:page])
      .without_count
      .per(14)

      skip_policy_scope
  end

  def show
    @comment = @recipe.comments.new
  end

  def new
    @recipe = Recipe.new 
    authorize @recipe
    
    @recipe.user = current_user
    @recipe.save! validate: false
    redirect_to recipe_path(@recipe)
  end

  def create
    @recipe = Recipe.new(recipe_params)
    authorize @recipe

    @recipe.user = current_user

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to recipe_path(@recipe), notice: "Recipe was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy

    redirect_to root_path, status: :see_other, notice: "Recipe was successfully deleted."
  end

  def publish
    @recipe = Recipe.find(params[:id])
    authorize @recipe, :update?

    respond_to do |format|
      if unvalidated(@recipe)
        format.turbo_stream { flash.now[:notice] = error_message(@recipe) }
      else
        @recipe.toggle!(:published)
        state = @recipe.published? ? "published" : "unpublished"
        
        format.turbo_stream { flash.now[:notice] = "Recipe was successfully #{state}." }
        format.html { redirect_to post_path(@recipe), notice: "Recipe was successfully #{state}." }
      end
    end
  end

  private
 
  def unvalidated(recipe)
    recipe.name.blank? || recipe.description.blank? || (recipe.serves.blank? || recipe.serves < 0)
  end

  def error_message(recipe)
    if recipe.name.blank? && recipe.description.blank? && (recipe.serves.blank? || recipe.serves < 0)
      "Please add title and description and make sure serves is not smaller than 0 before publishing."
    elsif recipe.name.blank? && recipe.description.blank?
      "Please add a title or description before publishing."
    elsif recipe.serves.blank? || recipe.serves < 0
      "Please make sure serves is not smaller than 0 before publishing."
    elsif recipe.name.blank?
      "Please add a title before publishing."
    elsif recipe.description.blank?
      "Please add a description before publishing."
    end
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
    authorize @recipe
  end

  def recipe_params
    params.require(:recipe).permit(
      :name, 
      :description, 
      :photo, 
      :serves, 
      ingredients_attributes: [:id, :description, :position, :_destroy], 
      instructions_attributes: [:id, :description, :position, :_destroy]
    )
  end
end
