class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  before_action :set_user, only: %i[ show edit update destroy ]

  def show
    likes = @user.likes
    li_recipes = [] 
    likes.each do | like |
      li_recipes << like.recipe
    end
    li_recipes
    @liked_recipes = Recipe.where(id: li_recipes.map(&:id))

    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @liked_recipes = @liked_recipes.where(sql_query, query: "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list.html', locals: { recipes: @liked_recipes } }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
    authorize @user
  end
  
  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:email)
  end
end
