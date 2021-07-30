class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def show
    
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
