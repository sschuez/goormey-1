module Surveys
  class SurveyUsersController < ApplicationController
    def create
      @survey_user = SurveyUser.new(survey_user_params)
      authorize @survey_user
      if @survey_user.save
        redirect_to surveys_submissions_path
      end
    end

    private
    
    def survey_user_params
      params.require(:surveys_survey_user).permit(:email)
    end
  end
end