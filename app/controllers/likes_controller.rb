class LikesController < ApplicationController
  
  def create
    like = Like.new
    recipe = Recipe.find(params[:recipe_id])
    user = current_user
    like.recipe = recipe
    like.user = user
    authorize like
    like.save!
    head :ok
  end

  def destroy
    recipe = Recipe.find(params[:recipe_id])
    user = current_user
    like = recipe.likes.where(:user => user)
    like.destroy
  end
end