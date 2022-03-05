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
    # if @comment.save
    #   redirect_to recipe_path(@comment.recipe, anchor: "comments")
    # else
    #   flash[:error] = "Something went wrong"
    #   render "recipes/show"
    # end
    respond_to do |format|
      if @comment.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.prepend(
            "comments",
            partial: "comments/comment",
            locals: { comment: @comment })
        end
        format.html { redirect_to @recipe }
      end
    end
    authorize @comment
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end