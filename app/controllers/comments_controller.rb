class CommentsController < ApplicationController
  before_action :set_recipe, only: %i[ new create edit update destroy ]
  before_action :set_comment, only: %i[ edit update destroy ]

  def new
    @comment = @recipe.comments.new
    authorize @comment
  end

  def create
    @comment = @recipe.comments.new(comment_params)
    authorize @comment
    @comment.recipe = @recipe
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        # @comment.broadcast_prepend_later_to @comment.recipe
        format.turbo_stream do
          render turbo_stream: turbo_stream.prepend(
            "comments",
            partial: "comments/comment",
            locals: { comment: @comment })
        end
        format.html { redirect_to @comment, notice: "comment was successfully created." }
        format.json { render :show, status: :created, location: @comment }
      else
        format.turbo_stream do
          render turbo_stream: turbo_stream.update(
            'new_comment',
            partial: "comments/form",
            locals: {comment: @comment})
        end
      end
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @comment.errors, status: :unprocessable_entity }
    end
  end

  def edit
    authorize @comment
    respond_to do |format|
      format.turbo_stream do 
        render turbo_stream: turbo_stream.update(
          @comment,
          partial: "comments/form",
          locals: {comment: @comment}) 
      end
    end
  end

  def update
    authorize @comment
    @comment.recipe = @comment.recipe
    respond_to do |format|
      if @comment.update(comment_params)
        format.turbo_stream do 
          render turbo_stream: [
            turbo_stream.update(
              @comment,
              partial: "comments/comment",
              locals: {comment: @comment}),
            turbo_stream.update('notice', "Comment #{@comment.id} updated")
          ]
        end
      else
        format.turbo_stream do 
          render turbo_stream: turbo_stream.update(
            @comment,
            partial: "comments/form",
            locals: {comment: @comment}) 
        end   
      end
    end
  end

  def destroy
    authorize @comment
    @comment.destroy
    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove(@comment) }
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end