class CommentsController < ApplicationController
  before_action :set_recipe, only: %i[ new create ]

  def new
    @comment = @recipe.comments.new
    authorize @comment
  end

  def create
    @comment = @recipe.comments.new(comment_params)
    @comment.recipe = @recipe
    @comment.user = current_user
    if @comment.save
      redirect_to recipe_path(@comment.recipe, anchor: "comments")
    else
      flash[:error] = "Something went wrong"
      render "recipes/show"
    end
    authorize @comment
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def comment_params
    params.require(:comment).permit(:user, :recipe_id, :content)
  end
end