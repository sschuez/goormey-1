# module Surveys
  class SurveyUsersController < ApplicationController
    def create
      @survey_user = SurveyUser.new(survey_user_params)
      authorize @survey_user
      if @survey_user.save
        redirect_to submissions_path
      end
    end

    private
    
    def survey_user_params
      params.require(:survey_user).permit(:email)
    end
  end
# end